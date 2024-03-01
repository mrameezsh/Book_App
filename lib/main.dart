import 'package:flutter/material.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Book App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) =>const SecondScreen(),
        '/third': (context) =>const ThirdScreen(),
        '/fourth': (context) =>const FourthScreen(),
        '/fifth': (context) =>const FifthScreen(),
        '/search': (context) =>const SearchScreen(),
        '/Read': (context) => const ReadScreen(), 
        
      },
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('App Book'),
        leading: IconButton(
          icon: const Icon(Icons.help_outline),
              onPressed: () {
       _showHelpSheet(context); // Show the help bottom sheet
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
       const  Padding(
            padding:  EdgeInsets.all(8.0),
            child: Text(
              'Discover Books',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
         const SizedBox(height: 8),
        const  Padding(
                  padding:  EdgeInsets.only(left: 9,bottom:10,),
                  
              child:Text(
                  'Explore new titles and authors',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    
                    color:  Color.fromARGB(255, 0, 0, 0),

                  ),
                ),
          ),
          
             SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                SizedBox(width: 2,), 
                ImageWithPadding('assets/image.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('assets/image2.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('/image3.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('/image4.jpg'),
                SizedBox(width: 2),
                ImageWithPadding('/image5.jpg'),
                SizedBox(width: 2),
              ],
            ),
          ),
          
        
         
          
            // Add more widgets as needed
            const SizedBox(height: 18), 
          Stack(
  children: [
    
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        
        decoration: BoxDecoration(
          color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        height: 150,
        padding:const EdgeInsets.all( 7,), 
        
        
        child: Center(
          
          child: Align(
            
            alignment: Alignment.bottomLeft,
            
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              '/banner.png',
              width: 300,
              height:300,
                     
            ),
          ),
          ),

        ),
        
      ),
    ),
   
 const   SizedBox(height: 16), // Adjust the height of the spacing
   const Padding(
     padding:  EdgeInsets.symmetric(horizontal:15,),
     child:  Text(
        'Discover Legends & \nlegacies', // Your new heading text
     
        style: TextStyle(
          fontSize: 16, // Adjust the font size as needed
         fontWeight: FontWeight.w600,
        ),
      ),
   ),
 const Padding(
    padding:  EdgeInsets.only(left: 16, top: 40, right: 40, bottom: 40),
    child:  Text(
    'Imagine Black futures'
    ),
  ),
  ],
),
   const Padding(
     padding:  EdgeInsets.only(left: 9,bottom:10,top:10,),
     child:  Text(
        'Read the next big thing', // Your new heading text
        style: TextStyle(
          fontSize: 16, // Adjust the font size as needed
         fontWeight: FontWeight.w600,
        ),
      ),
   ),
       SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                SizedBox(width: 2,), 
                ImageWithPadding('/ellyconway.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('/Stephenking1.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('/itendswithus.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('/Stephenking.jpg'),
                SizedBox(width: 2),
                ImageWithPadding('/laterstephenking.jpg'),
                SizedBox(width: 2),
              ],
            ),
          ),
          Divider(
  height: 20,
  thickness: 2,
  color: Colors.grey[400],
  indent: 20,
  endIndent: 20,
),

  const    Padding(
        padding:  EdgeInsets.only(top:10,left:10,),
        child:   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
         Text(
        'App Book',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
           ), 
             SizedBox(height: 10), // Add spacing between the text and the divider
    Text(
      'Play Pass',
      style: TextStyle(
        fontSize: 16,
        color: Color.fromARGB(255, 51, 51, 51),
      ),
    ),
    Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Gift Cards',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Play points',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Redeem',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Refund Policy',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:9,),
      child: Text(
        'Kind & Family',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:9,),
      child: Text(
        'Parent Guide',
        style: TextStyle(
          fontSize: 16,
         
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:9,),
      child: Text(
        'Family sharing',
        style: TextStyle(
          fontSize: 16,
       
        ),
      ),
    ),
    Row(
  children: [
    Padding(
      padding: EdgeInsets.only(top: 15,),
      child: Text(
        'Terms of service',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
    SizedBox(width: 10), // Add spacing between the two texts
    Padding(
      padding: EdgeInsets.only(top:15,left: 10,),
      child: Text(
        'Privacy',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
  ],
),
 Row(
  children: [
    Padding(
      padding: EdgeInsets.only(top: 15,),
      child: Text(
        'About App Book',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
    SizedBox(width: 10), // Add spacing between the two texts
    Padding(
      padding: EdgeInsets.only(top:15,left: 18,),
      child: Text(
        'Developers',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
    
  ],
),
 SizedBox(width: 10), // Add spacing between the two texts
    Padding(
      padding: EdgeInsets.only(top:15,),
      child: Text(
        'App Book',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
           ]
           ,
          
        
        ),
      ),
 Padding(
   padding: const EdgeInsets.only(left:7,),
   child: Row(
     children: [
    const  Text(
        'Pakistan (English)',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top:17,left:6,bottom: 10,),
        child: Row(
          children: [
            Image.asset(
              '/pakistaniflag.png', 
              width: 29, // Adjust the width of the flag image as needed
              height: 29, // Adjust the height of the flag image as needed
            ),
          ],
          
        ),
      ),
   
       ],
         ),
       ) 
     ] 
      ),
      ),
      bottomNavigationBar: Container(
       color: Colors.amber,
       
        height: 49,
       
        child: ListView(
          scrollDirection: Axis.horizontal,
           children: <Widget>[
        Expanded(
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children:  <Widget>[
            IconButton(
        icon:const Icon(Icons.home),
        
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
      ),
          IconButton(
        icon:const Icon(Icons.book),
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
      ),
      IconButton(
        icon:const Icon(Icons.attach_money),
         
        onPressed: () {
           Navigator.pushNamed(context, '/third');
        },
      ),
      
        IconButton(
            icon:const Icon(Icons.star_border),
         
          onPressed: (){
           Navigator.pushNamed(context, '/fourth');
          },
        ),
          IconButton(
            icon:const Icon(Icons.person),
         
          onPressed: (){
           Navigator.pushNamed(context, '/fifth');
          },
        ),
          ],
        ),
      ),
      
      
    ],
      ),
      ),
      );
  }
}


 void _showHelpSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding:const EdgeInsets.all(20),
          decoration:const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
          const    Text(
                'Help', // Add your help dialog content here
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
         const     SizedBox(height: 10),
          const    Text('Popular help resources'), 
          // Example content

           const   SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Close the sheet
                },
                child: const Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }



