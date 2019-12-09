Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEvb-0001H2-A5
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 09:02:05 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Mon, 9 Dec 2019 10:01:45 +0100
Message-Id: <1575882108-108853-4-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1575882108-108853-1-git-send-email-s.riedmueller@phytec.de>
References: <1575882108-108853-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 4/7] ARM: dts: imx6: phycard: Make eeprom configurable
To: barebox@lists.infradead.org

The EEPROM is a configurable option. So make it configurable from the
dts file.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/dts/imx6q-phytec-phycard.dts        | 4 ++++
 arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi | 1 +
 2 files changed, 5 insertions(+)

diff --git a/arch/arm/dts/imx6q-phytec-phycard.dts b/arch/arm/dts/imx6q-phytec-phycard.dts
index cfcdcd2a1343..f06acb010095 100644
--- a/arch/arm/dts/imx6q-phytec-phycard.dts
+++ b/arch/arm/dts/imx6q-phytec-phycard.dts
@@ -16,6 +16,10 @@
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
index 5e0495996d52..78fc0c719637 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
@@ -66,6 +66,7 @@
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
