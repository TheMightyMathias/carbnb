<!-- Show Page -->

<div class="banner" style="background-image: linear-gradient(-225deg, rgba(0,101,168,0.6) 0%, rgba(0,36,61,0.6) 50%), url('https://www.visitcalifornia.com/sites/default/files/styles/welcome_image/public/VCW_TI_6_Hero_CC_BigSur_coast_TS_1280x642_0.jpg');">

<h1> Vehicle to be Booked:</h1>
  <div class="box">
    <div class="dates">
      <div class="form-border">
        <div class="form-car-dates">
          <%= simple_form_for [@car, @booking] do |b| %>
          <%= b.input :start_date, :as => :hidden, :input_html => { :value => localize(b.object.start_date) } %>
          <%= b.input :end_date, :as => :hidden, :input_html => { :value => localize(b.object.end_date) } %>
          <h4 id="book_btn">Your desired booking dates begin on <strong><%= @starts_at %></strong> and end on <strong><%=@ends_at %></strong></h4><br>
          <h4>Please confirm your booking</h4>
          <%= b.submit "Confirm Booking", class: "btn btn-primary" %>
          <% end %>
          or<br>
              <div class="btn text-center">
            <%= link_to "Continue Browsing", search_path, class: "btn btn-primary" %>
          </div>
        </div>
      </div>
    </div>
        <% if @car.photos.first == nil  %>
        <img src=""http://www.cookandreevesvans.com/static/img/default-car.jpg"" alt="" class="car-image">
        <% else %>
        <div id="car-image" ><%= cl_image_tag @car.photos.first.picture %></div>
        <% end %>

        <div class="car-model">
          <h2><%= @car.model %></h2>
          <p>_______________________</p>
          <table class="car-info">
              <%= @car.year %> <%= @car.color %> <%= @car.brand %><br> Price: $<%= @car.price %><br> Location: <%= @car.location %>
          </table>
      </div>
    </div>
  </div>
</div>
