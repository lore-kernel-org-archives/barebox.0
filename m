Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x229.google.com ([2607:f8b0:400e:c02::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yq543-0007q9-0d
 for barebox@lists.infradead.org; Wed, 06 May 2015 19:33:09 +0000
Received: by pdbnk13 with SMTP id nk13so18662041pdb.0
 for <barebox@lists.infradead.org>; Wed, 06 May 2015 12:32:40 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 May 2015 12:32:03 -0700
Message-Id: <1430940733-4415-9-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 08/18] i.MX: serial: Distil common clock ungating code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move all of the common clock ungating code in early UART
initialization into a dedicated subroutine that can be shared by all
of the users.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../arm/boards/freescale-mx6sx-sabresdb/lowlevel.c |  9 +--------
 arch/arm/boards/guf-santaro/lowlevel.c             |  7 ++-----
 arch/arm/boards/karo-tx6x/lowlevel.c               | 10 +---------
 arch/arm/boards/phytec-phycard-imx6/lowlevel.c     | 10 +---------
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c     | 10 +---------
 arch/arm/boards/variscite-mx6/lowlevel.c           | 10 +---------
 arch/arm/mach-imx/include/mach/debug_ll.h          | 22 ++++++++++++++++++++++
 7 files changed, 29 insertions(+), 49 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
index 5fdd9df..af26557 100644
--- a/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
@@ -21,16 +21,9 @@
 
 static inline void setup_uart(void)
 {
-	void __iomem *ccmbase = (void *)MX6_CCM_BASE_ADDR;
 	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
 
-	writel(0xffffffff, ccmbase + 0x68);
-	writel(0xffffffff, ccmbase + 0x6c);
-	writel(0xffffffff, ccmbase + 0x70);
-	writel(0xffffffff, ccmbase + 0x74);
-	writel(0xffffffff, ccmbase + 0x78);
-	writel(0xffffffff, ccmbase + 0x7c);
-	writel(0xffffffff, ccmbase + 0x80);
+	imx6_ungate_all_peripherals();
 
 	writel(0x0, iomuxbase + 0x24);
 	writel(0x1b0b1, iomuxbase + 0x036C);
diff --git a/arch/arm/boards/guf-santaro/lowlevel.c b/arch/arm/boards/guf-santaro/lowlevel.c
index 3ccabf4..d57502b 100644
--- a/arch/arm/boards/guf-santaro/lowlevel.c
+++ b/arch/arm/boards/guf-santaro/lowlevel.c
@@ -13,6 +13,7 @@ static inline void setup_uart(void)
 
 	writel(0x1, iomuxbase + 0x2b0);
 
+	imx6_ungate_all_peripherals();
 	imx6_uart_setup_ll();
 
 	putc_ll('>');
@@ -29,12 +30,8 @@ ENTRY_FUNCTION(start_imx6q_guf_santaro, r0, r1, r2)
 
 	arm_setup_stack(0x00920000 - 8);
 
-	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
-		for (i = 0x68; i <= 0x80; i += 4)
-			writel(0xffffffff, MX6_CCM_BASE_ADDR + i);
-
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
-	}
 
 	fdt = __dtb_imx6q_guf_santaro_start - get_runtime_offset();
 
diff --git a/arch/arm/boards/karo-tx6x/lowlevel.c b/arch/arm/boards/karo-tx6x/lowlevel.c
index cb9d4c5..1e44b1b 100644
--- a/arch/arm/boards/karo-tx6x/lowlevel.c
+++ b/arch/arm/boards/karo-tx6x/lowlevel.c
@@ -22,7 +22,6 @@
 
 static inline void setup_uart(void)
 {
-	void __iomem *ccmbase = (void *)MX6_CCM_BASE_ADDR;
 	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
 
 	writel(0x1, iomuxbase + 0x0314);
@@ -30,14 +29,7 @@ static inline void setup_uart(void)
 	writel(0x1, iomuxbase + 0x0330);
 	writel(0x1, iomuxbase + 0x032c);
 
-	writel(0xffffffff, ccmbase + 0x68);
-	writel(0xffffffff, ccmbase + 0x6c);
-	writel(0xffffffff, ccmbase + 0x70);
-	writel(0xffffffff, ccmbase + 0x74);
-	writel(0xffffffff, ccmbase + 0x78);
-	writel(0xffffffff, ccmbase + 0x7c);
-	writel(0xffffffff, ccmbase + 0x80);
-
+	imx6_ungate_all_peripherals();
 	imx6_uart_setup_ll();
 
 	putc_ll('>');
diff --git a/arch/arm/boards/phytec-phycard-imx6/lowlevel.c b/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
index 1b8dca4..d85a1ab 100644
--- a/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
@@ -26,19 +26,11 @@
 
 static inline void setup_uart(void)
 {
-	void __iomem *ccmbase = IOMEM(MX6_CCM_BASE_ADDR);
 	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
 
 	writel(0x4, iomuxbase + 0x01f8);
 
-	writel(0xffffffff, ccmbase + 0x68);
-	writel(0xffffffff, ccmbase + 0x6c);
-	writel(0xffffffff, ccmbase + 0x70);
-	writel(0xffffffff, ccmbase + 0x74);
-	writel(0xffffffff, ccmbase + 0x78);
-	writel(0xffffffff, ccmbase + 0x7c);
-	writel(0xffffffff, ccmbase + 0x80);
-
+	imx6_ungate_all_peripherals();
 	imx6_uart_setup_ll();
 
 	putc_ll('>');
diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
index 51a2aa8..cd37f88 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
@@ -27,19 +27,11 @@
 
 static inline void setup_uart(void)
 {
-	void __iomem *ccmbase = (void *)MX6_CCM_BASE_ADDR;
 	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
 
 	writel(0x4, iomuxbase + 0x01f8);
 
-	writel(0xffffffff, ccmbase + 0x68);
-	writel(0xffffffff, ccmbase + 0x6c);
-	writel(0xffffffff, ccmbase + 0x70);
-	writel(0xffffffff, ccmbase + 0x74);
-	writel(0xffffffff, ccmbase + 0x78);
-	writel(0xffffffff, ccmbase + 0x7c);
-	writel(0xffffffff, ccmbase + 0x80);
-
+	imx6_ungate_all_peripherals();
 	imx6_uart_setup_ll();
 
 	putc_ll('>');
diff --git a/arch/arm/boards/variscite-mx6/lowlevel.c b/arch/arm/boards/variscite-mx6/lowlevel.c
index 7b1b4ab..b0b930d 100644
--- a/arch/arm/boards/variscite-mx6/lowlevel.c
+++ b/arch/arm/boards/variscite-mx6/lowlevel.c
@@ -28,20 +28,12 @@
 
 static inline void setup_uart(void)
 {
-	void __iomem *ccmbase = (void *)MX6_CCM_BASE_ADDR;
 	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
 
 	writel(0x03, iomuxbase + 0x0280);
 	writel(0x03, iomuxbase + 0x0284);
 
-	writel(0xffffffff, ccmbase + 0x68);
-	writel(0xffffffff, ccmbase + 0x6c);
-	writel(0xffffffff, ccmbase + 0x70);
-	writel(0xffffffff, ccmbase + 0x74);
-	writel(0xffffffff, ccmbase + 0x78);
-	writel(0xffffffff, ccmbase + 0x7c);
-	writel(0xffffffff, ccmbase + 0x80);
-
+	imx6_ungate_all_peripherals();
 	imx6_uart_setup_ll();
 
 	putc_ll('>');
diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index b9d1796..8eb59f6 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -84,6 +84,21 @@ static inline void imx6_uart_setup_ll(void)
 #endif
 }
 
+#define __IMX_CCM_BASE(soc) soc##_CCM_BASE_ADDR
+#define IMX_CCM_BASE(soc) __IMX_CCM_BASE(soc)
+
+static inline void imx_ungate_all_peripherals(void __iomem *ccmbase)
+{
+	int i;
+	for (i = 0x68; i <= 0x80; i += 4)
+		writel(0xffffffff, ccmbase + i);
+}
+
+static inline void imx6_ungate_all_peripherals(void)
+{
+	imx_ungate_all_peripherals(IOMEM(MX6_CCM_BASE_ADDR));
+}
+
 static inline void PUTC_LL(int c)
 {
 	void __iomem *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC,
@@ -105,8 +120,15 @@ static inline void imx_uart_setup_ll(void __iomem *uartbase,
 				     unsigned int refclock)
 {
 }
+
 static inline void imx51_uart_setup_ll(void) {}
 static inline void imx6_uart_setup_ll(void)  {}
 
+static inline void imx_ungate_all_peripherals(void __iomem *ccmbase)
+{
+}
+
+static inline void imx6_ungate_all_peripherals(void) {}
+
 #endif /* CONFIG_DEBUG_LL */
 #endif /* __MACH_DEBUG_LL_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
