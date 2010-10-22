Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9Krx-00027s-Qt
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:53:30 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1P9Krv-0001qC-TX
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 18:53:27 +0200
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1P9Krv-0000l5-SU
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 18:53:27 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 22 Oct 2010 18:53:14 +0200
Message-Id: <1287766405-1646-1-git-send-email-jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Add dynamic video initialization to barebox
To: barebox@lists.infradead.org

Currently barebox uses a fixed videomode setup. Everything is compiled in.
This change adds the possibility to select a videomode according to a
connected display at runtime. The current behaviour is still present if not
otherwise configured. If configured for runtime setup, initialization of the
video hardware will be delayed until the required videomode will be selected
from the shell code. If more than one videomode is supported by the platform,
running the 'devinfo' command on the framebuffer device shows the supported
videomode list. After selecting the videomode, the output can be enabled.

On my hardware I can connect a regular monitor, which supports more than one
videomode. The runtime setup sequence looks like that:

tx28:/ devinfo framebuffer0
base  : 0x00000000
size  : 0x00000000
driver: framebuffer

 Video/Mode info:
  Video output not enabled
 Current video mode:
   No video mode selected yet
 Supported video mode(s):
  'VGA'
  'SVGA'
  'XGA'
  'SXGA'
 Parameters:
           cdepth = 16
             mode = <NULL>
           enable = <NULL>

tx28:/ framebuffer0.mode=SVGA
tx28:/ bmp splash.bmp
tx28:/ framebuffer0.enable=1

After the last command the monitor shows the splash screen.

jbe


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
