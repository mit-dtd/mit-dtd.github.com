[[pagename]]
brothers
[[/pagename]]
[[title]]
Brothers
[[/title]]
[[active:brothers]]
 class="active"
[[/active:brothers]]
[[tagline]]
<strong>Delta Tau Delta</strong> has 34 active brothers from 21 different states.
[[/tagline]]
[[subtagline]]
Delts are a talented, diverse group of brothers who make us more than just a fraternity.
[[/subtagline]]
[[content]]
  <div class="row">
    <div class="span2">
      <ul class="submenu">
        <li class="active"><a href="#brotherinfo">Brothers</a></li>
        <li><a href="#class2012">2012s</a></li>
        <li><a href="#class2013">2013s</a></li>
        <li><a href="#class2014">2014s</a></li>
        <li><a href="#class2015">2015s</a></li>
        <li><a href="#class2016">2016s</a></li>
      </ul>
    </div>
    <div class="span10">
      <div id="brotherinfo" class="initial subpage">
        Blurb about brothers/brotherhood goes here.
      </div>
      <div id="class2012" class="subpage">
        <img src="images/2012s.jpg" alt="" /></li>
        <br />
        <div class="row chunk" id="bro-2012-details"></div>
      </div>
      <div id="class2013" class="subpage">
        <img src="images/2013s.jpg" alt="" /></li>
        <br />
        <div class="row chunk" id="bro-2013-details"></div>
      </div>
      <div id="class2014" class="subpage">
        <img src="images/2014s.jpg" alt="" /></li>
        <br />
        <div class="row chunk" id="bro-2014-details"></div>
      </div>
      <div id="class2015" class="subpage">
        <img src="images/2015s.jpg" alt="" /></li>
        <br />
        <div class="row chunk" id="bro-2015-details"></div>
      </div>
      <div id="class2016" class="subpage">
        <img src="images/2016s.jpg" alt="" /></li>
        <br />
        <div class="row chunk" id="bro-2016-details"></div>
      </div>
    </div>
  </div>
[[/content]]
[[scripts:start]]
<script id="brother-detail-template" type="text/x-handlebars-template">
  <ul class="thumbnails brothers">
    {{#brothers}}
    <li class="span3 brother-box">
      <a href="brothers/img/{{image}}" class="thumbnail" rel="lightbox[{{year}}]" title="<h5>{{name}}</h5><dl class='dl-horizontal'><dt>Course</dt><dd>{{course}}</dd><dt>Hometown</dt><dd>{{hometown}}</dd><dt>Interests</dt><dd>{{interests}}</dd><dt>Aspirations</dt><dd>{{aspirations}}</dd></dl>">
        <img src="brothers/img/{{image}}" alt="{{name}}" style="width: {{zoom}}px; max-width: {{zoom}}px; margin-left: {{left}}px; margin-top: {{top}}px;" />
        
      </a>
      <p>{{name}}</p>
      
      
    </li>
    {{/brothers}}
  </ul>
  </script>
[[/scripts:start]]
[[scripts:end]]
<script src="brothers/brothers.js"></script>
[[/scripts:end]]
