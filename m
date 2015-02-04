Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YJ0XO-0008Aa-OH
 for barebox@lists.infradead.org; Wed, 04 Feb 2015 14:02:42 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C0D16A00420
 for <barebox@lists.infradead.org>; Wed,  4 Feb 2015 15:02:55 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Wed, 4 Feb 2015 15:00:50 +0100
Message-Id: <1423058453-17012-2-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1423058453-17012-1-git-send-email-w.egorov@phytec.de>
References: <1423058453-17012-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH 2/5] ARM: dts: Add a new compatible type for am335x phytec SOMs
To: barebox@lists.infradead.org

Added a new compatible type for am335x phytec SOMs

  "phytec,am335x-som"

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/dts/am335x-phytec-phycore-som-mlo.dts | 2 +-
 arch/arm/dts/am335x-phytec-phycore-som.dts     | 2 +-
 arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts | 2 +-
 arch/arm/dts/am335x-phytec-phyflex-som.dts     | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts b/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
index d8fceff..b08a59e 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
@@ -12,7 +12,7 @@
 
 / {
 	model = "Phytec phyCORE AM335x";
-	compatible = "phytec,phycore-am335x-som", "ti,am33xx";
+	compatible = "phytec,phycore-am335x-som", "phytec,am335x-som", "ti,am33xx";
 };
 
 /* Keep all bootsources disabled, we enable and register them
diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dts b/arch/arm/dts/am335x-phytec-phycore-som.dts
index 93f09e2..f13e0d6 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som.dts
@@ -12,7 +12,7 @@
 
 / {
 	model = "Phytec phyCORE AM335x";
-	compatible = "phytec,phycore-am335x-som", "ti,am33xx";
+	compatible = "phytec,phycore-am335x-som", "phytec,am335x-som", "ti,am33xx";
 };
 
 &spi0 {
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts b/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts
index ab9a9ec..5294ff5 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts
+++ b/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts
@@ -12,7 +12,7 @@
 
 / {
 	model = "Phytec phyFLEX AM335x";
-	compatible = "phytec,phyflex-am335x-som", "ti,am33xx";
+	compatible = "phytec,phyflex-am335x-som", "phytec,am335x-som", "ti,am33xx";
 };
 
 /* Keep all bootsources disabled, we enable and register them
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som.dts b/arch/arm/dts/am335x-phytec-phyflex-som.dts
index 2239f07..2be83b6 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som.dts
+++ b/arch/arm/dts/am335x-phytec-phyflex-som.dts
@@ -12,7 +12,7 @@
 
 / {
 	model = "Phytec phyFLEX AM335x";
-	compatible = "phytec,phyflex-am335x-som", "ti,am33xx";
+	compatible = "phytec,phyflex-am335x-som", "phytec,am335x-som", "ti,am33xx";
 };
 
 &spi0 {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
