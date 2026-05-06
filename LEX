# AMAZON LEX – HOTEL BOOKING BOT (STEP-BY-STEP)
## STEP 1: OPEN AMAZON LEX
1. Go to AWS Console  
2. Login  
3. Search Amazon Lex  
4. Click Amazon Lex  
5. Click Create bot  
---
## STEP 2: CREATE BOT
1. Select Create a blank bot  
2. Bot name: HotelBookingBot  
3. IAM Role: Create new role  
4. Click Next (keep defaults)  
5. Language: English  
6. Voice: Optional  
7. Click Done  
---
## STEP 3: CREATE INTENT
1. Go to Intents  
2. Click Add intent  
3. Click Create intent  
4. Intent name: BookHotel  
5. Click Create  
---
## STEP 4: ADD SAMPLE UTTERANCES
- I want to book a hotel  
- Book a room  
- Reserve hotel  
- I need a room  
---
## STEP 5: ADD SLOT (AGE)
1. Click Add slot  
2. Slot name: age  
3. Slot type: AMAZON.Number  
4. Prompt: What is your age?  
5. Mark as Required  
6. Save  
---
## STEP 6: ADD CONDITION (AGE CHECK)
1. Go to age slot  
2. Advanced options  
3. Slot capture → Success response → Conditional branching  
4. Add condition  
5. Condition: `{age} < 18`  
6. Response: You are not eligible for hotel booking  
7. Save  
---
## STEP 7: ADD SLOT (LOCATION)
1. Click Add slot  
2. Slot name: location  
3. Slot type: AMAZON.City  
4. Prompt: Which city do you want?  
5. Required  
6. Save  
---
## STEP 8: ADD SLOT (CHECK-IN DATE)
1. Click Add slot  
2. Slot name: checkin  
3. Slot type: AMAZON.Date  
4. Prompt: What is your check-in date?  
5. Required  
6. Retry prompt: Please provide a valid date (YYYY-MM-DD)  
7. Save  
---
## STEP 9: ADD SLOT (NIGHTS)
1. Click Add slot  
2. Slot name: nights  
3. Slot type: AMAZON.Number  
4. Prompt: How many nights will you stay?  
5. Required  
6. Save  
---
## STEP 10: CREATE CUSTOM SLOT TYPE (ROOMTYPE)
1. Go to Slot types  
2. Click Create slot type  
3. Choose blank slot type  
4. Name: RoomType  
5. Add values:  
   - Single  
   - Double  
   - Suite  
6. Save  
---
## STEP 11: ADD SLOT (ROOMTYPE)
1. Go to BookHotel intent  
2. Click Add slot  
3. Slot name: roomtype  
4. Slot type: RoomType  
5. Prompt: Select room type  
6. Required  
7. Save  
---
## STEP 12: ADD RESPONSE CARDS
1. Open roomtype slot  
2. More prompt options  
3. Add → Add card group  
4. Card title: Select Room Type  
5. Add buttons:  
   - Single → Single  
   - Double → Double  
   - Suite → Suite  
6. Save  
---
## STEP 13: CONFIGURE RESPONSES
**Initial response:**  
Welcome to Hotel Booking! What is your name?  

**Confirmation:**  
Do you want to confirm booking in `{location}` for `{nights}` nights?  
---
## STEP 14: BUILD AND TEST
1. Click Build  
2. Open Test chatbot  
3. Type: `Book a hotel`  
---
## SAMPLE OUTPUT
