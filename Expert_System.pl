
% To execute the code enter ?- start.
start:-write('Enter your name,age,height,weight(in kg),level of training(Basic-1,Intermediate-2,Advanced-3)'),write(''),nl,
read(A),read(B),read(C),read(D),read(E),
write(' Your name is '),write(A),write(''),nl,
write(' Your age is '),write(B),write(''),nl,
write(' Your height is '),write(C),write('cm'),write(''),nl,
write(' your weight is '),write(D),write('kg'),write(''),nl,
write(' and your Level of workout is '),write(E),write(''),nl,
% formula to calculate bmi
R is (C * C) , Bmi is 10000*(D / R),write('Your BMI is '),write(''),write(Bmi),

status_bmi(Bmi),
write('You should practice the following pattern for your workout:'),
regimen(Bmi,E),
water_intake(D),
calorie(Bmi),
nutrition(Bmi),
write('\n Thank You for using our system. Happy Workout!').



% To check the Status of an individual based on his/her bmi
status_bmi(Bmi):-nl,(Bmi >= 30.0 -> Status = 'Obese';
 Bmi < 18.5 -> Status = 'Under Weight';
 Bmi >= 18.5 , Bmi =< 24.9 -> Status = 'Normal Weight';
 Bmi >= 25 , Bmi < 30 -> Status = 'Over Weight'),nl,
write(' Your BMI status falls into this category:- '),write(''),write(Status),nl.

%nutritiontest(Status):- nl,(Status is obese -> write('Milk,keto,Egg');
 %Status is normalWeight -> write('Proteins,cashew');
 %Status is overWeight -> write('keto,almonds,Egg')),nl,write('').



