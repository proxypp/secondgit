<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@daywidth: 100px;

//from bootstrap variables:

@state-success-text: #3c763d;
@state-success-bg: #dff0d8;
@state-info-text: #31708f;
@state-info-bg: #d9edf7;
//@state-warning-text: #8a6d3b;
//@state-warning-bg: #fcf8e3;
//@state-danger-text: #a94442;
//@state-danger-bg: #f2dede;


.calendar-day { 
  width: @daywidth; 
  min-width: @daywidth;
  max-width: @daywidth;
  height: 80px; 
}
.calendar-table { margin: 0 auto; width: @daywidth * 7;}

.selected { background-color: #eee;}
.outside .date {color: #ccc; }
.timetitle {
    white-space: nowrap;
    text-align: right;
}

.colors(@color, @text) {
        @top: @color;
        @border: darken(@color, 15%);
        @bottom: darken(@color, 7.5%);
        border-top: 1px solid @border;
        border-bottom: 1px solid @border;
        background-image: linear-gradient(to bottom, @top 0px, @bottom 100%);
        background-repeat: repeat-x;
        color: @text;
        border-width: 1px;
  
        &.begin { 
          border-left: 1px solid @border;
          border-top-left-radius: 4px;
          border-bottom-left-radius: 4px; }
        &.end { 
          border-right: 1px solid @border;
          border-top-right-radius: 4px;
          border-bottom-right-radius: 4px;
        }
}

.event {
          .colors(@state-success-bg, @state-success-text);
        font-size: .75em;
        padding: 0 .75em;
        line-height: 2em; 
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        margin-bottom: 1px;
        &.all-day { .colors(@state-info-bg, @state-info-text); }
        &.clear { background: none; border: 1px solid transparent; }
}


.cell-styles(@ruleset) {
  & > thead > tr, & > tbody > tr, & > tfoot > tr {
      & > th, & > td {
        @ruleset();
      }
    }
}

.table-tight {
  .cell-styles({ padding-left: 0; padding-right: 0; });
}
.table-tight-vert {
  .cell-styles({ padding-top: 0; padding-bottom: 0; });
}
</style>

</head>
<body>
<div class="container theme-showcase">
  <h1>Calendar</h1>
<div id="holder" class="row" ></div>
</div>

<script type="text/tmpl" id="tmpl">
  {{ 
  var date = date || new Date(),
      month = date.getMonth(), 
      year = date.getFullYear(), 
      first = new Date(year, month, 1), 
      last = new Date(year, month + 1, 0),
      startingDay = first.getDay(), 
      thedate = new Date(year, month, 1 - startingDay),
      dayclass = lastmonthcss,
      today = new Date(),
      i, j; 
  if (mode === 'week') {
    thedate = new Date(date);
    thedate.setDate(date.getDate() - date.getDay());
    first = new Date(thedate);
    last = new Date(thedate);
    last.setDate(last.getDate()+6);
  } else if (mode === 'day') {
    thedate = new Date(date);
    first = new Date(thedate);
    last = new Date(thedate);
    last.setDate(thedate.getDate() + 1);
  }
  
  }}
  <table class="calendar-table table table-condensed table-tight">
    <thead>
      <tr>
        <td colspan="7" style="text-align: center">
          <table style="white-space: nowrap; width: 100%">
            <tr>
              <td style="text-align: left;">
                <span class="btn-group">
                  <button class="js-cal-prev btn btn-default">&lt;</button>
                  <button class="js-cal-next btn btn-default">&gt;</button>
                </span>
                <button class="js-cal-option btn btn-default {{: first.toDateInt() <= today.toDateInt() && today.toDateInt() <= last.toDateInt() ? 'active':'' }}" data-date="{{: today.toISOString()}}" data-mode="month">{{: todayname }}</button>
              </td>
              <td>
                <span class="btn-group btn-group-lg">
                  {{ if (mode !== 'day') { }}
                    {{ if (mode === 'month') { }}<button class="js-cal-option btn btn-link" data-mode="year">{{: months[month] }}</button>{{ } }}
                    {{ if (mode ==='week') { }}
                      <button class="btn btn-link disabled">{{: shortMonths[first.getMonth()] }} {{: first.getDate() }} - {{: shortMonths[last.getMonth()] }} {{: last.getDate() }}</button>
                    {{ } }}
                    <button class="js-cal-years btn btn-link">{{: year}}</button> 
                  {{ } else { }}
                    <button class="btn btn-link disabled">{{: date.toDateString() }}</button> 
                  {{ } }}
                </span>
              </td>
              <td style="text-align: right">
                <span class="btn-group">
                  <button class="js-cal-option btn btn-default {{: mode==='year'? 'active':'' }}" data-mode="year">Year</button>
                  <button class="js-cal-option btn btn-default {{: mode==='month'? 'active':'' }}" data-mode="month">Month</button>
                  <button class="js-cal-option btn btn-default {{: mode==='week'? 'active':'' }}" data-mode="week">Week</button>
                  <button class="js-cal-option btn btn-default {{: mode==='day'? 'active':'' }}" data-mode="day">Day</button>
                </span>
              </td>
            </tr>
          </table>
          
        </td>
      </tr>
    </thead>
    {{ if (mode ==='year') {
      month = 0;
    }}
    <tbody>
      {{ for (j = 0; j < 3; j++) { }}
      <tr>
        {{ for (i = 0; i < 4; i++) { }}
        <td class="calendar-month month-{{:month}} js-cal-option" data-date="{{: new Date(year, month, 1).toISOString() }}" data-mode="month">
          {{: months[month] }}
          {{ month++;}}
        </td>
        {{ } }}
      </tr>
      {{ } }}
    </tbody>
    {{ } }}
    {{ if (mode ==='month' || mode ==='week') { }}
    <thead>
      <tr class="c-weeks">
        {{ for (i = 0; i < 7; i++) { }}
          <th class="c-name">
            {{: days[i] }}
          </th>
        {{ } }}
      </tr>
    </thead>
    <tbody>
      {{ for (j = 0; j < 6 && (j < 1 || mode === 'month'); j++) { }}
      <tr>
        {{ for (i = 0; i < 7; i++) { }}
        {{ if (thedate > last) { dayclass = nextmonthcss; } else if (thedate >= first) { dayclass = thismonthcss; } }}
        <td class="calendar-day {{: dayclass }} {{: thedate.toDateCssClass() }} {{: date.toDateCssClass() === thedate.toDateCssClass() ? 'selected':'' }} {{: daycss[i] }} js-cal-option" data-date="{{: thedate.toISOString() }}">
          <div class="date">{{: thedate.getDate() }}</div>
          {{ thedate.setDate(thedate.getDate() + 1);}}
        </td>
        {{ } }}
      </tr>
      {{ } }}
    </tbody>
    {{ } }}
    {{ if (mode ==='day') { }}
    <tbody>
      <tr>
        <td colspan="7">
          <table class="table table-striped table-condensed table-tight-vert" >
            <thead>
              <tr>
                <th>&nbsp;</th>
                <th style="text-align: center; width: 100%">{{: days[date.getDay()] }}</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th class="timetitle" >All Day</th>
                <td class="{{: date.toDateCssClass() }}">  </td>
              </tr>
              <tr>
                <th class="timetitle" >Before 6 AM</th>
                <td class="time-0-0"> </td>
              </tr>
              {{for (i = 6; i < 22; i++) { }}
              <tr>
                <th class="timetitle" >{{: i <= 12 ? i : i - 12 }} {{: i < 12 ? "AM" : "PM"}}</th>
                <td class="time-{{: i}}-0"> </td>
              </tr>
              <tr>
                <th class="timetitle" >{{: i <= 12 ? i : i - 12 }}:30 {{: i < 12 ? "AM" : "PM"}}</th>
                <td class="time-{{: i}}-30"> </td>
              </tr>
              {{ } }}
              <tr>
                <th class="timetitle" >After 10 PM</th>
                <td class="time-22-0"> </td>
              </tr>
            </tbody>
          </table>
        </td>
      </tr>
    </tbody>
    {{ } }}
  </table>
</script>



<div class="container">
  <hr>
  <p>Resources</p>
  <ul>
    <li><a href="https://github.com/twbs/bootstrap">Bootstrap</a></li>
    <li><a href="https://bootstrap-calendar.azurewebsites.net/index-bs3.html">another calendar</a></li>
    <li><a href="http://www.bootply.com/rzNQTlDlFX">another calendar</a></li>
    <li><a href="http://slipsum.com">lipsum generator</a></li>
  </ul>
</div>
<div class="container">
  <hr>
  <p>Notes</p>
  <ul>
    <li>clicking on year to open and let you jump around 5ish years, don't care for current ui...</li>
    <li>work needed on day mode (buggy, unfinished)</li>
    <li>options missing still for classes</li>
    <li>not sure about popover contents</li>
    <li>? use of success state color and info state color ?</li>
    <li><a href="http://www.reddit.com/r/css/comments/2gvw4n/i_refactored_my_less_to_follow_fats_guidelines/">can do better with css rules</a></li>
  </ul>
</div>

</body>
</html>