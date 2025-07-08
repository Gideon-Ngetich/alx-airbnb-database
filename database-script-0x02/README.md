# Sample Data Population – SQL Insert Statements

This document explains how I populated the database with meaningful sample data to reflect real-world usage.

## 1. Users

The `Users` table includes three types of users:

- A guest: Alice Johnson
- A host: Bob Smith
- An admin: Charlie Lee

Each user has a unique ID, email, and role. The `password_hash` field is a placeholder in this demo and should be replaced with securely hashed passwords in production.

## 2. Properties

Two properties were added, both owned by Bob (the host):

- A "Cozy Cabin" located in Nakuru, ideal for nature retreats.
- An "Urban Apartment" located in Nairobi CBD, suitable for business or short city stays.

The `host_id` links each property to Bob’s user record.

## 3. Bookings

Two bookings were created by Alice (the guest):

- A confirmed booking for the Cozy Cabin from August 1 to August 3.
- A pending booking for the Urban Apartment from August 10 to August 12.

`total_price` is calculated as `pricepernight × number_of_nights`.

## 4. Payments

Only one payment has been made so far:

- Alice paid 7000.00 KES via PayPal for the confirmed booking of the Cozy Cabin.

The payment is linked to the booking using the `booking_id`.

## 5. Reviews

One review was submitted by Alice after her stay:

- She rated the Cozy Cabin 5 stars and left a positive comment about her peaceful experience.

The review is tied to the `property_id` and `user_id`.

## 6. Messages

Two messages simulate a typical guest-host conversation:

- Alice inquires about availability.
- Bob responds that the property is available.

Messages are stored with sender and recipient IDs to track communication history between users.

## Summary

This dataset is suitable for:

- Testing the full booking flow (user → property → booking → payment).
- Generating statistics like total revenue, most reviewed property, etc.
- Demonstrating user interaction via messages and feedback.