Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtJH7-0001RD-Ot
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 15:43:09 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VtJGl-0002e6-AY
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 16:42:43 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1VtJGl-00036y-9Z
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 16:42:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Dec 2013 16:42:32 +0100
Message-Id: <1387381362-7780-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: video / IPU patches
To: barebox@lists.infradead.org

The follwowing contains several fixes/approvements for the IPUv1 driver
and some general fb patches.

Sascha

----------------------------------------------------------------
Sascha Hauer (10):
      video: ipufb: make disp_data_fmt configurable
      video: ipufb: do not use bitfields
      video: ipufb: calculate channel param fields from fb_bitfields
      video: ipufb: Fix 24bit format and implement 32bit format
      video: ipufb: Fix divider debug print
      video: ipufb: Allow to disable fractional pixelclock divider
      video: imx-ipu-fb: Do not modify pwm register
      video: Add screen_size field
      video: imx-ipu-fb: Allow to specify framebuffer memory size via platform_data
      video: simplefb: Add of reserve entry for framebuffer memory

 arch/arm/mach-imx/include/mach/imx-ipu-fb.h |  22 ++
 drivers/video/fb.c                          |   2 +
 drivers/video/imx-ipu-fb.c                  | 385 +++++++++++++++-------------
 drivers/video/simplefb.c                    |   3 +
 include/fb.h                                |   1 +
 5 files changed, 229 insertions(+), 184 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