class ImageWithPadding extends StatelessWidget {
  
  final String imagePath;

  const ImageWithPadding(this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0), 
         child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0), // Same radius as the container
          child: Image(
            image: AssetImage(imagePath),
          ),
        ),
      ),
         
    );
    
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search Books',
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon:const Icon(Icons.clear),
              onPressed: () {
                // Navigate back to the previous screen
                Navigator.pop(context);
              },
            ),
          ),
          textInputAction: TextInputAction.search,
          onSubmitted: (value) {
            // Implement your search functionality here
          },
        ),
      ),
      body:const Center(
        child: Text('Search Results'),
      ),
    );
  }
}




class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('App Book'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 20), 
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                    child: Image.asset(
                      '/banner2.jpg', // Replace 'assets/banner_image.jpg' with your image path
                      fit: BoxFit.cover,
                    ),
                  ), // Adjust horizontal padding as needed
                ),
                const Positioned(
                  top: 20, // Adjust position as needed
                  left: 20, // Adjust position as needed
                  child: Text(
                    'Free audio book',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Text color
                    ),
                  ),
                ),
                const Positioned(
                  top: 50, // Adjust position as needed
                  left: 20, // Adjust position as needed
                  child: Text(
                    'Dracula,Walden & more', // Your subheading text
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black, // Text color
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // Adding a gap between AppBar and banner
            const Padding(
              padding: EdgeInsets.only(left: 16), // Adjust the left padding as needed
              child: Text(
                'Top-Free book Read it and enjoy',
                style: TextStyle(
                  fontSize: 24,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                SizedBox(width: 2,), 
                ImageWithPadding('assets/Fantasticbeastsandwheretofindthem.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('assets/Harrypotterandthedeathlyhallows.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('assets/HarrypotterandthePrisnorsOfAzkaban.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('assets/jackcarronlythedead.jpg'),
                SizedBox(width: 2),
                ImageWithPadding('assets/thefury.jpg'),
                SizedBox(width: 2),
              ],
            ),
          ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 16), // Adjust the left padding as needed
              child: Text(
                'Read it before you watch it',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
             SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                SizedBox(width: 2,), 
                ImageWithPadding('assets/themaidens.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('assets/TheFallOfTheHouseOfUsherShortStory.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('assets/Persyjackson.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('assets/onedarkwindow.jpg'),
                SizedBox(width: 2),
                ImageWithPadding('/thebloodtrials.jpg'),
                SizedBox(width: 2),
              ],
            ),
          ),
            const SizedBox(height: 20),
    const Padding(
              padding: EdgeInsets.only(left: 16), // Adjust the left padding as needed
              child: Text(
                'Read it before you watch it',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
              SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                SizedBox(width: 2,), 
                ImageWithPadding('/redwoodcourt.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('/howgodendus.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('/exordia.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('/themonsterbaru.jpg'),
                SizedBox(width: 2),
                ImageWithPadding('/thecompletepoetry.jpg'),
                SizedBox(width: 2),
              ],
            ),
          ),
           Divider(
  height: 20,
  thickness: 2,
  color: Colors.grey[400],
  indent: 20,
  endIndent: 20,
),

  const    Padding(
        padding:  EdgeInsets.only(top:10,left:10,),
        child:   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
         Text(
        'App Book',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
           ), 
             SizedBox(height: 10), // Add spacing between the text and the divider
    Text(
      'Play Pass',
      style: TextStyle(
        fontSize: 16,
        color: Color.fromARGB(255, 51, 51, 51),
      ),
    ),
    Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Gift Cards',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Play points',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Redeem',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Refund Policy',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:9,),
      child: Text(
        'Kind & Family',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:9,),
      child: Text(
        'Parent Guide',
        style: TextStyle(
          fontSize: 16,
         
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:9,),
      child: Text(
        'Family sharing',
        style: TextStyle(
          fontSize: 16,
       
        ),
      ),
    ),
    Row(
  children: [
    Padding(
      padding: EdgeInsets.only(top: 15,),
      child: Text(
        'Terms of service',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
    SizedBox(width: 10), // Add spacing between the two texts
    Padding(
      padding: EdgeInsets.only(top:15,left: 10,),
      child: Text(
        'Privacy',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
  ],
),
 Row(
  children: [
    Padding(
      padding: EdgeInsets.only(top: 15,),
      child: Text(
        'About App Book',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
    SizedBox(width: 10), // Add spacing between the two texts
    Padding(
      padding: EdgeInsets.only(top:15,left: 18,),
      child: Text(
        'Developers',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
    
  ],
),
 SizedBox(width: 10), // Add spacing between the two texts
    Padding(
      padding: EdgeInsets.only(top:15,),
      child: Text(
        'App Book',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
          
          
        ],
          
        
        ),
      ),
          
         Padding(
   padding: const EdgeInsets.only(left:7,),
   child: Row(
     children: [
    const  Text(
        'Pakistan (English)',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top:17,left:6,bottom: 10,),
        child: Row(
          children: [
            Image.asset(
              '/pakistaniflag.png', 
              width: 29, // Adjust the width of the flag image as needed
              height: 29, // Adjust the height of the flag image as needed
            ),
          ],
          
        ),
      ),
   
       ],
         ),
       )  
          ],
        
        ),
        
      ),
      bottomNavigationBar: Container(
        
          color: Colors.amber,
         height:49, 
        child: ListView(
          scrollDirection: Axis.horizontal,
           children: <Widget>[
        Expanded(
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children:  <Widget>[
            IconButton(
        icon:const Icon(Icons.home),
        
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
      ),
          IconButton(
        icon:const Icon(Icons.book),
        
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
      ),
      IconButton(
        icon:const Icon(Icons.attach_money),
         
        onPressed: () {
           Navigator.pushNamed(context, '/third');
        },
      ),
      
        IconButton(
            icon:const Icon(Icons.star_border),
         
          onPressed: (){
           Navigator.pushNamed(context, '/fourth');
          },
        ),
          IconButton(
            icon:const Icon(Icons.person),
         
          onPressed: (){
           Navigator.pushNamed(context, '/fifth');
          },
        ),
          ],
      ),
      
        ),
           ],
      ),
      ),
    );
  }
}
  
  Widget _buildBookListItem(String imagePath,  ) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
           
            ),
          ),
        ),
        
      ],
    );
  }





