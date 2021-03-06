<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:k="http://www.tavultesoft.com/xml/70">

  <xsl:template name="page_distribution">
    <div class="page" id="Distribution">
      <div id="uppertext3" style="clear: all; display: block;">
        <div class="headerimage">
          <p><img alt="Distribution">
            <xsl:attribute name="src"><xsl:value-of select='/KeymanDeveloperProject/templatepath'/>header_distrib.png</xsl:attribute>
          </img></p>
          <div class='quicklinks'>
            <h3>Quick Links</h3>
          
            <ul>
              <li><a href="https://keyman.com/go/developer/10.0/help-keyboards">Share source and add to Keyman keyboard repositories</a></li>
              <li><a href="https://keyman.com/go/developer/10.0/help-packages">Windows and macOS distribution</a></li>
              <li><a href="https://keyman.com/go/developer/10.0/help-mobile">iPhone, iPad and Android distribution</a></li>
              <li><a href="https://keyman.com/go/developer/10.0/keymanweb">Web soft keyboard</a></li>
              <li><a href="https://keyman.com/go/developer/10.0/keyman-engine-home">Keyman Engine</a></li>
            </ul>
          </div>
        </div>

        <div class="pagetext">

          <h2>Distribute Your Keyboard Layouts</h2>
          
          <p>After completing your keyboards and packages, share them with the world.</p>

          <p>Keyman keyboards can be shared in several different ways:</p>
          
          <ul>
            <li>Add your keyboard to the Keyman Keyboard Repositories. In order to do this, you must share the source code of your keyboard.
                <b>Recommended option!</b> &#160; <a href='https://keyman.com/go/developer/10.0/help-keyboards'>Learn more</a></li>
            <li>Share a package file yourself: just give a .kmp file to any Keyman user, on Windows, macOS, iOS or Android and they can install it. Or put the .kmp file onto a website for users to download.
                <a href='https://keyman.com/go/developer/10.0/help-packages'>Learn more</a></li>
            <li>Sharing package files to mobile devices can be more complex. Learn about specific techniques for distribution to mobile devices.
                <a href='https://keyman.com/go/developer/10.0/help-mobile'>Learn more</a></li>
            <li>Add your keyboard to a website using KeymanWeb
                <a href='https://keyman.com/go/developer/10.0/keymanweb'>Learn more</a></li>
          </ul>
          
          <p>You can also create your own custom keyboarding product based on Keyman: <a href='https://keyman.com/go/developer/10.0/keyman-engine-home'>Learn more</a></p>
          
        </div>
      </div>
   
      <div class='filelist' id="distributionlist">
        <p>&#160;</p>
      </div>
    </div>
  </xsl:template>
  
</xsl:stylesheet>  
