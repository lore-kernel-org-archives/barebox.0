Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtJH7-0001RG-Or
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 15:43:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Dec 2013 16:42:36 +0100
Message-Id: <1387381362-7780-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] video: ipufb: Fix 24bit format and implement 32bit
 format
To: barebox@lists.infradead.org

When requested 32bit formats the IPU generated a 24bit format instead.
Implement real 32bit format (xxrrggbb) and let the IPU generate a 24bit format
when requested.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-fb.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 717fc71..858bde8 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -91,6 +91,8 @@ enum pixel_fmt {
 	IPU_PIX_FMT_BGR666,
 	/* 3 bytes */
 	IPU_PIX_FMT_RGB24,
+	/* 3 bytes */
+	IPU_PIX_FMT_RGB32,
 };
 
 struct di_mapping {
@@ -560,6 +562,9 @@ static void ipu_ch_param_set_size(struct ipu_ch_param *p,
 	case IPU_PIX_FMT_RGB24:
 		ipu_cpmem_set_format_rgb(p, &def_rgb_24);
 		break;
+	case IPU_PIX_FMT_RGB32:
+		ipu_cpmem_set_format_rgb(p, &def_rgb_32);
+		break;
 	default:
 		break;
 	}
@@ -594,8 +599,10 @@ static u32 bpp_to_pixfmt(int bpp)
 	switch (bpp) {
 	case 16:
 		return IPU_PIX_FMT_RGB565;
-	case 32:
+	case 24:
 		return IPU_PIX_FMT_RGB24;
+	case 32:
+		return IPU_PIX_FMT_RGB32;
 	default:
 		return 0;
 	}
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