class  ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.amber,
        title: const Text('App Book'),
        
      ),
      body: SingleChildScrollView(
        
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        const        SizedBox(height: 20),
        const    Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Manga & Comics under \$5',
                style: TextStyle(
                  fontSize: 18,
                 fontWeight: FontWeight.w600,
                ),
              ),
            ),
            // Add more widgets as needed
              SizedBox(
              height: 200, // Adjust the height of the book images container
              child: ListView(
              scrollDirection: Axis.horizontal,
             children: const <Widget>[
                SizedBox(width: 2,), 
                ImageWithPadding('assets/spiderman.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('assets/spidermanmilesmorales.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('assets/Persyjackson.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('assets/onedarkwindow.jpg'),
                SizedBox(width: 2),
                ImageWithPadding('assets/avatar.jpg'),
                SizedBox(width: 2),
              ],
              ),
            ),
          const SizedBox(height: 20),
         const   Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Start a new series',
                style: TextStyle(
                  fontSize: 18,
                 fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 200, // Adjust the height of the other images container
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                _buildBookImage('/heroismhardship.jpg','5.88'),
                _buildBookImage('/Abookshoptodiefor.jpg','6.77'),
                _buildBookImage('/CloakofWolves.jpg','8.99'),
                  // Add more images here
                ],
              ),
            ),

            // Add more widgets as needed
                SizedBox(
              height: 200, // Adjust the height of the book images container
             child: ListView(
              scrollDirection: Axis.horizontal,
             children: const <Widget>[
                SizedBox(width: 2,), 
                ImageWithPadding('/octavia.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('assets/TheFallOfTheHouseOfUsherShortStory.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('assets/Persyjackson.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('assets/onedarkwindow.jpg'),
                SizedBox(width: 2),
                ImageWithPadding('/thebloodtrials.jpg'),
                SizedBox(width: 2),
              ],
              ),
            ),
             Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:10,right: 10,bottom: 10,top:10,),
                  child: Container(
                    padding: const EdgeInsets.only(top: 6,left:3 ,),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Rounded corners
                      child: Image.asset(
                        '/paid.jpg', // Replace 'assets/banner_image.jpg' with your image path
                        fit: BoxFit.cover,
                      ),
                    ), // Adjust horizontal padding as needed
                  ),
                ),
                const Positioned(
                  top: 20, // Adjust position as needed
                  left: 20, // Adjust position as needed
                  child: Text(
                    'Paid book',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Text color
                    ),
                  ),
                ),
                const Positioned(
                  top: 50, // Adjust position as needed
                  left: 20, // Adjust position as needed
                  child: Text(
                    'Buy Our Premium Book \nGet 65% Off', // Your subheading text
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black, // Text color
                    ),
                  ),
                ),
              ],
            ),
     const   Divider(
  height: 20,
  thickness: 2,
  color: Colors.grey,
  indent: 20,
  endIndent: 20,
),

  const    Padding(
        padding:  EdgeInsets.only(top:10,left:10,),
        child:   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
         Text(
        'App Book',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
           ), 
             SizedBox(height: 10), // Add spacing between the text and the divider
    Text(
      'Play Pass',
      style: TextStyle(
        fontSize: 16,
        color: Color.fromARGB(255, 51, 51, 51),
      ),
    ),
    Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Gift Cards',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Play points',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Redeem',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Refund Policy',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:9,),
      child: Text(
        'Kind & Family',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:9,),
      child: Text(
        'Parent Guide',
        style: TextStyle(
          fontSize: 16,
         
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:9,),
      child: Text(
        'Family sharing',
        style: TextStyle(
          fontSize: 16,
       
        ),
      ),
    ),
    Row(
  children: [
    Padding(
      padding: EdgeInsets.only(top: 15,),
      child: Text(
        'Terms of service',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
    SizedBox(width: 10), // Add spacing between the two texts
    Padding(
      padding: EdgeInsets.only(top:15,left: 10,),
      child: Text(
        'Privacy',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
  ],
),
 Row(
  children: [
    Padding(
      padding: EdgeInsets.only(top: 15,),
      child: Text(
        'About App Book',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
    SizedBox(width: 10), // Add spacing between the two texts
    Padding(
      padding: EdgeInsets.only(top:15,left: 18,),
      child: Text(
        'Developers',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
    
  ],
),
 SizedBox(width: 10), // Add spacing between the two texts
    Padding(
      padding: EdgeInsets.only(top:15,),
      child: Text(
        'App Book',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
           ]
           ,
          
        
        ),
      ),
 Padding(
   padding: const EdgeInsets.only(left:7,),
   child: Row(
     children: [
    const  Text(
        'Pakistan (English)',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top:17,left:6,bottom: 10,),
        child: Row(
          children: [
            Image.asset(
              '/pakistaniflag.png', 
              width: 29, // Adjust the width of the flag image as needed
              height: 29, // Adjust the height of the flag image as needed
            ),
          ],
          
        ),
      ),
   
       ],
         ),
       ) 
          ],
          
        ),
     
     
      ),
       bottomNavigationBar: Container(
          color: Colors.amber,
         height:49, 
        
        child: ListView(
          scrollDirection: Axis.horizontal,
           children: <Widget>[
        Expanded(
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children:  <Widget>[
            IconButton(
        icon:const Icon(Icons.home),
        
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
      ),
          IconButton(
        icon:const Icon(Icons.book),
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
      ),
      IconButton(
        icon:const Icon(Icons.attach_money),
         
        onPressed: () {
           Navigator.pushNamed(context, '/third');
        },
      ),
      
        IconButton(
            icon:const Icon(Icons.star_border),
         
          onPressed: (){
           Navigator.pushNamed(context, '/fourth');
          },
        ),
          IconButton(
            icon:const Icon(Icons.person),
         
          onPressed: (){
           Navigator.pushNamed(context, '/fifth');
          },
        ),
          ],
      ),
      
        ),

           ],
      ),
   
   
      ),
 
 
 
    
   
    );
  }



