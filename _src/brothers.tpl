[[pagename]]
brothers
[[/pagename]]
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
<section>
              <div class="page-header">
                <h1>2012</h1>
              </div>
              <div class="flexslider" id="bro-2012-carousel">
                <ul class="slides">
                  <li><img src="images/2012s.jpg" alt="" /></li>
                  <li>
                    <div class="row" id="bro-2012-details"></div>
                  </li>
                </ul>
              </div>
            </section>
            
            <section>
              <div class="page-header">
                <h1>2013</h1>
              </div>
              <div class="flexslider" id="bro-2013-carousel">
                <ul class="slides">
                  <li><img src="images/2013s.jpg" alt="" /></li>
                  <li>
                    <div class="row" id="bro-2013-details"></div>
                  </li>
                </ul>
              </div>
            </section>
            
            <section>
              <div class="page-header">
                <h1>2014</h1>
              </div>
              <div class="flexslider" id="bro-2014-carousel">
                <ul class="slides">
                  <li><img src="images/2014s.jpg" alt="" /></li>
                  <li>
                    <div class="row" id="bro-2014-details"></div>
                  </li>
                </ul>
              </div>
            </section>
            
            <section>
              <div class="page-header">
                <h1>2015</h1>
              </div>
              <div class="flexslider" id="bro-2015-carousel">
                <ul class="slides">
                  <li><img src="images/2015s.jpg" alt="" /></li>
                  <li>
                    <div class="row" id="bro-2015-details"></div>
                  </li>
                </ul>
              </div>
            </section>

            <section>
              <div class="page-header">
                <h1>2016</h1>
              </div>
              <div class="flexslider" id="bro-2016-carousel">
                <ul class="slides">
                  <li><img src="images/2016s.jpg" alt="" /></li>
                  <li>
                    <div class="row" id="bro-2016-details"></div>
                  </li>
                </ul>
              </div>
            </section>
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
