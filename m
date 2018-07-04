Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1faZ86-0006Ng-KJ
 for barebox@lists.infradead.org; Wed, 04 Jul 2018 04:11:00 +0000
Received: by mail-pg0-x244.google.com with SMTP id m19-v6so1903830pgv.3
 for <barebox@lists.infradead.org>; Tue, 03 Jul 2018 21:10:49 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  3 Jul 2018 21:10:24 -0700
Message-Id: <20180704041024.32569-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180704041024.32569-1-andrew.smirnov@gmail.com>
References: <20180704041024.32569-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/4] ARM: dts: rdu2: Make use of "zii,eeprom-name"
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Convert RAVE SP EEPROMs to use "zii,eeprom-name" instead of aliases in
order to minimize differences with upstream Linux DT.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index b5bba1a38..a74fb4783 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -52,11 +52,6 @@
 	aliases {
 		ethernet0 = &fec;
 		ethernet1 = &i210;
-		/*
-		 * Aliases to match Linux kernel naming in /dev/
-		 */
-		main-eeprom = &main_eeprom;
-		dds-eeprom = &dds_eeprom;
 	};
 };
 
@@ -71,16 +66,18 @@
 			nvmem-cell-names = "boot-source";
 		};
 
-		dds_eeprom: eeprom@a3 {
+		eeprom@a3 {
 			compatible = "zii,rave-sp-eeprom";
 			reg = <0xa3 0x4000>;
+			zii,eeprom-name = "dds-eeprom";
 		};
 
-		main_eeprom: eeprom@a4 {
+		eeprom@a4 {
 			compatible = "zii,rave-sp-eeprom";
 			reg = <0xa4 0x4000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
+			zii,eeprom-name = "main-eeprom";
 
 			boot_source: boot-source@83 {
 				reg = <0x83 1>;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
