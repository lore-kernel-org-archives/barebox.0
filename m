Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x236.google.com ([2607:f8b0:400e:c02::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yojcf-0004j6-5V
 for barebox@lists.infradead.org; Sun, 03 May 2015 02:27:15 +0000
Received: by pdea3 with SMTP id a3so130863621pde.3
 for <barebox@lists.infradead.org>; Sat, 02 May 2015 19:26:52 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  2 May 2015 19:26:19 -0700
Message-Id: <1430619980-26243-8-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 7/8] i.MX: serial: Distil common clock ungating code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move all of the common clock ungating code in early UART
initialization into a dedicated subroutine that can be shared by all
of the users.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c |  9 +--------
 arch/arm/boards/karo-tx6x/lowlevel.c                | 10 +---------
 arch/arm/boards/phytec-phycard-imx6/lowlevel.c      | 10 +---------
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c      | 10 +---------
 arch/arm/boards/variscite-mx6/lowlevel.c            | 10 +---------
 arch/arm/mach-imx/include/mach/debug_ll.h           | 17 +++++++++++++++++
 6 files changed, 22 insertions(+), 44 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
index a8d16cb..fd154df 100644
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
+	ungate_all_peripherals();

 	writel(0x0, iomuxbase + 0x24);
 	writel(0x1b0b1, iomuxbase + 0x036C);
diff --git a/arch/arm/boards/karo-tx6x/lowlevel.c b/arch/arm/boards/karo-tx6x/lowlevel.c
index 3f9fb23..d7087f5 100644
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
+	ungate_all_peripherals();
 	setup_uart_ll();

 	putc_ll('>');
diff --git a/arch/arm/boards/phytec-phycard-imx6/lowlevel.c b/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
index 1d48818..c8306ec 100644
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
+	ungate_all_peripherals();
 	setup_uart_ll();

 	putc_ll('>');
diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
index 367d4dc..46f788c 100644
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
+	ungate_all_peripherals();
 	setup_uart_ll();

 	putc_ll('>');
diff --git a/arch/arm/boards/variscite-mx6/lowlevel.c b/arch/arm/boards/variscite-mx6/lowlevel.c
index b0ab424..01878e6 100644
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
+	ungate_all_peripherals();
 	setup_uart_ll();

 	putc_ll('>');
diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index 5b0b33b..d831a7d 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -3,6 +3,7 @@

 #include <io.h>
 #include <config.h>
+#include <common.h>
 #include <mach/imx1-regs.h>
 #include <mach/imx21-regs.h>
 #include <mach/imx25-regs.h>
@@ -71,6 +72,18 @@ static inline void setup_uart_ll(void)

 #endif

+#define __IMX_CCM_BASE(soc) soc##_CCM_BASE_ADDR
+#define IMX_CCM_BASE(soc) __IMX_CCM_BASE(soc)
+
+static inline void ungate_all_peripherals(void)
+{
+	int i;
+	void __iomem *ccmbase = IOMEM(IMX_CCM_BASE(IMX_DEBUG_SOC));
+
+	for (i = 0x68; i <= 0x80; i += 4)
+		writel(0xffffffff, ccmbase + i);
+}
+
 static inline void PUTC_LL(int c)
 {
 	void __iomem *base = (void *)IMX_UART_BASE(IMX_DEBUG_SOC,
@@ -90,5 +103,9 @@ static inline void PUTC_LL(int c)
 static inline void setup_uart_ll(void)
 {
 }
+
+static inline void ungate_all_peripherals(void)
+{
+}
 #endif /* CONFIG_DEBUG_LL */
 #endif /* __MACH_DEBUG_LL_H__ */
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
