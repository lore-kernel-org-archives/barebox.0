Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9P7A-0004pR-5z
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 06:34:01 +0000
Received: by mail-pg1-x542.google.com with SMTP id t70-v6so7336932pgd.12
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2018 23:33:50 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  7 Oct 2018 23:33:03 -0700
Message-Id: <20181008063303.16743-2-andrew.smirnov@gmail.com>
In-Reply-To: <20181008063303.16743-1-andrew.smirnov@gmail.com>
References: <20181008063303.16743-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] ARM: rdu1: Remove now redundant RAVE SP properties/nodes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Remove RAVE SP properties/nodes that are now availible from upstream
Linux DTS files.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx51-zii-rdu1.dts | 21 ---------------------
 1 file changed, 21 deletions(-)

diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-zii-rdu1.dts
index bde565fe0..93bb344f5 100644
--- a/arch/arm/dts/imx51-zii-rdu1.dts
+++ b/arch/arm/dts/imx51-zii-rdu1.dts
@@ -53,37 +53,16 @@
 
 &uart3 {
 	rave-sp {
-		#address-cells = <1>;
-		#size-cells = <1>;
-
 		watchdog {
 			nvmem-cells = <&boot_source>;
 			nvmem-cell-names = "boot-source";
 		};
 
-		eeprom@a3 {
-			compatible = "zii,rave-sp-eeprom";
-			reg = <0xa3 0x4000>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			zii,eeprom-name = "dds-eeprom";
-		};
-
 		eeprom@a4 {
-			compatible = "zii,rave-sp-eeprom";
-			reg = <0xa4 0x4000>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			zii,eeprom-name = "main-eeprom";
-
 			boot_source: boot-source@83 {
 				reg = <0x83 1>;
 			};
 		};
-
-		backlight {
-			compatible = "zii,rave-sp-backlight";
-		};
 	};
 };
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
