Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXDT4-00068A-1t
 for barebox@lists.infradead.org; Sun, 24 Jun 2018 22:26:48 +0000
Received: by mail-pl0-x242.google.com with SMTP id s24-v6so5869364plq.6
 for <barebox@lists.infradead.org>; Sun, 24 Jun 2018 15:26:35 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 24 Jun 2018 15:26:19 -0700
Message-Id: <20180624222623.30564-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/6] ARM: dts: rdu2: Add nodes for RAVE SP EEPROM
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index 6d9c38d7e..bdf76bc4e 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -52,6 +52,31 @@
 	aliases {
 		ethernet0 = &fec;
 		ethernet1 = &i210;
+		/*
+		 * Aliases to match Linux kernel naming in /dev/
+		 */
+		main-eeprom = &main_eeprom;
+		dds-eeprom = &dds_eeprom;
+	};
+};
+
+
+&uart4 {
+	rave-sp {
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		dds_eeprom: eeprom@a3 {
+			compatible = "zii,rave-sp-eeprom";
+			reg = <0xa3 0x4000>;
+		};
+
+		main_eeprom: eeprom@a4 {
+			compatible = "zii,rave-sp-eeprom";
+			reg = <0xa4 0x4000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
 	};
 };
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
