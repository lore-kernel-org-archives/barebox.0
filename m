Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtJH7-0001RH-Ol
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 15:43:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Dec 2013 16:42:37 +0100
Message-Id: <1387381362-7780-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1387381362-7780-1-git-send-email-s.hauer@pengutronix.de>
References: <1387381362-7780-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] video: ipufb: Fix divider debug print
To: barebox@lists.infradead.org

The fractional part is 4 bit, not 3

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-fb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 858bde8..8b43515 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -475,7 +475,7 @@ static int sdc_init_panel(struct fb_info *info, enum disp_data_mapping fmt)
 	}
 
 	dev_dbg(&info->dev, "pixel clk = %lu, divider %u.%u\n",
-		pixel_clk, div >> 4, (div & 7) * 125);
+		pixel_clk, div >> 4, (div & 0xf) * (1000 / 16));
 
 	/*
 	 * DISP3_IF_CLK_DOWN_WR is half the divider value and 2 fraction bits
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
