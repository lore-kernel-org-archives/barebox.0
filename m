Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uz5tg-0005gy-VL
 for barebox@lists.infradead.org; Tue, 16 Jul 2013 14:06:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Jul 2013 16:06:06 +0200
Message-Id: <1373983566-27721-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373983566-27721-1-git-send-email-s.hauer@pengutronix.de>
References: <1373983566-27721-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] ARM: i.MX6 tqma6x: configure environment from devicetree
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma6x/board.c | 4 ----
 arch/arm/dts/imx6dl-mba6x.dts  | 5 +++++
 arch/arm/dts/imx6q-mba6x.dts   | 5 +++++
 3 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
index 9e81a1d..7878cc6 100644
--- a/arch/arm/boards/tqma6x/board.c
+++ b/arch/arm/boards/tqma6x/board.c
@@ -134,10 +134,6 @@ static int tqma6x_env_init(void)
 	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc2.boot0",
 		0, (void *)flash_header_start, flash_header_end - flash_header_start, 0);
 
-	device_detect_by_name("mmc2");
-
-	default_environment_path = "/dev/mmc2.boot1";
-
 	return 0;
 }
 late_initcall(tqma6x_env_init);
diff --git a/arch/arm/dts/imx6dl-mba6x.dts b/arch/arm/dts/imx6dl-mba6x.dts
index 7840f06..9e4b95f 100644
--- a/arch/arm/dts/imx6dl-mba6x.dts
+++ b/arch/arm/dts/imx6dl-mba6x.dts
@@ -19,6 +19,11 @@
 
 	chosen {
 		linux,stdout-path = &uart2;
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &usdhc3, "partname:boot1";
+		};
 	};
 
 	memory {
diff --git a/arch/arm/dts/imx6q-mba6x.dts b/arch/arm/dts/imx6q-mba6x.dts
index f2ca177..5bf1405 100644
--- a/arch/arm/dts/imx6q-mba6x.dts
+++ b/arch/arm/dts/imx6q-mba6x.dts
@@ -19,6 +19,11 @@
 
 	chosen {
 		linux,stdout-path = &uart2;
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &usdhc3, "partname:boot1";
+		};
 	};
 
 	memory {
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
