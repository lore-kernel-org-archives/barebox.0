Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvQ4-0006zT-LG
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:23:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:23:36 +0100
Message-Id: <20191127112337.18719-6-s.hauer@pengutronix.de>
In-Reply-To: <20191127112337.18719-1-s.hauer@pengutronix.de>
References: <20191127112337.18719-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] ARM Layerscape: ls1046ardb: Fix EEPROM nodes
To: Barebox List <barebox@lists.infradead.org>

The ls1046ardb only has one EEPROM instead of two and this is a 24c04
(which spans two addresses on the I2C bus) and not a 24c512.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/fsl-ls1046a-rdb.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/dts/fsl-ls1046a-rdb.dts b/arch/arm/dts/fsl-ls1046a-rdb.dts
index ee4ddf0f2c..32b3f40769 100644
--- a/arch/arm/dts/fsl-ls1046a-rdb.dts
+++ b/arch/arm/dts/fsl-ls1046a-rdb.dts
@@ -5,6 +5,10 @@
 #include <arm64/freescale/fsl-ls1046a-rdb.dts>
 
 / {
+	aliases {
+		eeprom = &eeprom;
+	};
+
 	chosen {
 		stdout-path = &duart0;
 
@@ -46,6 +50,17 @@
 	status = "okay";
 };
 
+&i2c0 {
+	eeprom: eeprom@52 {
+		compatible = "atmel,24c04";
+	};
+
+	non_existent_eeprom: eeprom@53 {
+	};
+};
+
+/delete-node/ &non_existent_eeprom;
+
 &fman0 {
 	ethernet@e0000 {
 		status = "disabled";
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
