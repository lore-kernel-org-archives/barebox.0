Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZBbZ-00032g-2U
 for barebox@lists.infradead.org; Wed, 10 Jan 2018 08:19:26 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 10 Jan 2018 09:19:12 +0100
Message-Id: <20180110081912.21808-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20180110081912.21808-1-s.trumtrar@pengutronix.de>
References: <20180110081912.21808-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: socfpga: move environment from dtsi to board dts
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Currently all upstream boards use the same barebox-environment setup.
It is however problematic to add new boards, that have a different setup.
Instead of having to /delete-node/ the file-path property in those boards,
move the environment to the specific board files.
This also has the charme of - maybe one day - getting rid of a barebox-version
of socfpga.dtsi :-)

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/socfpga.dtsi                      | 8 --------
 arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts | 6 ++++++
 arch/arm/dts/socfpga_cyclone5_socdk.dts        | 8 ++++++++
 arch/arm/dts/socfpga_cyclone5_sockit.dts       | 6 ++++++
 arch/arm/dts/socfpga_cyclone5_socrates.dts     | 6 ++++++
 5 files changed, 26 insertions(+), 8 deletions(-)

diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
index 2fe8f8687593..7789c9d3b5c2 100644
--- a/arch/arm/dts/socfpga.dtsi
+++ b/arch/arm/dts/socfpga.dtsi
@@ -1,12 +1,4 @@
 / {
-	chosen {
-		environment@0 {
-			compatible = "barebox,environment";
-			device-path = &mmc, "partname:1";
-			file-path = "barebox.env";
-		};
-	};
-
 	aliases {
 		mmc0 = &mmc;
 	};
diff --git a/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
index 087fc71e60ef..8854ade43468 100644
--- a/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
+++ b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
@@ -24,6 +24,12 @@
 
 	chosen {
 		stdout-path = &uart0;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &mmc, "partname:1";
+			file-path = "barebox.env";
+		};
 	};
 
 	leds: gpio-leds {
diff --git a/arch/arm/dts/socfpga_cyclone5_socdk.dts b/arch/arm/dts/socfpga_cyclone5_socdk.dts
index f93ac105c46f..dfb6273cae15 100644
--- a/arch/arm/dts/socfpga_cyclone5_socdk.dts
+++ b/arch/arm/dts/socfpga_cyclone5_socdk.dts
@@ -21,6 +21,14 @@
 / {
 	model = "Altera SOCFPGA Cyclone V SoC Development Kit";
 	compatible = "altr,socdk", "altr,socfpga-cyclone5", "altr,socfpga";
+
+	chosen {
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &mmc, "partname:1";
+			file-path = "barebox.env";
+		};
+	};
 };
 
 &qspi {
diff --git a/arch/arm/dts/socfpga_cyclone5_sockit.dts b/arch/arm/dts/socfpga_cyclone5_sockit.dts
index 7cb9b9600563..8830afeb9a6b 100644
--- a/arch/arm/dts/socfpga_cyclone5_sockit.dts
+++ b/arch/arm/dts/socfpga_cyclone5_sockit.dts
@@ -24,5 +24,11 @@
 
 	chosen {
 		stdout-path = &uart0;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &mmc, "partname:1";
+			file-path = "barebox.env";
+		};
 	};
 };
diff --git a/arch/arm/dts/socfpga_cyclone5_socrates.dts b/arch/arm/dts/socfpga_cyclone5_socrates.dts
index ea7e6cc102bd..93253af7ec0f 100644
--- a/arch/arm/dts/socfpga_cyclone5_socrates.dts
+++ b/arch/arm/dts/socfpga_cyclone5_socrates.dts
@@ -21,6 +21,12 @@
 / {
 	chosen {
 		stdout-path = &uart0;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &mmc, "partname:1";
+			file-path = "barebox.env";
+		};
 	};
 
 	aliases {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
