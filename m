Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiI2h-0007q9-92
 for barebox@lists.infradead.org; Tue, 02 Jul 2019 12:37:52 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Tue, 2 Jul 2019 14:37:40 +0200
Message-Id: <1562071065-367410-3-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1562071065-367410-1-git-send-email-s.riedmueller@phytec.de>
References: <1562071065-367410-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 3/8] ARM: dts: imx6ul: phycore: Add eeprom label
To: barebox@lists.infradead.org

Add a label for the EEPROM to be able to address it for the state
framework.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/dts/imx6ul-phytec-phycore-som.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
index 964f91950d93..1ef9d547822e 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
@@ -79,7 +79,7 @@
 	clock-frequency = <100000>;
 	status = "disabled";
 
-	eeprom@52 {
+	eeprom: eeprom@52 {
 		compatible = "cat,24c32";
 		reg = <0x52>;
 	};
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
