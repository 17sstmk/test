package com.alibaba;

/**
 * Created by TK on 2020/4/13.
 */
import java.io.File;
import java.io.IOException;

import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;

import org.xml.sax.SAXException;

/**
 * 校验xml工具类
 */
public class test {

    public static void main(String[] args) {
        try {
         System.out.println(validateXml("student.xsd", "student.xml"));
            System.out.println(validateXml("teacher.xsd", "teacher.xml"));
     //       System.out.println(validateXml("D:\\softwareq\\xml\\src\\main\\resources\\templates\\student.xsd", "D:\\softwareq\\xml\\src\\main\\resources\\templates\\student.xml"));
    //      System.out.println(validateXml("src\\main\\resources\\templates\\student.xsd", "src\\main\\resources\\templates\\student.xml"));
         //   System.out.println(validateXml("D:\\xml\\b.xsd", "D:\\xml\\teacher.xml"));
     //       System.out.println(validateXml("D:\\xml\\person.xsd", "D:\\xml\\person.xml"));
      //    System.out.println(validateXml("D:\\xml\\teacher.xsd", "D:\\xml\\teacher.xml"));

        }
        catch(Exception ex){
               ex.printStackTrace();
        }
    }

    public static boolean validateXml(String xsdPath, String xmlPath)
            throws SAXException, IOException {
        String root="src\\main\\resources\\templates\\";
        xsdPath=root+ xsdPath;
        xmlPath=root+xmlPath;
        // 建立schema工厂
        SchemaFactory schemaFactory = SchemaFactory
                .newInstance("http://www.w3.org/2001/XMLSchema");
        // 建立验证文档文件对象，利用此文件对象所封装的文件进行schema验证
        File schemaFile = new File(xsdPath);
        // 利用schema工厂，接收验证文档文件对象生成Schema对象
        Schema schema = schemaFactory.newSchema(schemaFile);
        // 通过Schema产生针对于此Schema的验证器，利用schenaFile进行验证
        Validator validator = schema.newValidator();
        // 得到验证的数据源
        Source source = new StreamSource(xmlPath);
        // 开始验证，成功输出success!!!，失败输出fail
        validator.validate(source);

        return true;
    }
}