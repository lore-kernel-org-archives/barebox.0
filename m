Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9w5N-0002DC-El
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 10:46:53 +0000
Received: by weyr3 with SMTP id r3so1690917wey.36
 for <barebox@lists.infradead.org>; Fri, 07 Sep 2012 03:46:51 -0700 (PDT)
From: Alex Gershgorin <alexgershgorin@gmail.com>
Date: Fri,  7 Sep 2012 13:46:39 +0300
Message-Id: <1347014799-23478-1-git-send-email-alexg@meprolight.com>
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
Subject: [PATCH]    video imx-ipu-fb: add clear screen
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Alex Gershgorin <alexg@meprolight.com>

This patch clear screen before usage

Signed-off-by: Alex Gershgorin <alexg@meprolight.com>
---
 drivers/video/imx-ipu-fb.c |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 8039de0..d46cced 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -1012,6 +1012,10 @@ static int imxfb_probe(struct device_d *dev)
 					       (info->bits_per_pixel >> 3));
 		if (!fbi->info.screen_base)
 			return -ENOMEM;
+
+		/* Clear the screen */
+		memset((char *)fbi->info.screen_base, 0,
+		info->xres * info->yres * (info->bits_per_pixel >> 3));
 	}
 
 	sdc_enable_channel(fbi, info->screen_base, IDMAC_SDC_0);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
