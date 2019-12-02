Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnUr-0004cD-PF
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 15:20:23 +0000
Received: by mail-pl1-x641.google.com with SMTP id g6so54442plp.7
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2019 07:20:21 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  2 Dec 2019 07:19:47 -0800
Message-Id: <20191202151954.16032-6-andrew.smirnov@gmail.com>
In-Reply-To: <20191202151954.16032-1-andrew.smirnov@gmail.com>
References: <20191202151954.16032-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/12] mci: imx-esdhc-pbl: Share initialization code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move common ESDHC initialization code into subroutines and convert the
rest of the code to use it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/imx-esdhc-pbl.c | 64 +++++++++++++++++++------------------
 1 file changed, 33 insertions(+), 31 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 2afb55af9..d5d83d18e 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -365,6 +365,31 @@ esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, ptrdiff_t entry,
 	bb();
 }
 
+static void imx_esdhc_init(struct esdhc *esdhc)
+{
+	esdhc->is_be = 0;
+	esdhc->is_mx6 = 1;
+	esdhc->wrap_wml = false;
+}
+
+static int imx8_esdhc_init(struct esdhc *esdhc, int instance)
+{
+	switch (instance) {
+	case 0:
+		esdhc->regs = IOMEM(MX8MQ_USDHC1_BASE_ADDR);
+		break;
+	case 1:
+		esdhc->regs = IOMEM(MX8MQ_USDHC2_BASE_ADDR);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	imx_esdhc_init(esdhc);
+
+	return 0;
+}
+
 /**
  * imx6_esdhc_start_image - Load and start an image from USDHC controller
  * @instance: The USDHC controller instance (0..4)
@@ -398,9 +423,7 @@ int imx6_esdhc_start_image(int instance)
 		return -EINVAL;
 	}
 
-	esdhc.is_be = 0;
-	esdhc.is_mx6 = 1;
-	esdhc.wrap_wml = false;
+	imx_esdhc_init(&esdhc);
 
 	return esdhc_start_image(&esdhc, 0x10000000, 0x10000000, 0);
 }
@@ -420,21 +443,11 @@ int imx6_esdhc_start_image(int instance)
 int imx8_esdhc_start_image(int instance)
 {
 	struct esdhc esdhc;
+	int ret;
 
-	switch (instance) {
-	case 0:
-		esdhc.regs = IOMEM(MX8MQ_USDHC1_BASE_ADDR);
-		break;
-	case 1:
-		esdhc.regs = IOMEM(MX8MQ_USDHC2_BASE_ADDR);
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	esdhc.is_be = 0;
-	esdhc.is_mx6 = 1;
-	esdhc.wrap_wml = false;
+	ret = imx8_esdhc_init(&esdhc, instance);
+	if (ret)
+		return ret;
 
 	return esdhc_start_image(&esdhc, MX8MQ_DDR_CSD1_BASE_ADDR,
 				 MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K);
@@ -448,20 +461,9 @@ int imx8_esdhc_load_piggy(int instance)
 	int ret, len;
 	int offset = SZ_32K;
 
-	switch (instance) {
-	case 0:
-		esdhc.regs = IOMEM(MX8MQ_USDHC1_BASE_ADDR);
-		break;
-	case 1:
-		esdhc.regs = IOMEM(MX8MQ_USDHC2_BASE_ADDR);
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	esdhc.is_be = 0;
-	esdhc.is_mx6 = 1;
-	esdhc.wrap_wml = false;
+	ret = imx8_esdhc_init(&esdhc, instance);
+	if (ret)
+		return ret;
 
 	/*
 	 * We expect to be running at MX8MQ_ATF_BL33_BASE_ADDR where the atf
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
