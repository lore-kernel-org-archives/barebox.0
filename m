Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZG3bO-000536-T3
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 11:14:51 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0B7E6A0045E
 for <barebox@lists.infradead.org>; Fri, 17 Jul 2015 13:16:11 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 17 Jul 2015 13:13:49 +0200
Message-Id: <1437131633-9590-3-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1437131633-9590-1-git-send-email-t.remmet@phytec.de>
References: <1437131633-9590-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 3/7] ARM: dts: am335x-phytec boards: Fixup spi flash node name
To: barebox@lists.infradead.org

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/dts/am335x-phytec-phycore-som.dtsi | 2 +-
 arch/arm/dts/am335x-phytec-phyflex-som.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dtsi b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
index ed8e257..59816d0 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
@@ -162,7 +162,7 @@
 	pinctrl-0 = <&spi0_pins>;
 	status = "disabled";
 
-	flash: m25p80 {
+	flash: m25p80@0 {
 		compatible = "m25p80";
 		spi-max-frequency = <48000000>;
 		reg = <0>;
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
index fc9c9ba..b8c6886 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
@@ -151,7 +151,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&spi0_pins>;
 	status = "disabled";
-	flash: m25p80 {
+	flash: m25p80@0 {
 		compatible = "m25p80";
 		spi-max-frequency = <48000000>;
 		reg = <0>;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
