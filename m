Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVdA0-0006SE-Gd
 for barebox@lists.infradead.org; Tue, 16 Feb 2016 10:47:17 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4772AA00438
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 11:47:09 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 16 Feb 2016 11:44:58 +0100
Message-Id: <1455619502-19908-4-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1455619502-19908-1-git-send-email-t.remmet@phytec.de>
References: <1455619502-19908-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 3/7] ARM: dts: am335x-phytec: eeprom name
To: barebox@lists.infradead.org

From: Jan Remmet <j.remmet@phytec.de>

use eeprom as name like in the kernel. This is needed if you use the
state framework.
phycard: also fix index, it has address 0x54

Signed-off-by: Jan Remmet <j.remmet@phytec.de>
---
 arch/arm/dts/am335x-phytec-phycard-som.dtsi | 2 +-
 arch/arm/dts/am335x-phytec-phycore-som.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/am335x-phytec-phycard-som.dtsi b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
index c0b2456..d1dfa86 100644
--- a/arch/arm/dts/am335x-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
@@ -92,7 +92,7 @@
 	status = "okay";
 	clock-frequency = <400000>;
 
-	eeprom: 24c32@52 {
+	eeprom: eeprom@54 {
 		status = "disabled";
 		compatible = "atmel,24c32";
 		pagesize = <32>;
diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dtsi b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
index ba0589c..f3a1d4d 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
@@ -143,7 +143,7 @@
 	status = "okay";
 	clock-frequency = <400000>;
 
-	eeprom: 24c32@52 {
+	eeprom: eeprom@52 {
 		status = "disabled";
 		compatible = "atmel,24c32";
 		pagesize = <32>;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
