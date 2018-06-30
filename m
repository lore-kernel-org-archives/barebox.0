Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x22f.google.com ([2607:f8b0:400e:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZ6rd-0003Lq-W0
 for barebox@lists.infradead.org; Sat, 30 Jun 2018 03:47:59 +0000
Received: by mail-pg0-x22f.google.com with SMTP id a14-v6so4774987pgw.10
 for <barebox@lists.infradead.org>; Fri, 29 Jun 2018 20:47:47 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 29 Jun 2018 20:47:36 -0700
Message-Id: <20180630034737.2820-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180630034737.2820-1-andrew.smirnov@gmail.com>
References: <20180630034737.2820-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/3] ARM: dts: rdu1: Specify "boot-source" NVMEM cell
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx51-zii-rdu1.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-zii-rdu1.dts
index b0e1d0276..731565c0d 100644
--- a/arch/arm/dts/imx51-zii-rdu1.dts
+++ b/arch/arm/dts/imx51-zii-rdu1.dts
@@ -63,6 +63,11 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 
+		watchdog {
+			nvmem-cells = <&boot_source>;
+			nvmem-cell-names = "boot-source";
+		};
+
 		dds_eeprom: eeprom@a3 {
 			compatible = "zii,rave-sp-eeprom";
 			reg = <0xa3 0x4000>;
@@ -75,6 +80,10 @@
 			reg = <0xa4 0x4000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
+
+			boot_source: boot-source@83 {
+				reg = <0x83 1>;
+			};
 		};
 	};
 };
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
