--  Ejemplo de Swagger UI
--  No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
--
--  
--  
--
--  NOTE: This package is auto generated by the swagger code generator 2.4.32.
--  https://github.com/swagger-api/swagger-codegen.git
--  Do not edit the class manually.

package body .Models is

   use Swagger.Streams;



   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MVCErrorResponse_items_Type) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("message", Value.Message);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MVCErrorResponse_items_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MVCErrorResponse_items_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "message", Value.Message);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MVCErrorResponse_items_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : MVCErrorResponse_items_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MVCErrorResponse_Type) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("classname", Value.Classname);
      Into.Write_Entity ("detailedmessage", Value.Detailedmessage);
      Into.Write_Entity ("apperrorcode", Value.Apperrorcode);
      Serialize (Into, "items", Value.Items);
      Into.Write_Entity ("statuscode", Value.Statuscode);
      Into.Write_Entity ("reasonstring", Value.Reasonstring);
      Into.Write_Entity ("message", Value.Message);
      Serialize (Into, "data", Value.Data);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MVCErrorResponse_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MVCErrorResponse_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "classname", Value.Classname);
      Swagger.Streams.Deserialize (Object, "detailedmessage", Value.Detailedmessage);
      Swagger.Streams.Deserialize (Object, "apperrorcode", Value.Apperrorcode);
      Deserialize (Object, "items", Value.Items);
      Swagger.Streams.Deserialize (Object, "statuscode", Value.Statuscode);
      Swagger.Streams.Deserialize (Object, "reasonstring", Value.Reasonstring);
      Swagger.Streams.Deserialize (Object, "message", Value.Message);
      Deserialize (Object, "data", Value.Data);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MVCErrorResponse_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : MVCErrorResponse_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;



end .Models;
