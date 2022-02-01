//Route Names
import 'package:relaxon/components/enum_Holder.dart';
import 'package:relaxon/screens/diary_screen.dart';
import 'package:relaxon/screens/public_chat_screen.dart';

String signupPath = '/signup';
String loginPath = '/login';
String homePath = '/home';
String welcomePath = '/welcome';
String diaryPath = '/home/diary';
String publicchatPath = '/home/publicchat';
String paragraphPath = '/home/paragraph';

//paragraphs
String urlprohelp = "https://www.therapyroute.com/ ";
String professionalhelp =
    "Because Mental health is such a personal issue many people don't like sharing their experience to random people and talking to a professional is a very good way to help with your mental health. Due to the fact that they are professionals they will be able to help give personalized ways to help with  your mental help. This website will help you find therapists in your area.";

String welcomepassage =
    "There are many different types of mental illnesses, there is Anxiety, Depression, Substance use disorder, Bipolar disorder, etc. and millions and millions of people have some type of mental illness. In 2018 around 970 million people worldwide had some type of mental disorder or substance disorder (\"Mental health\"). That was almost 12.77% of the world at that time. The pandemic that is occurring at this time is making the situation even worse. According to a survey  from June 2020, 13% of adults reported new or increased substance use due to coronavirus related stress (Panchal et al.). Due to all of this it is very important to have a place where people can talk about their experiences and how they got over their situation which is where RelaxOn comes in. RelaxOn shares a place where people can talk to other people about their experience going through this and how they overcame their illness, it also has a space where you can diary your thoughts which is a very good way to get over a lot of the mental illnesses and it gives websites to help you find therapist in your area who will be able to help you overcome your mental illness.";
String kaziMutashimHoque = "Kazi Mutashim Hoque";
String kazimutashimhoquemessage =
    "I think that my main problem is my eating obsession. Due to the fact that I eat a lot it has affected how my body is shaped. I have got overweight for my age and height which brought an insecurity to me making me think that I am different. On some days I would have had 5,6 meals a day which was really bad for my body. I think the main way that I have been able to help myself is by going to the gym and improving on myself day by day. I still have my days where I eat a lot but those are on some occasions not like before where it would be almost everyday.  My body is still overweight today but my body feels healthier and my mental health has improved due to that I can distract myself from thinking those dark thoughts by working out.";
String rayedMominul = "Rayed Mominul";
String rayedmominulmessage =
    "The main reason for my depression is because of bullying. In school I would get bullied all the time. I surrounded myself with people that made me really bad for being myself and at the end of the day made me sad. It was so bad to the point where I changed my personality just so I wouldn\’t get made fun of every day. At the start I thought that it was just fun and games but after sometime it started really getting to me when everyone of my friends started ganging up on me and all started saying bad things about my personality. After some time I realized that the people that I was surrounding myself with were really bad for me physically and mentally which made me realize that I shouldn’t surround myself with them and I started hanging out with another set of groups which really helped.";

//InApp Varaibles
String username = "";

List<PublicChatPanel> publicChatPanel = [
  PublicChatPanel(Sides.left, kaziMutashimHoque, kazimutashimhoquemessage),
  PublicChatPanel(
    Sides.left,
    rayedMominul,
    rayedmominulmessage,
  ),
];

List<DiaryPanel> diaryPanel = [
  // const DiaryPanel(
  //     "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
  // const DiaryPanel(
  //     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
];

//Funtions
typedef updateCallBack = Function();
