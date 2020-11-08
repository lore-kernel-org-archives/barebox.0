Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kblGX-0000BD-1q
 for barebox@lists.infradead.org; Sun, 08 Nov 2020 14:01:58 +0000
Received: by mail-qk1-x743.google.com with SMTP id q5so1425705qkc.12
 for <barebox@lists.infradead.org>; Sun, 08 Nov 2020 06:01:56 -0800 (PST)
From: Du Huanpeng <u74147@gmail.com>
Date: Sun,  8 Nov 2020 22:01:39 +0800
Message-Id: <1604844099-27647-4-git-send-email-u74147@gmail.com>
In-Reply-To: <1604844099-27647-1-git-send-email-u74147@gmail.com>
References: <1604844099-27647-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH 3/3] MIPS: ls1b200: use clk driver
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

switch the clock source of serials to clk provider.

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 arch/mips/Kconfig       | 1 +
 arch/mips/dts/ls1b.dtsi | 8 ++++----
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index a56c26a..d2ca779 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -177,6 +177,7 @@ config CPU_LOONGSON1B
 	select CPU_GS232
         select CLKDEV_LOOKUP
         select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
 	help
 	  The Loongson 1B is a 32-bit SoC, which implements the MIPS32
 	  release 2 instruction set.
diff --git a/arch/mips/dts/ls1b.dtsi b/arch/mips/dts/ls1b.dtsi
index 8b772af..3b57093 100644
--- a/arch/mips/dts/ls1b.dtsi
+++ b/arch/mips/dts/ls1b.dtsi
@@ -15,7 +15,7 @@
 			compatible = "ns16550a";
 			reg = <0x1fe40000 0x8>;
 			reg-shift = <0>;
-			clock-frequency = <83000000>;
+			clocks = <&pll LS1B_CLK_APB_DIV>;
 			status = "disabled";
 		};
 
@@ -23,7 +23,7 @@
 			compatible = "ns16550a";
 			reg = <0x1fe44000 0x8>;
 			reg-shift = <0>;
-			clock-frequency = <83000000>;
+			clocks = <&pll LS1B_CLK_APB_DIV>;
 			status = "disabled";
 		};
 
@@ -31,7 +31,7 @@
 			compatible = "ns16550a";
 			reg = <0x1fe48000 0x8>;
 			reg-shift = <0>;
-			clock-frequency = <83000000>;
+			clocks = <&pll LS1B_CLK_APB_DIV>;
 			status = "disabled";
 		};
 
@@ -39,7 +39,7 @@
 			compatible = "ns16550a";
 			reg = <0x1fe4c000 0x8>;
 			reg-shift = <0>;
-			clock-frequency = <83000000>;
+			clocks = <&pll LS1B_CLK_APB_DIV>;
 			status = "disabled";
 		};
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
