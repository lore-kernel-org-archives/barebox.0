Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x22e.google.com ([2607:f8b0:400e:c02::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yojcd-0004j4-Un
 for barebox@lists.infradead.org; Sun, 03 May 2015 02:27:13 +0000
Received: by pdea3 with SMTP id a3so130863400pde.3
 for <barebox@lists.infradead.org>; Sat, 02 May 2015 19:26:51 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  2 May 2015 19:26:18 -0700
Message-Id: <1430619980-26243-7-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
References: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/8] i.MX: serial: Convert i.MX51 and i.MX6 to use
 'setup_uart_ll'
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Two boards -- 'guf-santaro' and 'eltec-hipercam' -- were not
converted to use this function because they enable low-level UART
regardless of the value of CONFIG_DEGUG_LL and so converting them to
'setup_uart_ll' would change the behaviour of the image build with
'imx_v7_defconfig'. Should those boards be converted to respect
CONFIG_DEBUG_LL?

Boards 'karo-tx25' and 'tqma53' could be converted but weren't because
I don't have any i.MX25 or i.MX53 based hardware to test on.


 arch/arm/boards/embest-riotboard/lowlevel.c        | 16 +--------------
 arch/arm/boards/freescale-mx51-babbage/lowlevel.c  | 24 +---------------------
 .../arm/boards/freescale-mx6sx-sabresdb/lowlevel.c | 11 +---------
 arch/arm/boards/karo-tx6x/lowlevel.c               | 11 +---------
 arch/arm/boards/phytec-phycard-imx6/lowlevel.c     | 11 +---------
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c     | 11 +---------
 arch/arm/boards/tqma53/lowlevel.c                  | 16 +--------------
 arch/arm/boards/tqma6x/lowlevel.c                  | 18 ++--------------
 arch/arm/boards/variscite-mx6/lowlevel.c           | 11 +---------
 9 files changed, 10 insertions(+), 119 deletions(-)

diff --git a/arch/arm/boards/embest-riotboard/lowlevel.c b/arch/arm/boards/embest-riotboard/lowlevel.c
index fe21b9a..ccd1a97 100644
--- a/arch/arm/boards/embest-riotboard/lowlevel.c
+++ b/arch/arm/boards/embest-riotboard/lowlevel.c
@@ -10,20 +10,6 @@
 #include <mach/imx6-mmdc.h>
 #include <mach/imx6.h>

-static inline void setup_uart(void)
-{
-	/* Enable UART for lowlevel debugging purposes */
-	writel(0x00000000, 0x021e8080);
-	writel(0x00004027, 0x021e8084);
-	writel(0x00000704, 0x021e8088);
-	writel(0x00000a81, 0x021e8090);
-	writel(0x0000002b, 0x021e809c);
-	writel(0x00013880, 0x021e80b0);
-	writel(0x0000047f, 0x021e80a4);
-	writel(0x0000c34f, 0x021e80a8);
-	writel(0x00000001, 0x021e8080);
-}
-
 extern char __dtb_imx6s_riotboard_start[];

 ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)
@@ -34,7 +20,7 @@ ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)

 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		writel(0x4, 0x020e016c);
-		setup_uart();
+		setup_uart_ll();
 		putc_ll('a');
 	}

diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
index 0135cb4..3bb8614 100644
--- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
+++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
@@ -6,13 +6,8 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>

-#ifdef CONFIG_DEBUG_LL
 static inline void setup_uart(void)
 {
-
-	void __iomem *uartbase =
-	  (void *)IMX_UART_BASE(IMX_DEBUG_SOC,
-				CONFIG_DEBUG_IMX_UART_PORT);
 	void __iomem *iomuxbase = (void *)MX51_IOMUXC_BASE_ADDR;
 	void __iomem *ccmbase = (void *)MX51_CCM_BASE_ADDR;

@@ -36,27 +31,10 @@ static inline void setup_uart(void)
 	writel(0x00000000, iomuxbase + 0x022c);
 	writel(0x000001c5, iomuxbase + 0x061c);

-	writel(0x00000000, uartbase + UCR1);
-
-	writel(UCR2_IRTS | UCR2_WS | UCR2_TXEN | UCR2_RXEN | UCR2_SRST,
-	       uartbase + UCR2);
-	writel(UCR3_DSR | UCR3_DCD | UCR3_RI | UCR3_ADNIMP | UCR3_RXDMUXSEL,
-	       uartbase + UCR3);
-	writel((0b10 << UFCR_TXTL_SHF) | UFCR_RFDIV1 | (1 << UFCR_RXTL_SHF),
-	       uartbase + UFCR);
-
-	writel(baudrate_to_ubir(115200), uartbase + UBIR);
-	writel(refclock_to_ubmr(54000000), uartbase + UBMR);
-
-	writel(UCR1_UARTEN, uartbase + UCR1);
+	setup_uart_ll();

 	putc_ll('>');
 }
