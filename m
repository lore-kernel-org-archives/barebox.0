Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNhyG-00056l-2M
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:46:04 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1ZNhxu-0000u3-Jd
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 15:45:42 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1ZNhxu-0002jw-D2
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 15:45:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:45:33 +0200
Message-Id: <1438955141-8850-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] fbconsole updates
To: Barebox List <barebox@lists.infradead.org>

This series has several updates for the framebuffer console. With this
the framebuffer console should run much more smoothly when it comes to
scrolling.

----------------------------------------------------------------
Sascha Hauer (8):
      video: fbconsole: do not enter when we are already in fbconsole
      fb: return original fb_info in FBIOGET_SCREENINFO
      fb: Add shadowfb support
      splash command: simplify offscreen rendering
      gui: Use fb provided shadowfb for offscreen rendering
      gui: implement blitting screen areas
      fb: fbconsole: print cursor after clearing the screen
      fb: fbconsole: Add missing blits

 commands/splash.c           | 21 +++++++------------
 drivers/video/fb.c          | 51 ++++++++++++++++++++++++++++++++++++++++++++-
 drivers/video/fbconsole.c   | 18 ++++++++++++++--
 include/fb.h                |  3 +++
 include/gui/graphic_utils.h |  6 ++++--
 include/gui/gui.h           |  6 +-----
 lib/gui/graphic_utils.c     | 49 ++++++++++++++++++++++++-------------------
 7 files changed, 109 insertions(+), 45 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
