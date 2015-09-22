Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeHrp-0004UT-FZ
 for barebox@lists.infradead.org; Tue, 22 Sep 2015 07:19:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 22 Sep 2015 09:19:17 +0200
Message-Id: <1442906359-17286-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1442906359-17286-1-git-send-email-s.hauer@pengutronix.de>
References: <1442906359-17286-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] video: ipuv3: Do not crash when no mode is found
To: Barebox List <barebox@lists.infradead.org>

When something is missing in the device tree or not all necessary
drivers are compiled in it may happen that no valid mode is found.
Do not crash in this case but print an error message.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-v3/ipufb.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index ea2e83b..401f8f7 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -189,6 +189,11 @@ static void ipufb_enable_controller(struct fb_info *info)
 {
 	struct ipufb_info *fbi = container_of(info, struct ipufb_info, info);
 
+	if (!info->mode) {
+		dev_err(fbi->dev, "No valid mode found\n");
+		return;
+	}
+
 	vpl_ioctl_prepare(&fbi->vpl, 2 + fbi->dino, info->mode);
 
 	ipu_crtc_mode_set(fbi, info->mode, 0, 0);
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