-#else
-static inline void setup_uart(void)
-{
-}
-#endif	/* CONFIG_DEBUG_LL */

 extern char __dtb_imx51_babbage_start[];

diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
index 4c5a74e..a8d16cb 100644
--- a/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
@@ -22,7 +22,6 @@
 static inline void setup_uart(void)
 {
 	void __iomem *ccmbase = (void *)MX6_CCM_BASE_ADDR;
-	void __iomem *uartbase = (void *)MX6_UART1_BASE_ADDR;
 	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;

 	writel(0xffffffff, ccmbase + 0x68);
@@ -38,15 +37,7 @@ static inline void setup_uart(void)
 	writel(0x0, iomuxbase + 0x28);
 	writel(0x1b0b1, iomuxbase + 0x0370);

-	writel(0x00000000, uartbase + 0x80);
-	writel(0x00004027, uartbase + 0x84);
-	writel(0x00000784, uartbase + 0x88);
-	writel(0x00000a81, uartbase + 0x90);
-	writel(0x0000002b, uartbase + 0x9c);
-	writel(0x0001b0b0, uartbase + 0xb0);
-	writel(0x0000047f, uartbase + 0xa4);
-	writel(0x0000c34f, uartbase + 0xa8);
-	writel(0x00000001, uartbase + 0x80);
+	setup_uart_ll();

 	putc_ll('>');
 }
diff --git a/arch/arm/boards/karo-tx6x/lowlevel.c b/arch/arm/boards/karo-tx6x/lowlevel.c
index cd4be5e..3f9fb23 100644
--- a/arch/arm/boards/karo-tx6x/lowlevel.c
+++ b/arch/arm/boards/karo-tx6x/lowlevel.c
@@ -23,7 +23,6 @@
 static inline void setup_uart(void)
 {
 	void __iomem *ccmbase = (void *)MX6_CCM_BASE_ADDR;
-	void __iomem *uartbase = (void *)MX6_UART1_BASE_ADDR;
 	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;

 	writel(0x1, iomuxbase + 0x0314);
@@ -39,15 +38,7 @@ static inline void setup_uart(void)
 	writel(0xffffffff, ccmbase + 0x7c);
 	writel(0xffffffff, ccmbase + 0x80);

-	writel(0x00000000, uartbase + 0x80);
-	writel(0x00004027, uartbase + 0x84);
-	writel(0x00000784, uartbase + 0x88);
-	writel(0x00000a81, uartbase + 0x90);
-	writel(0x0000002b, uartbase + 0x9c);
-	writel(0x0001b0b0, uartbase + 0xb0);
-	writel(0x0000047f, uartbase + 0xa4);
-	writel(0x0000c34f, uartbase + 0xa8);
-	writel(0x00000001, uartbase + 0x80);
+	setup_uart_ll();

 	putc_ll('>');
 }
diff --git a/arch/arm/boards/phytec-phycard-imx6/lowlevel.c b/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
index dc10649..1d48818 100644
--- a/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
@@ -27,7 +27,6 @@
 static inline void setup_uart(void)
 {
 	void __iomem *ccmbase = IOMEM(MX6_CCM_BASE_ADDR);
-	void __iomem *uartbase = IOMEM(MX6_UART3_BASE_ADDR);
 	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);

 	writel(0x4, iomuxbase + 0x01f8);
@@ -40,15 +39,7 @@ static inline void setup_uart(void)
 	writel(0xffffffff, ccmbase + 0x7c);
 	writel(0xffffffff, ccmbase + 0x80);

-	writel(0x00000000, uartbase + 0x80);
-	writel(0x00004027, uartbase + 0x84);
-	writel(0x00000704, uartbase + 0x88);
-	writel(0x00000a81, uartbase + 0x90);
-	writel(0x0000002b, uartbase + 0x9c);
-	writel(0x00013880, uartbase + 0xb0);
-	writel(0x0000047f, uartbase + 0xa4);
-	writel(0x0000c34f, uartbase + 0xa8);
-	writel(0x00000001, uartbase + 0x80);
+	setup_uart_ll();

 	putc_ll('>');
 }
diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
index ee6d7fb..367d4dc 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
@@ -28,7 +28,6 @@
 static inline void setup_uart(void)
 {
 	void __iomem *ccmbase = (void *)MX6_CCM_BASE_ADDR;
-	void __iomem *uartbase = (void *)MX6_UART4_BASE_ADDR;
 	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;

 	writel(0x4, iomuxbase + 0x01f8);
@@ -41,15 +40,7 @@ static inline void setup_uart(void)
 	writel(0xffffffff, ccmbase + 0x7c);
 	writel(0xffffffff, ccmbase + 0x80);

-	writel(0x00000000, uartbase + 0x80);
-	writel(0x00004027, uartbase + 0x84);
-	writel(0x00000704, uartbase + 0x88);
-	writel(0x00000a81, uartbase + 0x90);
-	writel(0x0000002b, uartbase + 0x9c);
-	writel(0x00013880, uartbase + 0xb0);
-	writel(0x0000047f, uartbase + 0xa4);
-	writel(0x0000c34f, uartbase + 0xa8);
-	writel(0x00000001, uartbase + 0x80);
+	setup_uart_ll();

 	putc_ll('>');
 }
