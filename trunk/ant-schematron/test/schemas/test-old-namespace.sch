<!--
  This schema file is used for testing the Schematron Ant task
  
  @author Christophe Lauret
  @version 4 January 2007
-->
<schema xmlns="http://www.ascc.net/xml/schematron" >

  <title>Dog Stuff</title>
  <p> hi </p>
  <pattern> 
     <rule context="Dog">
     	<assert test="count(leg) = 4">A dog should have four legs, because then they can have four paws.</assert>
     	<report test="count(leg) &lt; 3">A dog with less than three legs is unstable</report>
     </rule>
     <rule context="Dog/leg">
     	<assert test="count(paw) = 1">Each dog's leg should have a single paw, as an element or attribute, because this meets the business requirement "Dog must be walkable".</assert>
     </rule>
  </pattern>
</schema>