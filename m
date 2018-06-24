Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXDT5-00068H-Bs
 for barebox@lists.infradead.org; Sun, 24 Jun 2018 22:26:56 +0000
Received: by mail-pl0-x243.google.com with SMTP id k1-v6so5867282plt.2
 for <barebox@lists.infradead.org>; Sun, 24 Jun 2018 15:26:39 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 24 Jun 2018 15:26:22 -0700
Message-Id: <20180624222623.30564-6-andrew.smirnov@gmail.com>
In-Reply-To: <20180624222623.30564-1-andrew.smirnov@gmail.com>
References: <20180624222623.30564-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/6] ARM: dts: rdu2: Specify "boot-source" NVMEM cell
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index bdf76bc4e..f22c68aca 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -66,6 +66,11 @@
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
@@ -76,6 +81,10 @@
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
