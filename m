Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fizZw-0008Ra-GN
 for barebox@lists.infradead.org; Fri, 27 Jul 2018 10:02:33 +0000
Received: by mail-pl0-x241.google.com with SMTP id s17-v6so2119079plp.7
 for <barebox@lists.infradead.org>; Fri, 27 Jul 2018 03:02:22 -0700 (PDT)
From: marc@cpdesign.com.au
Date: Fri, 27 Jul 2018 20:02:08 +1000
Message-Id: <20180727100208.20922-1-marc@cpdesign.com.au>
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
Subject: [PATCH] arm: dts: am335x-bone-common.dtsi: add eeprom device to DT
To: barebox@lists.infradead.org

From: Marc Reilly <marc@cpdesign.com.au>

This adds a device node to provide support for the onboard eeprom of
beaglebone products. The eeprom contents can be used to determine the
type of beaglebone running. For example this can be used to
differentiate between the original Beaglebone Black and the wireless
version.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 arch/arm/dts/am335x-bone-common.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/dts/am335x-bone-common.dtsi b/arch/arm/dts/am335x-bone-common.dtsi
index e03ae2a8d..a5db15197 100644
--- a/arch/arm/dts/am335x-bone-common.dtsi
+++ b/arch/arm/dts/am335x-bone-common.dtsi
@@ -217,6 +217,16 @@
 		reg = <0x24>;
 	};
 
+	baseboard_eeprom: baseboard_eeprom@50 {
+		compatible = "atmel,24c256";
+		reg = <0x50>;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+		baseboard_data: baseboard_data@0 {
+			reg = <0 0x100>;
+		};
+	};
 };
 
 /include/ "tps65217.dtsi"
-- 
2.16.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
