Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22e.google.com ([2607:f8b0:400e:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YBwig-00031M-8I
 for barebox@lists.infradead.org; Fri, 16 Jan 2015 02:33:07 +0000
Received: by mail-pa0-f46.google.com with SMTP id lf10so21285096pab.5
 for <barebox@lists.infradead.org>; Thu, 15 Jan 2015 18:32:47 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 15 Jan 2015 18:32:36 -0800
Message-Id: <1421375556-21715-4-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1421375556-21715-1-git-send-email-andrew.smirnov@gmail.com>
References: <1421375556-21715-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/3] i.MX6: phytec: Allow multiple MMC devices to contain boot
 environment
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code so that when booting from different SDHCI controllers barebox
would correctly set up where to look for bootloader environment.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/phytec-phyflex-imx6/board.c | 10 +++++++---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi     | 20 +++++++++++++++++++-
 2 files changed, 26 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
index c731faf..5f65261 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/board.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
@@ -17,6 +17,7 @@
  *
  */
 
+#include <malloc.h>
 #include <envfs.h>
 #include <environment.h>
 #include <bootsource.h>
@@ -79,14 +80,15 @@ static int phytec_pfla02_init(void)
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
-		environment_path = "/chosen/environment-sd";
+		environment_path = asprintf("/chosen/environment-sd%d",
+					bootsource_get_instance() + 1);
 		break;
 	case BOOTSOURCE_NAND:
-		environment_path = "/chosen/environment-nand";
+		environment_path = asprintf("/chosen/environment-nand");
 		break;
 	default:
 	case BOOTSOURCE_SPI:
-		environment_path = "/chosen/environment-spinor";
+		environment_path = asprintf("/chosen/environment-spinor");
 		break;
 	}
 
@@ -95,6 +97,8 @@ static int phytec_pfla02_init(void)
 		pr_warn("Failed to enable environment partition '%s' (%d)\n",
 			environment_path, ret);
 
+	free(environment_path);
+
 	return 0;
 }
 device_initcall(phytec_pfla02_init);
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 32ce088..85cfec3 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -23,11 +23,29 @@
 			status = "disabled";
 		};
 
-		environment-sd {
+		environment-sd1 {
+			compatible = "barebox,environment";
+			device-path = &usdhc1, "partname:barebox-environment";
+			status = "disabled";
+		};
+
+		environment-sd2 {
+			compatible = "barebox,environment";
+			device-path = &usdhc2, "partname:barebox-environment";
+			status = "disabled";
+		};
+
+		environment-sd3 {
 			compatible = "barebox,environment";
 			device-path = &usdhc3, "partname:barebox-environment";
 			status = "disabled";
 		};
+
+		environment-sd4 {
+			compatible = "barebox,environment";
+			device-path = &usdhc4, "partname:barebox-environment";
+			status = "disabled";
+		};
 	};
 };
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