Widget _buildBookImage(String imagePath, String price,) {
  return Container(
    margin:const EdgeInsets.symmetric(horizontal: 8),
    child: Column(
      children: [
        
        Image.asset(
          imagePath,
          width: 100, // Adjust the width of the book image as needed
          height: 150, // Adjust the height of the book image as needed
        ),
        const SizedBox(height: 5), // Add spacing between the image and the price
      
        Text(
          'Price: \$${price}',
          style:const  TextStyle(
            fontSize: 14,
            color: Color.fromARGB(255, 34, 34, 33),
          ),
        ),
         const  SizedBox(height: 5), // Add spacing between the price and the rating
      const    Row(
            mainAxisAlignment: MainAxisAlignment.center,
     
          ),
      ],
    ),
  );
}
}





class  FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title:const Text('App Book'),
      ),
      body: SingleChildScrollView(
     child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        const    Padding(
              padding:  EdgeInsets.all(8.0),
              child: Text(
                'All Books',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 200.0, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6, // Assuming you have 6 book images
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/Read');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 150.0, // Adjust width as needed
                      
                        child: Center(
                          child: Image.asset(
                            '/content.jpg', // Replace 'assets/book_$index.jpg' with your image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
        const    SizedBox(height: 20.0), // Spacer between sections
           const Padding(
              padding:  EdgeInsets.all(8.0),
              child: Text(
                'Favorite Books',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 200.0, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3, // Assuming you have 3 favorite book images
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/Read');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150.0, // Adjust width as needed
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0), // Rounded corners
                          color: Colors.grey[300], // Placeholder color
                        ),
                        child: Center(
                          child: Image.asset(
                            '/Stephenking.jpg', // Replace 'assets/favorite_book_$index.jpg' with your favorite book image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                  
                },
              ),
            ),
                Divider(
  height: 20,
  thickness: 2,
  color: Colors.grey[400],
  indent: 20,
  endIndent: 20,
),

  const    Padding(
        padding:  EdgeInsets.only(top:10,left:10,),
        child:   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
         Text(
        'App Book',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
           ), 
             SizedBox(height: 10), // Add spacing between the text and the divider
    Text(
      'Play Pass',
      style: TextStyle(
        fontSize: 16,
        color: Color.fromARGB(255, 51, 51, 51),
      ),
    ),
    Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Gift Cards',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Play points',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Redeem',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Refund Policy',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:9,),
      child: Text(
        'Kind & Family',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:9,),
      child: Text(
        'Parent Guide',
        style: TextStyle(
          fontSize: 16,
         
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:9,),
      child: Text(
        'Family sharing',
        style: TextStyle(
          fontSize: 16,
       
        ),
      ),
    ),
    Row(
  children: [
    Padding(
      padding: EdgeInsets.only(top: 15,),
      child: Text(
        'Terms of service',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
    SizedBox(width: 10), // Add spacing between the two texts
    Padding(
      padding: EdgeInsets.only(top:15,left: 10,),
      child: Text(
        'Privacy',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
  ],
),
 Row(
  children: [
    Padding(
      padding: EdgeInsets.only(top: 15,),
      child: Text(
        'About App Book',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
    SizedBox(width: 10), // Add spacing between the two texts
    Padding(
      padding: EdgeInsets.only(top:15,left: 18,),
      child: Text(
        'Developers',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
    
  ],
),
 SizedBox(width: 10), // Add spacing between the two texts
    Padding(
      padding: EdgeInsets.only(top:15,),
      child: Text(
        'App Book',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
          
          
        ],
          
        
        ),
      ),
          
         Padding(
   padding: const EdgeInsets.only(left:7,),
   child: Row(
     children: [
    const  Text(
        'Pakistan (English)',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top:17,left:6,bottom: 10,),
        child: Row(
          children: [
            Image.asset(
              '/pakistaniflag.png', 
              width: 29, // Adjust the width of the flag image as needed
              height: 29, // Adjust the height of the flag image as needed
            ),
          ],
          
        ),
      ),
   
       ],
         ),
       )  
          ],
       
        ),
     
      ),
        bottomNavigationBar: Container(
          color: Colors.amber,
         height:49, // Change the color here
        
        child: ListView(
          scrollDirection: Axis.horizontal,
           children: <Widget>[
        Expanded(
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children:  <Widget>[
            IconButton(
        icon:const Icon(Icons.home),
        
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
      ),
          IconButton(
        icon:const Icon(Icons.book),
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
      ),
      IconButton(
        icon:const Icon(Icons.attach_money),
         
        onPressed: () {
           Navigator.pushNamed(context, '/third');
        },
      ),
      
        IconButton(
            icon:const Icon(Icons.star_border),
         
          onPressed: (){
           Navigator.pushNamed(context, '/fourth');
          },
        ),

          IconButton(
            icon:const Icon(Icons.person),
         
          onPressed: (){
           Navigator.pushNamed(context, '/fifth');
          },
        ),
          ],
      ),
      
        ),
           ],
      ),
   
   
      ),

    );
  }
}

class ReadScreen extends StatelessWidget {
  const ReadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Read Book'),
         
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200.0, // Adjust the height of the image as needed
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('/content.jpg'), // Replace '/content.jpg' with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
       const     Padding(
              padding:  EdgeInsets.all(16.0),
              child: Text(
                '"The Overlook was a construct, as much so as the sets in Hollywood. It had been built as a playground for Chicago’s rich in 1907, part of a chain of luxury hotels stretching from coast to coast. But prosperity had bypassed the Overlook. The big money was now on the Strip in Las Vegas, and in the Atlantic City casinos. The Overlook had become a summer hotel, and then it closed up for the winter, as it was closing now, and lay under a deep blanket of snow from October to April."',
              ),
            ),
         const   Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "The Overlook's winter caretaker was Jack Torrance, a writer who'd lost his chance at greatness through a series of alcohol-fueled misadventures. He was only five feet ten, but his arms were long, and his hands were enormous. It was this latter attribute that made him a second-rank writer instead of a first-rank one; when he held a pencil or a pen, it looked like a toy. But he had found a haven in the Overlook's cellar, where he could escape the curse of his own hands and where the only thing that mattered was the precision of his skill with a croquet mallet.",
              ),
            ),
      const      SizedBox(height: 16.0), // Add space between paragraphs and PDF view
           
        Padding(
  padding: EdgeInsets.symmetric(horizontal: 20.0), // Add padding from both sides
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BookPagesScreen(),
        ),
      );
    },
    style: ElevatedButton.styleFrom(
      primary: Colors.amber, // Change button color
      onPrimary: Colors.black, // Change text color
    ),
    child: Text('See Book Pages'),
  ),
)
            
          ],
        ),
     
      ),
    );
  }
}




