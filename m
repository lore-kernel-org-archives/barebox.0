Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiu1-00043E-Bk
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:39:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:39:08 +0200
Message-Id: <1277372356-32370-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/11] imxfb: do not enable framebuffer on startup
To: barebox@lists.infradead.org

The board code or startup script should enable it when
it actually wants to.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx.c |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 3a4f938..ac51858 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -579,8 +579,6 @@ static int imxfb_probe(struct device_d *dev)
 #ifdef CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY
 	imxfb_register_overlay(fbi, pdata->framebuffer_ovl);
 #endif
-	imxfb_enable_controller(info);
-
 	return 0;
 }
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
