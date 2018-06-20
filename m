Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVRpP-0001Tn-6C
 for barebox@lists.infradead.org; Wed, 20 Jun 2018 01:22:32 +0000
Received: by mail-pg0-x242.google.com with SMTP id w8-v6so672879pgp.7
 for <barebox@lists.infradead.org>; Tue, 19 Jun 2018 18:22:20 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Jun 2018 18:21:54 -0700
Message-Id: <20180620012154.21183-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: i.MX: rdu2: Make use of imx_setup_pad()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

While at it, also remove pinux configuration for RX pin (completely
unused) and fix strange setup_uart()'s indentation.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
index 6b9c719c6..a5ac6f64c 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
@@ -19,6 +19,7 @@
 #include <mach/generic.h>
 #include <mach/imx6.h>
 #include <mach/xload.h>
+#include <mach/iomux-mx6.h>
 #include <asm/barebox-arm.h>
 
 struct reginit {
@@ -255,12 +256,7 @@ static inline void setup_uart(void)
 {
 	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
 
-	writel(0x1b0b1, iomuxbase + 0x0650);
-	writel(3, iomuxbase + 0x0280);
-
-	writel(0x1b0b1, iomuxbase + 0x0654);
-	writel(3, iomuxbase + 0x0284);
-	writel(1, iomuxbase + 0x0920);
+	imx_setup_pad(iomuxbase, MX6Q_PAD_CSI0_DAT10__UART1_TXD);
 
 	imx6_uart_setup_ll();
 
@@ -278,7 +274,7 @@ static noinline void rdu2_sram_setup(void)
 	imx6_ungate_all_peripherals();
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
-			setup_uart();
+		setup_uart();
 
 	arm_setup_stack(0x00920000 - 8);
 	relocate_to_current_adr();
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
