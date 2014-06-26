Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0IUa-000376-5Y
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 22:50:09 +0000
Received: by mail-la0-f48.google.com with SMTP id el20so2397663lab.35
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 15:49:45 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 27 Jun 2014 02:49:32 +0400
Message-Id: <1403822973-3151-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1403822973-3151-1-git-send-email-antonynpavlov@gmail.com>
References: <1403822973-3151-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/4] MIPS: dts: jz4755.dtsi: add gpio
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/jz4755.dtsi | 42 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/mips/dts/jz4755.dtsi b/arch/mips/dts/jz4755.dtsi
index 44ff912..0e655b6 100644
--- a/arch/mips/dts/jz4755.dtsi
+++ b/arch/mips/dts/jz4755.dtsi
@@ -31,5 +31,47 @@
 			clock-frequency = <12000000>;
 			status = "disabled";
 		};
+
+		gpio0: gpio@10010000 {
+			compatible = "ingenic,jz4740-gpio";
+			gpio-controller;
+			reg = <0xb0010000 0x100>;
+			#gpio-cells = <2>;
+		};
+
+		gpio1: gpio@10010100 {
+			compatible = "ingenic,jz4740-gpio";
+			gpio-controller;
+			reg = <0xb0010100 0x100>;
+			#gpio-cells = <2>;
+		};
+
+		gpio2: gpio@10010200 {
+			compatible = "ingenic,jz4740-gpio";
+			gpio-controller;
+			reg = <0xb0010200 0x100>;
+			#gpio-cells = <2>;
+		};
+
+		gpio3: gpio@10010300 {
+			compatible = "ingenic,jz4740-gpio";
+			gpio-controller;
+			reg = <0xb0010300 0x100>;
+			#gpio-cells = <2>;
+		};
+
+		gpio4: gpio@10010400 {
+			compatible = "ingenic,jz4740-gpio";
+			gpio-controller;
+			reg = <0xb0010400 0x100>;
+			#gpio-cells = <2>;
+		};
+
+		gpio5: gpio@10010500 {
+			compatible = "ingenic,jz4740-gpio";
+			gpio-controller;
+			reg = <0xb0010500 0x100>;
+			#gpio-cells = <2>;
+		};
 	};
 };
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