diff --git a/arch/arm/boards/tqma53/lowlevel.c b/arch/arm/boards/tqma53/lowlevel.c
index 4e129e4..f3eb1ad 100644
--- a/arch/arm/boards/tqma53/lowlevel.c
+++ b/arch/arm/boards/tqma53/lowlevel.c
@@ -10,26 +10,12 @@

 extern char __dtb_imx53_mba53_start[];

-static inline void setup_uart(void __iomem *base)
-{
-	/* Enable UART for lowlevel debugging purposes */
-	writel(0x00000000, base + 0x80);
-	writel(0x00004027, base + 0x84);
-	writel(0x00000704, base + 0x88);
-	writel(0x00000a81, base + 0x90);
-	writel(0x0000002b, base + 0x9c);
-	writel(0x0001046a, base + 0xb0);
-	writel(0x0000047f, base + 0xa4);
-	writel(0x0000a2c1, base + 0xa8);
-	writel(0x00000001, base + 0x80);
-}
-
 static void __noreturn start_imx53_tqma53_common(void *fdt)
 {
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		writel(0x3, MX53_IOMUXC_BASE_ADDR + 0x278);
 		writel(0x3, MX53_IOMUXC_BASE_ADDR + 0x27c);
-		setup_uart((void *)MX53_UART2_BASE_ADDR);
+		setup_uart_ll();
 		putc_ll('>');
 	}

diff --git a/arch/arm/boards/tqma6x/lowlevel.c b/arch/arm/boards/tqma6x/lowlevel.c
index 23f3407..1de60d8 100644
--- a/arch/arm/boards/tqma6x/lowlevel.c
+++ b/arch/arm/boards/tqma6x/lowlevel.c
@@ -24,20 +24,6 @@
 #include <mach/imx6-mmdc.h>
 #include <mach/imx6.h>

-static inline void setup_uart(void)
-{
-	/* Enable UART for lowlevel debugging purposes */
-	writel(0x00000000, 0x021e8080);
-	writel(0x00004027, 0x021e8084);
-	writel(0x00000704, 0x021e8088);
-	writel(0x00000a81, 0x021e8090);
-	writel(0x0000002b, 0x021e809c);
-	writel(0x00013880, 0x021e80b0);
-	writel(0x0000047f, 0x021e80a4);
-	writel(0x0000c34f, 0x021e80a8);
-	writel(0x00000001, 0x021e8080);
-}
-
 extern char __dtb_imx6q_mba6x_start[];
 extern char __dtb_imx6dl_mba6x_start[];

@@ -51,7 +37,7 @@ ENTRY_FUNCTION(start_imx6q_mba6x, r0, r1, r2)

 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		writel(0x2, 0x020e0338);
-		setup_uart();
+		setup_uart_ll();
 		putc_ll('a');
 	}

@@ -72,7 +58,7 @@ ENTRY_FUNCTION(start_imx6dl_mba6x, r0, r1, r2)

 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		writel(0x2, 0x020e035c);
-		setup_uart();
+		setup_uart_ll();
 		putc_ll('a');
 	}

diff --git a/arch/arm/boards/variscite-mx6/lowlevel.c b/arch/arm/boards/variscite-mx6/lowlevel.c
index 22e7eae..b0ab424 100644
--- a/arch/arm/boards/variscite-mx6/lowlevel.c
+++ b/arch/arm/boards/variscite-mx6/lowlevel.c
@@ -29,7 +29,6 @@
 static inline void setup_uart(void)
 {
 	void __iomem *ccmbase = (void *)MX6_CCM_BASE_ADDR;
-	void __iomem *uartbase = (void *)MX6_UART1_BASE_ADDR;
 	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;

 	writel(0x03, iomuxbase + 0x0280);
@@ -43,15 +42,7 @@ static inline void setup_uart(void)
 	writel(0xffffffff, ccmbase + 0x7c);
 	writel(0xffffffff, ccmbase + 0x80);

-	writel(0x00000000, uartbase + 0x80);
-	writel(0x00004027, uartbase + 0x84);
-	writel(0x00000704, uartbase + 0x88);
-	writel(0x00000a81, uartbase + 0x90);
-	writel(0x0000002b, uartbase + 0x9c);
-	writel(0x00013880, uartbase + 0xb0);
-	writel(0x0000047f, uartbase + 0xa4);
-	writel(0x0000c34f, uartbase + 0xa8);
-	writel(0x00000001, uartbase + 0x80);
+	setup_uart_ll();

 	putc_ll('>');
 }
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
