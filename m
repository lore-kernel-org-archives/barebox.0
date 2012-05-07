Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pz0-f49.google.com ([209.85.210.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SRBdw-00076u-SU
 for barebox@lists.infradead.org; Mon, 07 May 2012 00:17:38 +0000
Received: by dadm1 with SMTP id m1so1999030dad.36
 for <barebox@lists.infradead.org>; Sun, 06 May 2012 17:17:34 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Mon, 7 May 2012 10:14:24 +1000
References: <m31umynwu9.fsf@intrepid.localdomain>
 <20120506171638.GT4141@pengutronix.de> <m3bom1yzah.fsf@intrepid.localdomain>
In-Reply-To: <m3bom1yzah.fsf@intrepid.localdomain>
MIME-Version: 1.0
Message-Id: <201205071014.25217.marc@cpdesign.com.au>
Reply-To: marc@cpdesign.com.au
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1530579363540042486=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: RFC: Force a 2s delay on startup to allow bypassing /dev/env0.
To: barebox@lists.infradead.org
Cc: Krzysztof Halasa <khc@pm.waw.pl>

--===============1530579363540042486==
Content-Type: multipart/alternative;
  boundary="Boundary-01=_hPxpPHljlekMVwi"
Content-Transfer-Encoding: 7bit

--Boundary-01=_hPxpPHljlekMVwi
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Monday, May 07, 2012 03:50:14 AM Krzysztof Halasa wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> > Being able to interrupt before environment processing is a good thing to
> > have, the delay though is not acceptable because it would increase the
> > boot time on some systems by 400%. It should work without the delay
> > aswell.

I agree, adding 2 seconds to boot time wouldn't be very well received.

Our board has several gpio buttons which are checked for a specific press 
configuration at startup, eg, when buttons 1,3 and 4 only are held down, the 
auto boot is delayed.
This is obviously dependent on board hardware, but does make any delay 
optional. 

This is in our init script itself, but could just as easily be coded to check 
before the init script is run. You could set it up as a board installed 
callback...

Cheers,
Marc

--Boundary-01=_hPxpPHljlekMVwi
Content-Type: text/html;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Monospace'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">On Monday, May 07, 2012 03:50:14 AM Krzysztof Halasa wrote:</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; Sascha Hauer &lt;s.hauer@pengutronix.de&gt; writes:</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; Being able to interrupt before environment processing is a good thing to</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; have, the delay though is not acceptable because it would increase the</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; boot time on some systems by 400%. It should work without the delay</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; aswell.</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">I agree, adding 2 seconds to boot time wouldn't be very well received.</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Our board has several gpio buttons which are checked for a specific press configuration at startup, eg, when buttons 1,3 and 4 only are held down, the auto boot is delayed.</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">This is obviously dependent on board hardware, but does make any delay optional. </p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">This is in our init script itself, but could just as easily be coded to check before the init script is run. You could set it up as a board installed callback...</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Cheers,</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Marc</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p></body></html>
--Boundary-01=_hPxpPHljlekMVwi--


--===============1530579363540042486==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1530579363540042486==--
