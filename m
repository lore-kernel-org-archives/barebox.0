Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieziL-0004CE-Hq
 for barebox@lists.infradead.org; Wed, 11 Dec 2019 10:59:31 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Wed, 11 Dec 2019 11:59:18 +0100
Message-Id: <1576061961-153938-4-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1576061961-153938-1-git-send-email-s.riedmueller@phytec.de>
References: <1576061961-153938-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH v3 4/7] ARM: dts: imx6: phycard: Make eeprom configurable
To: barebox@lists.infradead.org

The EEPROM is a configurable option. So make it configurable from the
dts file.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
Changes in v3:
 - Rebased on latest master
---
 arch/arm/dts/imx6q-phytec-phycard.dts        | 4 ++++
 arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi | 1 +
 2 files changed, 5 insertions(+)

diff --git a/arch/arm/dts/imx6q-phytec-phycard.dts b/arch/arm/dts/imx6q-phytec-phycard.dts
index 09106f7d4dda..c06461c2c73d 100644
--- a/arch/arm/dts/imx6q-phytec-phycard.dts
+++ b/arch/arm/dts/imx6q-phytec-phycard.dts
@@ -23,6 +23,10 @@
 	};
 };
 
+&eeprom {
+	status = "okay";
+};
+
 &fec {
 	status = "okay";
 };
diff --git a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
index 6d963f191024..f1a5e5962362 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
@@ -63,6 +63,7 @@
 	eeprom: m24c32@50 {
 		compatible = "st,24c32", "at24";
 		reg = <0x50>;
+		status = "disabled";
 	};
 };
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
