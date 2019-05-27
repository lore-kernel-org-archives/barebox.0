Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVM5R-0000RU-Cc
 for barebox@lists.infradead.org; Mon, 27 May 2019 20:19:17 +0000
Received: by mail-pl1-x641.google.com with SMTP id g69so7402695plb.7
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 13:19:12 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 13:18:53 -0700
Message-Id: <20190527201853.18853-8-andrew.smirnov@gmail.com>
In-Reply-To: <20190527201853.18853-1-andrew.smirnov@gmail.com>
References: <20190527201853.18853-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 7/7] ARM: rdu1: Add U-Boot environment partition
To: barebox@lists.infradead.org
Cc: Cory Tusar <cory.tusar@zii.aero>

From: Cory Tusar <cory.tusar@zii.aero>

Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
---
 arch/arm/dts/imx51-zii-rdu1.dts | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-zii-rdu1.dts
index 01e46baf2..7400c8d77 100644
--- a/arch/arm/dts/imx51-zii-rdu1.dts
+++ b/arch/arm/dts/imx51-zii-rdu1.dts
@@ -23,6 +23,11 @@
 			compatible = "barebox,environment";
 			device-path = &spinor, "partname:barebox-environment";
 		};
+
+		ubootenv {
+			compatible = "barebox,uboot-environment";
+			device-path-0 = &esdhc1, "partname:uboot-environment-0";
+		};
 	};
 
 	aliases {
@@ -61,6 +66,22 @@
 	};
 };
 
+&esdhc1 {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		/*
+		 * Layout info is taken from /etc/fw_env.config
+		 */
+		partition@c0000 {
+			label = "uboot-environment-0";
+			reg = <0xc0000 0x20000>;
+		};
+	};
+};
+
 &mdio_gpio {
 	switch: switch@0 {};
 };
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