class BookPagesScreen extends StatelessWidget {
  const BookPagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of book page images
    List<String> pageImages = [
      '/page1.png',
      '/page2.png',
      '/page3.png',
      '/page4.png',
      '/page5.png',
      '/page6.png',
      '/page7.png',
      // Add more page images as needed
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title:const Text('Book Pages'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: pageImages
            .map((pageImage) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    pageImage,
                    width: 500, // Adjust image width as needed
                    height: 500, // Adjust image height as needed
                    fit: BoxFit.cover,
                  ),
                ))
            .toList(),
      ),
    );
  }
}


class FifthScreen extends StatelessWidget {
  const FifthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('App Book'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              // This is your banner image
              height: 200, // Adjust the height as per your requirement
              decoration:const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/banner.jpg'), // Provide your image path here
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Add other content below the banner image
       const Padding(
              padding:  EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Us',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '"With BookApp, you have access to a vast library of books spanning various genres, from thrilling mysteries to heartwarming romances and epic fantasies. "',
                    style: TextStyle(fontSize: 16),
                  ),
                  // Add more content widgets as needed
                ],

              ),
            ),
           SizedBox(
              height: 200, // Adjust the height of the book images container
             child: ListView(
              scrollDirection: Axis.horizontal,
             children: const <Widget>[
                SizedBox(width: 2,), 
                ImageWithPadding('/octavia.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('assets/TheFallOfTheHouseOfUsherShortStory.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('assets/Persyjackson.jpg'),
                SizedBox(width: 2), 
                ImageWithPadding('assets/onedarkwindow.jpg'),
                SizedBox(width: 2),
                ImageWithPadding('/thebloodtrials.jpg'),
                SizedBox(width: 2),
              ],
              ),
            ),
           const   Divider(
  height: 20,
  thickness: 2,
  color: Colors.grey,
  indent: 20,
  endIndent: 20,
),

  const    Padding(
        padding:  EdgeInsets.only(top:10,left:10,),
        child:   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
         Text(
        'App Book',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
           ), 
             SizedBox(height: 10), // Add spacing between the text and the divider
    Text(
      'Play Pass',
      style: TextStyle(
        fontSize: 16,
        color: Color.fromARGB(255, 51, 51, 51),
      ),
    ),
    Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Gift Cards',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Play points',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Redeem',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:6,),
      child: Text(
        'Refund Policy',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:9,),
      child: Text(
        'Kind & Family',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:9,),
      child: Text(
        'Parent Guide',
        style: TextStyle(
          fontSize: 16,
         
        ),
      ),
    ),
      Padding(
      padding: EdgeInsets.only(top:9,),
      child: Text(
        'Family sharing',
        style: TextStyle(
          fontSize: 16,
       
        ),
      ),
    ),
    Row(
  children: [
    Padding(
      padding: EdgeInsets.only(top: 15,),
      child: Text(
        'Terms of service',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
    SizedBox(width: 10), // Add spacing between the two texts
    Padding(
      padding: EdgeInsets.only(top:15,left: 10,),
      child: Text(
        'Privacy',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
  ],
),
 Row(
  children: [
    Padding(
      padding: EdgeInsets.only(top: 15,),
      child: Text(
        'About App Book',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
    SizedBox(width: 10), // Add spacing between the two texts
    Padding(
      padding: EdgeInsets.only(top:15,left: 18,),
      child: Text(
        'Developers',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
    
  ],
),
 SizedBox(width: 10), // Add spacing between the two texts
    Padding(
      padding: EdgeInsets.only(top:15,),
      child: Text(
        'App Book',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
           ]
           ,
          
        
        ),
      ),
 Padding(
   padding: const EdgeInsets.only(left:7,),
   child: Row(
     children: [
    const  Text(
        'Pakistan (English)',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top:17,left:6,bottom: 10,),
        child: Row(
          children: [
            Image.asset(
              '/pakistaniflag.png', 
              width: 29, // Adjust the width of the flag image as needed
              height: 29, // Adjust the height of the flag image as needed
            ),
          ],
          
        ),
      ),
   
       ],
         ),
       ) 
          ],
          
        ),
        
      ),
      bottomNavigationBar: Container(
        color: Colors.amber,
        height: 49, // Change the color here
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.book),
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.attach_money),
                    onPressed: () {
                      Navigator.pushNamed(context, '/third');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.star_border),
                    onPressed: () {
                      Navigator.pushNamed(context, '/fourth');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.person),
                    onPressed: () {
                      Navigator.pushNamed(context, '/fifth');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