%Workout schedule based on the individuals bmi and level
regimen(Bmi,E):- nl, 
%obese and beginner
(Bmi >= 30.0 , E < 2 -> write('Monday: Cardio \n Tuesday: Rest \n Wednesday: Cardio with Abs  
Thursday: Full Body(Start with free weights squats. Lat pull down for Back then decline bench press for Chest. Next is Shoulder press followed by Biceps and tricep workout. Finish your workout doing calves )
Friday: Rest \n Saturday: Crossfit(Rowing, Kettlebelt, Jumping ropes,  burpees) \n Sunday: Rest'),write(''),nl;
%obese and intermediate
Bmi >= 30.0 , E < 3 , E > 1  -> write('Monday: Chest Shoulders and Triceps \n Tuesday: Cardio \n Wednesday: Back Biceps and Legs 
 Thursday: Rest \n Friday: Crossfit(Rowing, Kettlebelt, burpees Jumping ropes)  \n Saturday: Rest \n Sunday: Cardio'),write(''),nl;
 %obese and advanced
 Bmi >= 30.0, E < 4 , E > 2 -> write('Monday: Chest(Incline Dumbell press, Flat Bench press Decline Dumbell press followed by Pec Flys. End the workout with 2 sets of decline Push-ups)
Tuesday: Crossfit(Rowing, burpees Kettlebelt, Jumping ropes)  \n Wednesday: Cardio \n Thursday: Rest
Friday: Back and Legs(Start with Squats followed by weighted Lunges. Leg press followed by Leg extension and hamstring curl and lastly calves)
Saturday: Cardio \n Sunday: Biceps and Triceps'),write(''),nl;
 %underweight and beginner
 Bmi < 18.5 , E < 2 -> write('Monday: Full Body(Start with free weights squats. Lat pull down for Back then decline bench press for Chest. Next is Shoulder press followed by Biceps and tricep workout. Finish your workout doing calves )
 Tuesday: Rest \n Wednesday: Upper Body \n Thursday: Lower Body \n Friday: Rest \n Saturday: Cardio \n Sunday: Rest'),write(''),nl;
%underweight and intermediate
Bmi < 18.5 , E < 3 , E > 1 -> write('Monday: Chest Shoulders Triceps \n Tuesday: Rest 
Wednesday: Back(Start with chin-ups then Deadlift followed by Lat Pull down. Next up is Rowing and lastly Dumbell Shrugs for Traps) and Biceps \n Thursday: Cardio 
Friday: Rest \n Saturday: Legs(Start with Squats followed by weighted Lunges. Leg press followed by Leg extension and hamstring curl and lastly calves) \n Sunday: Abs'),write(''),nl;
%underweight and advanced
Bmi < 18.5  , E < 4 , E > 2 -> write('Monday: Chest Triceps \n Tuesday: Cardio 
 Wednesday: Back(Start with chin-ups then Deadlift followed by Lat Pull down. Next up is Rowing and lastly Dumbell Shrugs for Traps) Biceps \n Thursday: Rest 
Friday: Legs(Start with Squats followed by weighted Lunges. Leg press followed by Leg extension and hamstring curl and lastly calves) \n Saturday: Shoulders Abs \n Sunday: Biceps Triceps'),write(''),nl;
%normalWeight and beginner
Bmi >= 18.5 , Bmi < 24.9, E < 2 -> write('Monday: Full Body(Start with free weights squats. Lat pull down for Back then decline bench press for Chest. Next is Shoulder press followed by Biceps and tricep workout. Finish your workout doing calves ) 
Tuesday: Cardio \n Wednesday: Rest \n Thursday: Upper Body \n Friday: Rest \n Saturday: Lower Body \n Sunday: Rest'),write(''),nl;
%normalweight and intermediate
Bmi >= 18.5 , Bmi < 24.9 , E < 3 , E > 1-> write('Monday: Chest Shoulders Triceps 
Tuesday: Biceps and Back(Start with chin-ups then Deadlift followed by Lat Pull down. Next up is Rowing and lastly Dumbell Shrugs for Traps) \n Wednesday: Rest \n Thursday: Cardio
Friday: Legs(Start with Squats followed by weighted Lunges. Leg press followed by Leg extension and hamstring curl and lastly calves) \n Saturday: Rest \n Sunday: Abs'),write(''),nl;
%normalweight and advanced
Bmi >= 18.5 , Bmi < 24.9 , E < 4 , E > 2 -> write('Monday: Chest(Incline Dumbell press, Flat Bench press Decline Dumbell press followed by Pec Flys. End the workout with 2 sets of decline Push-ups) 
Tuesday: Back(Start with chin-ups then Deadlift followed by Lat Pull down. Next up is Rowing and lastly Dumbell Shrugs for Traps) \nWednesday: Biceps and Triceps \nThursday: Rest 
Friday: Legs(Start with Squats followed by weighted Lunges. Leg press followed by Leg extension and hamstring curl and lastly calves) \n Saturday: Shoulder and Abs \n Sunday: Cardio'),write(''),nl;
% overWeight and beginner
Bmi >= 25 , Bmi < 30 , E < 2 -> write('Monday: Upper Body \n Tuesday: Cardio \n Wednesday: Rest \n Thursday: Lower Body \n Friday: Rest \n Saturday: Cardio \n Sunday: Rest'),write(''),nl;
% overWeight and intermediate
Bmi >= 25 , Bmi < 30 , E < 3 , E > 1-> write('Monday: Chest Shoulders Triceps \n Tuesday: Cardio 
Wednesday: Rest \n Thursday: Legs(Start with Squats followed by weighted Lunges. Leg press followed by Leg extension and hamstring curl and lastly calves) \n Friday: Cardio 
Saturday: Back(Start with chin-ups then Deadlift followed by Lat Pull down. Next up is Rowing and lastly Dumbell Shrugs for Traps) and Biceps \n Sunday: Rest'),write(''),nl;
% overWeight and advanced
Bmi >= 25 , Bmi < 30 , E < 4 , E > 2 -> write('Monday: Chest(Incline Dumbell press, Flat Bench press Decline Dumbell press followed by Pec Flys. End the workout with 2 sets of decline Push-ups)  
Tuesday: Cardio \n Wednesday: Legs(Start with Squats followed by weighted Lunges. Leg press followed by Leg extension and hamstring curl and lastly calves) \n Thursday: Rest 
Friday: Shoulders and Triceps \n Saturday: Cardio \n Sunday: Back(Start with chin-ups then Deadlift followed by Lat Pull down. Next up is Rowing and lastly Dumbell Shrugs for Traps) and Biceps')),write(''),nl.



% to calculate the amount of water_intake needed per day based on the weight
 water_intake(D):-nl,(
T is (D * 2.2),
K is (T / 2),
write('It is recommended to drink '), write(K), write(' to '), write(T), write(' ounces of water every day')),write(''),nl.



% amount of calories to to consumed according to the bmi
calorie(Bmi):- nl,(Bmi >= 30.0 -> write('You will have to cut 1,000 calories a day in order to lose about two pounds a week.'),nl;
 Bmi < 18.5 -> write('You need to consume more calories than your body burns to gain weight.'),
 write(' Aim for 300 to 500 calories per day above your maintenance level for slow weight gain or 700 to 1,000 calories if you want to gain weight fast'),write(''),nl;
 Bmi >= 18.5 , Bmi =< 24.9 -> write('If you follow your current intake, then you should be good to go with.'), 
 write('\n However, if you are looking for a much lean body then reducing the calorie intake by 200 is ideal.'),
 write('\n And if you want to put in some more weight then you can intake around 130 additional calories'),write(''),nl;
 Bmi >= 25 , Bmi < 30 -> write('Reduce calories by 500 calories per day to lose about a one pound a week')),nl,write('').



% type of nutrition/ diet to be followed based on bmi value
nutrition(Bmi):- nl,(Bmi >= 30.0 -> write(' Maintain a keto diet for 4-6 months'),nl,write('Minimally processed food, dried Fruits and Eggs whites can be added to the meal'),write('\n Protein intake is not necessary'),nl,
write('\n Strongly recommended to limit consumption of sugared beverages, refined grains, potatoes, red and processed meats, and other highly processed foods, such as fast food');
 Bmi < 18.5 -> write('You will need to eat more frequently\n'),
 write('It is recommended to consume a Scoop of Mass Gainer protein after every workout'),nl,write('Meals should include: Milk(twice per day), Rice, Eggs(minimum 3), Red Meat, Potatoes and Starches '),write('');
 Bmi >= 18.5 , Bmi =< 24.9 -> write('Recommended to consume 2Scoops of Whey (Isolate/Hydrolyzed).'),write(' One after workout and the other before going to bed'),nl,
 write('Adding cereals, Red Meat and egg whites are recommended to in your breakfast. Also fruits and veggies are a must for a healthier physique');
 Bmi >= 25 , Bmi < 30 -> write('Follow a keto diet for 2 months'),write(' And add almonds,Egg whites to your meal')),nl,write('Limit consumption of Fast food and sugared beverages').
