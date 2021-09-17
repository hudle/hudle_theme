# Hudle Theme

Hudle Theme For Hudle Apps.

## Add Dependency
   
     dependencies:
        hudle_theme:
        git:
          url: git://github.com/hudle/hudle_theme



### To Register a font

    void main() {
        fontRegistry();   <---- use this fontRegsitery
        runApp(MyApp());
    }

### To use theme in app

    class MyApp extends StatelessWidget {
    // This widget is the root of your application.

        @override
        Widget build(BuildContext context) {
            return MaterialApp(
                title: 'Flutter App',
                theme: hudleTheme(),  <--- Providing Hudle theme
                home: HomePage(),
            );
    }


### Lots of Colors added for Hudle
    
* [Click here](https://github.com/hudle/hudle_theme/blob/master/lib/src/hudle_colors.dart) to see all available colors.

### Text Style
* normalStyle() 
  - Normal Text with default roboto fonts can change font size, color, weight etc. 
  - Default fontSize is  <b> 14 </b>
* primaryStyle() 
  - Primary Text style with <b>kPrimaryText</b> color and fontSize is <b>16</b>.
* secondaryStyle()
  - Secondary Text style with  <b>kSecondaryText </b> color and fontSize is  <b>14 </b>.
* tertiaryStyle()
  - Secondary Text style with  <b>kTertiaryText</b> color and fontSize is  <b>12 </b>.

e.g

    Text("This is a simple text", style: normalStyle())


### See [Hudle Core](https://github.com/hudle/hudle_core) Library 