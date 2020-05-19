# README

- RUN 'RAILS SERVER' TO TEST IN BROWSER

- log out function
- navigation
          <td><%= (link_to 'edit', edit_patient_prescription_path(@patient, p), class: "edit_link") if my_patient?(@patient) %>
          
<%= (link_to 'add new prescription', new_patient_prescription_path(@patient), class: "edit_link") if @patient.user == current_user %>



-----

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
