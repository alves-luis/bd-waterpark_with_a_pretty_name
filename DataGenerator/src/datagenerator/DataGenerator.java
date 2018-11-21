/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datagenerator;

import java.awt.Event;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.concurrent.ThreadLocalRandom;

/**
 *
 * @author Luís Alves
 */
public class DataGenerator {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
      try {
          FileReader input = new FileReader("data.txt");
          BufferedReader bufRead = new BufferedReader(input);
          File parsed = new File("parsedData.txt");
          parsed.delete();
          
          String line = bufRead.readLine();
          while(line != null) {
              String parsedLine = parseLine(line);
              writeLine(parsedLine);
              line = bufRead.readLine();
              
          }
      } 
      catch (Exception e) {System.out.println("Oops!" + e.getMessage());}
    }
    
    private static String parseLine(String l) {
        char[] ar = l.toCharArray();
        int p = 0;
        int aspas = 0;
        while(aspas != 5) {
            if (ar[p] == '"') aspas++;
            p++;
        }
        char[] start = new char[19];
        for(int i = 0; i < 19; i++, p++) {
            start[i] = ar[p];
        }
        p += 3;
        char[] end = new char[19];
        for(int i = 0; i < 19; i++, p++) {
            end[i] = ar[p];
        }
        String startString = new String(start);
        String endString = new String(end);
        DateTimeFormatter form = DateTimeFormatter.ofPattern(("yyyy-MM-dd HH:mm:ss"));
        LocalDateTime startTime = LocalDateTime.parse(startString,form);
        LocalDateTime endTime = LocalDateTime.parse(endString,form);
        LocalDateTime[] parsedTimes = adaptDates(startTime,endTime);
        String finalStart = (Timestamp.valueOf(parsedTimes[0])).toString();
        String finalEnd = (Timestamp.valueOf(parsedTimes[1])).toString();
        l = l.replace(startString,finalStart);
        l = l.replace(endString,finalEnd);
        return l;
        
    }
    
    private static void writeLine(String l) {
        try {
            FileWriter fw = new FileWriter("parsedData.txt",true);
            BufferedWriter bw = new BufferedWriter(fw);
            PrintWriter out = new PrintWriter(bw,true);
            out.println(l);
        }
        catch (IOException e) {
            System.out.println("Oops!");
        }
    }
    
    private static LocalDateTime[] adaptDates(LocalDateTime start, LocalDateTime end) {
        LocalDateTime[] result = new LocalDateTime[2];
        int year = start.getYear();
        int month = start.getMonthValue();
        int dayOfMonth = start.getDayOfMonth();
        int hour = start.getHour();
        
        if (hour > 14 || hour < 9) hour = ThreadLocalRandom.current().nextInt(9,15);
        start = LocalDateTime.of(year,month,dayOfMonth,hour,start.getMinute() % 50,start.getSecond());
        result[0] = start;
        
        int hourEnd = end.getHour();
        if (hourEnd <= hour || hourEnd < 9 || hourEnd > 17) {
            if (hour < 15) hour = 15;
            hourEnd = ThreadLocalRandom.current().nextInt(hour,17);
        }
        end = LocalDateTime.of(year,month,dayOfMonth,hourEnd,start.getMinute() + 10,end.getSecond());
        result[1] = end;
        
        return result;
    }
    
}
