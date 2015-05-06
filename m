Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x234.google.com ([2607:f8b0:400e:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yq541-0007q6-T1
 for barebox@lists.infradead.org; Wed, 06 May 2015 19:33:05 +0000
Received: by pabtp1 with SMTP id tp1so17984233pab.2
 for <barebox@lists.infradead.org>; Wed, 06 May 2015 12:32:39 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 May 2015 12:32:01 -0700
Message-Id: <1430940733-4415-7-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1430940733-4415-1-git-send-email-andrew.smirnov@gmail.com>
References: <1430940733-4415-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 06/18] i.MX: serial: Convert i.MX51 and i.MX6 to use
 'imx*_uart_setup_ll'
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

NOTE: Boards 'karo-tx25' and 'tqma53' can benefit from this
refactoring as well, but they were not converted because of the lack
of i.MX25 or i.MX53 based hardware to test on.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/eltec-hipercam/lowlevel.c           | 18 ++++++------------
 arch/arm/boards/embest-riotboard/lowlevel.c         | 16 +---------------
 arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c | 11 +----------
 arch/arm/boards/guf-santaro/lowlevel.c              | 19 ++++++-------------
 arch/arm/boards/karo-tx6x/lowlevel.c                | 11 +----------
 arch/arm/boards/phytec-phycard-imx6/lowlevel.c      | 11 +----------
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c      | 11 +----------
 arch/arm/boards/tqma6x/lowlevel.c                   | 18 ++----------------
 arch/arm/boards/variscite-mx6/lowlevel.c            | 11 +----------
 9 files changed, 20 insertions(+), 106 deletions(-)

diff --git a/arch/arm/boards/eltec-hipercam/lowlevel.c b/arch/arm/boards/eltec-hipercam/lowlevel.c
index 8f11f67..21542e4 100644
--- a/arch/arm/boards/eltec-hipercam/lowlevel.c
+++ b/arch/arm/boards/eltec-hipercam/lowlevel.c
@@ -24,18 +24,10 @@
 
 static void setup_uart(void)
 {
-	void __iomem *uart_base = (void *)0x02020000;
-
 	writel(0x1, 0x020e0330);
-	writel(0x00000000, uart_base + 0x80);
-	writel(0x00004027, uart_base + 0x84);
-	writel(0x00000704, uart_base + 0x88);
-	writel(0x00000a81, uart_base + 0x90);
-	writel(0x0000002b, uart_base + 0x9c);
-	writel(0x00013880, uart_base + 0xb0);
-	writel(0x0000047f, uart_base + 0xa4);
-	writel(0x0000c34f, uart_base + 0xa8);
-	writel(0x00000001, uart_base + 0x80);
+
+	imx6_uart_setup_ll();
+
 	putc_ll('>');
 }
 
@@ -48,7 +40,9 @@ ENTRY_FUNCTION(start_imx6dl_eltec_hipercam, r0, r1, r2)
 	imx6_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00940000 - 8);
-	setup_uart();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
 
 	fdt = __dtb_imx6dl_eltec_hipercam_start - get_runtime_offset();
 
diff --git a/arch/arm/boards/embest-riotboard/lowlevel.c b/arch/arm/boards/embest-riotboard/lowlevel.c
index fe21b9a..59010da 100644
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
+		imx6_uart_setup_ll();
 		putc_ll('a');
 	}
 
diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
index 4c5a74e..5fdd9df 100644
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
+	imx6_uart_setup_ll();
 
 	putc_ll('>');
 }
diff --git a/arch/arm/boards/guf-santaro/lowlevel.c b/arch/arm/boards/guf-santaro/lowlevel.c
index 7753cea..3ccabf4 100644
--- a/arch/arm/boards/guf-santaro/lowlevel.c
+++ b/arch/arm/boards/guf-santaro/lowlevel.c
@@ -9,20 +9,11 @@
 
 static inline void setup_uart(void)
 {
-	void __iomem *uartbase = (void *)MX6_UART2_BASE_ADDR;
 	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
 
 	writel(0x1, iomuxbase + 0x2b0);
 
-	writel(0x00000000, uartbase + 0x80);
-	writel(0x00004027, uartbase + 0x84);
-	writel(0x00000704, uartbase + 0x88);
-	writel(0x00000a81, uartbase + 0x90);
-	writel(0x0000002b, uartbase + 0x9c);
-	writel(0x00013880, uartbase + 0xb0);
-	writel(0x0000047f, uartbase + 0xa4);
-	writel(0x0000c34f, uartbase + 0xa8);
-	writel(0x00000001, uartbase + 0x80);
+	imx6_uart_setup_ll();
 
 	putc_ll('>');
 }
@@ -38,10 +29,12 @@ ENTRY_FUNCTION(start_imx6q_guf_santaro, r0, r1, r2)
 
 	arm_setup_stack(0x00920000 - 8);
 
-	for (i = 0x68; i <= 0x80; i += 4)
-		writel(0xffffffff, MX6_CCM_BASE_ADDR + i);
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		for (i = 0x68; i <= 0x80; i += 4)
+			writel(0xffffffff, MX6_CCM_BASE_ADDR + i);
 
-	setup_uart();
+		setup_uart();
+	}
 
 	fdt = __dtb_imx6q_guf_santaro_start - get_runtime_offset();
 
diff --git a/arch/arm/boards/karo-tx6x/lowlevel.c b/arch/arm/boards/karo-tx6x/lowlevel.c
index cd4be5e..cb9d4c5 100644
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
+	imx6_uart_setup_ll();
 
 	putc_ll('>');
 }
diff --git a/arch/arm/boards/phytec-phycard-imx6/lowlevel.c b/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
index dc10649..1b8dca4 100644
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
+	imx6_uart_setup_ll();
 
 	putc_ll('>');
 }
diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
index ee6d7fb..51a2aa8 100644
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
+	imx6_uart_setup_ll();
 
 	putc_ll('>');
 }
diff --git a/arch/arm/boards/tqma6x/lowlevel.c b/arch/arm/boards/tqma6x/lowlevel.c
index 23f3407..aec84b1 100644
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
+		imx6_uart_setup_ll();
 		putc_ll('a');
 	}
 
@@ -72,7 +58,7 @@ ENTRY_FUNCTION(start_imx6dl_mba6x, r0, r1, r2)
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		writel(0x2, 0x020e035c);
-		setup_uart();
+		imx6_uart_setup_ll();
 		putc_ll('a');
 	}
 
diff --git a/arch/arm/boards/variscite-mx6/lowlevel.c b/arch/arm/boards/variscite-mx6/lowlevel.c
index 22e7eae..7b1b4ab 100644
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
+	imx6_uart_setup_ll();
 
 	putc_ll('>');
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
