Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK5XI-0004iT-Rw
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 10:53:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 12:53:33 +0200
Message-Id: <1349434416-4231-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349434416-4231-1-git-send-email-s.hauer@pengutronix.de>
References: <1349434416-4231-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/8] ARM i.MX iomux-v1: Add separate header file
To: barebox@lists.infradead.org

- Add a separate header file for the iomux-v1 just like done for
  iomux-v3.
- initialize iomux from SoC code so that we do not depend on IMX_GPIO_BASE
  anymore.
- define registers as offset to the base rather than absolute addresses

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx1.c                    |    3 +
 arch/arm/mach-imx/imx21.c                   |    3 +
 arch/arm/mach-imx/imx27.c                   |    3 +
 arch/arm/mach-imx/include/mach/imx-regs.h   |   42 ---------
 arch/arm/mach-imx/include/mach/iomux-mx21.h |    1 +
 arch/arm/mach-imx/include/mach/iomux-mx27.h |    1 +
 arch/arm/mach-imx/include/mach/iomux-v1.h   |   48 +++++++++++
 arch/arm/mach-imx/iomux-v1.c                |  123 +++++++++++++++++----------
 8 files changed, 135 insertions(+), 89 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-v1.h

diff --git a/arch/arm/mach-imx/imx1.c b/arch/arm/mach-imx/imx1.c
index 790e453..747ec09 100644
--- a/arch/arm/mach-imx/imx1.c
+++ b/arch/arm/mach-imx/imx1.c
@@ -16,6 +16,7 @@
 #include <io.h>
 #include <mach/imx-regs.h>
 #include <mach/weim.h>
+#include <mach/iomux-v1.h>
 
 void imx1_setup_eimcs(size_t cs, unsigned upper, unsigned lower)
 {
@@ -25,6 +26,8 @@ void imx1_setup_eimcs(size_t cs, unsigned upper, unsigned lower)
 
 static int imx1_init(void)
 {
+	imx_iomuxv1_init((void *)MX1_GPIO1_BASE_ADDR);
+
 	add_generic_device("imx1-ccm", 0, NULL, MX1_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpt", 0, NULL, MX1_TIM1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 0, NULL, MX1_GPIO1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx21.c b/arch/arm/mach-imx/imx21.c
index 58895da..55216dc 100644
--- a/arch/arm/mach-imx/imx21.c
+++ b/arch/arm/mach-imx/imx21.c
@@ -16,6 +16,7 @@
 #include <io.h>
 #include <mach/imx-regs.h>
 #include <mach/weim.h>
+#include <mach/iomux-v1.h>
 
 void imx21_setup_eimcs(size_t cs, unsigned upper, unsigned lower)
 {
@@ -25,6 +26,8 @@ void imx21_setup_eimcs(size_t cs, unsigned upper, unsigned lower)
 
 static int imx21_init(void)
 {
+	imx_iomuxv1_init((void *)MX21_GPIO1_BASE_ADDR);
+
 	add_generic_device("imx21-ccm", 0, NULL, MX21_CCM_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpt", 0, NULL, MX21_GPT1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx-gpio", 0, NULL, MX21_GPIO1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index 3d7b21d..d1aa213 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -14,6 +14,7 @@
 #include <common.h>
 #include <mach/imx27-regs.h>
 #include <mach/weim.h>
+#include <mach/iomux-v1.h>
 #include <sizes.h>
 #include <mach/revision.h>
 #include <init.h>
@@ -98,6 +99,8 @@ static int imx27_init(void)
 {
 	imx27_silicon_revision();
 
+	imx_iomuxv1_init((void *)MX27_GPIO1_BASE_ADDR);
+
 	add_generic_device("imx_iim", 0, NULL, MX27_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
diff --git a/arch/arm/mach-imx/include/mach/imx-regs.h b/arch/arm/mach-imx/include/mach/imx-regs.h
index 08ee957..4acee24 100644
--- a/arch/arm/mach-imx/include/mach/imx-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx-regs.h
@@ -61,46 +61,4 @@
 /* range e.g. GPIO_1_5 is gpio 5 under linux */
 #define IMX_GPIO_NR(bank, nr)		(((bank) - 1) * 32 + (nr))
 
-#define GPIO_PIN_MASK 0x1f
-
-#define GPIO_PORT_SHIFT 5
-#define GPIO_PORT_MASK (0x7 << GPIO_PORT_SHIFT)
-
-#define GPIO_PORTA (0 << GPIO_PORT_SHIFT)
-#define GPIO_PORTB (1 << GPIO_PORT_SHIFT)
-#define GPIO_PORTC (2 << GPIO_PORT_SHIFT)
-#define GPIO_PORTD (3 << GPIO_PORT_SHIFT)
-#define GPIO_PORTE (4 << GPIO_PORT_SHIFT)
-#define GPIO_PORTF (5 << GPIO_PORT_SHIFT)
-
-#define GPIO_OUT   (1 << 8)
-#define GPIO_IN    (0 << 8)
-#define GPIO_PUEN  (1 << 9)
-
-#define GPIO_PF    (1 << 10)
-#define GPIO_AF    (1 << 11)
-
-#define GPIO_OCR_SHIFT 12
-#define GPIO_OCR_MASK (3 << GPIO_OCR_SHIFT)
-#define GPIO_AIN   (0 << GPIO_OCR_SHIFT)
-#define GPIO_BIN   (1 << GPIO_OCR_SHIFT)
-#define GPIO_CIN   (2 << GPIO_OCR_SHIFT)
-#define GPIO_GPIO  (3 << GPIO_OCR_SHIFT)
-
-#define GPIO_AOUT_SHIFT 14
-#define GPIO_AOUT_MASK (3 << GPIO_AOUT_SHIFT)
-#define GPIO_AOUT     (0 << GPIO_AOUT_SHIFT)
-#define GPIO_AOUT_ISR (1 << GPIO_AOUT_SHIFT)
-#define GPIO_AOUT_0   (2 << GPIO_AOUT_SHIFT)
-#define GPIO_AOUT_1   (3 << GPIO_AOUT_SHIFT)
-
-#define GPIO_BOUT_SHIFT 16
-#define GPIO_BOUT_MASK (3 << GPIO_BOUT_SHIFT)
-#define GPIO_BOUT      (0 << GPIO_BOUT_SHIFT)
-#define GPIO_BOUT_ISR  (1 << GPIO_BOUT_SHIFT)
-#define GPIO_BOUT_0    (2 << GPIO_BOUT_SHIFT)
-#define GPIO_BOUT_1    (3 << GPIO_BOUT_SHIFT)
-
-#define GPIO_GIUS      (1<<16)
-
 #endif				/* _IMX_REGS_H */
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx21.h b/arch/arm/mach-imx/include/mach/iomux-mx21.h
index 482c4f2..203190d 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx21.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx21.h
@@ -13,6 +13,7 @@
 #ifndef __MACH_IOMUX_MX21_H__
 #define __MACH_IOMUX_MX21_H__
 
+#include <mach/iomux-v1.h>
 #include <mach/iomux-mx2x.h>
 
 /* Primary GPIO pin functions */
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx27.h b/arch/arm/mach-imx/include/mach/iomux-mx27.h
index ff9d657..7d24967 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx27.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx27.h
@@ -15,6 +15,7 @@
 #ifndef __MACH_IOMUX_MX27_H__
 #define __MACH_IOMUX_MX27_H__
 
+#include <mach/iomux-v1.h>
 #include <mach/iomux-mx2x.h>
 
 /* Primary GPIO pin functions */
diff --git a/arch/arm/mach-imx/include/mach/iomux-v1.h b/arch/arm/mach-imx/include/mach/iomux-v1.h
new file mode 100644
index 0000000..55fbcdb
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/iomux-v1.h
@@ -0,0 +1,48 @@
+#ifndef __MACH_IOMUX_V1_H__
+#define __MACH_IOMUX_V1_H__
+
+#define GPIO_PIN_MASK 0x1f
+
+#define GPIO_PORT_SHIFT 5
+#define GPIO_PORT_MASK (0x7 << GPIO_PORT_SHIFT)
+
+#define GPIO_PORTA (0 << GPIO_PORT_SHIFT)
+#define GPIO_PORTB (1 << GPIO_PORT_SHIFT)
+#define GPIO_PORTC (2 << GPIO_PORT_SHIFT)
+#define GPIO_PORTD (3 << GPIO_PORT_SHIFT)
+#define GPIO_PORTE (4 << GPIO_PORT_SHIFT)
+#define GPIO_PORTF (5 << GPIO_PORT_SHIFT)
+
+#define GPIO_OUT   (1 << 8)
+#define GPIO_IN    (0 << 8)
+#define GPIO_PUEN  (1 << 9)
+
+#define GPIO_PF    (1 << 10)
+#define GPIO_AF    (1 << 11)
+
+#define GPIO_OCR_SHIFT 12
+#define GPIO_OCR_MASK (3 << GPIO_OCR_SHIFT)
+#define GPIO_AIN   (0 << GPIO_OCR_SHIFT)
+#define GPIO_BIN   (1 << GPIO_OCR_SHIFT)
+#define GPIO_CIN   (2 << GPIO_OCR_SHIFT)
+#define GPIO_GPIO  (3 << GPIO_OCR_SHIFT)
+
+#define GPIO_AOUT_SHIFT 14
+#define GPIO_AOUT_MASK (3 << GPIO_AOUT_SHIFT)
+#define GPIO_AOUT     (0 << GPIO_AOUT_SHIFT)
+#define GPIO_AOUT_ISR (1 << GPIO_AOUT_SHIFT)
+#define GPIO_AOUT_0   (2 << GPIO_AOUT_SHIFT)
+#define GPIO_AOUT_1   (3 << GPIO_AOUT_SHIFT)
+
+#define GPIO_BOUT_SHIFT 16
+#define GPIO_BOUT_MASK (3 << GPIO_BOUT_SHIFT)
+#define GPIO_BOUT      (0 << GPIO_BOUT_SHIFT)
+#define GPIO_BOUT_ISR  (1 << GPIO_BOUT_SHIFT)
+#define GPIO_BOUT_0    (2 << GPIO_BOUT_SHIFT)
+#define GPIO_BOUT_1    (3 << GPIO_BOUT_SHIFT)
+
+#define GPIO_GIUS      (1 << 16)
+
+void imx_iomuxv1_init(void __iomem *base);
+
+#endif /* __MACH_IOMUX_V1_H__ */
diff --git a/arch/arm/mach-imx/iomux-v1.c b/arch/arm/mach-imx/iomux-v1.c
index f2dfdb3..f8f9061 100644
--- a/arch/arm/mach-imx/iomux-v1.c
+++ b/arch/arm/mach-imx/iomux-v1.c
@@ -1,5 +1,6 @@
 #include <common.h>
-#include <mach/imx-regs.h>
+#include <io.h>
+#include <mach/iomux-v1.h>
 
 /*
  *  GPIO Module and I/O Multiplexer
@@ -8,23 +9,25 @@
  *  i.MX1 and i.MXL: 0 <= x <= 3
  *  i.MX27         : 0 <= x <= 5
  */
-#define DDIR(x)    __REG2(IMX_GPIO_BASE + 0x00, ((x) & 7) << 8)
-#define OCR1(x)    __REG2(IMX_GPIO_BASE + 0x04, ((x) & 7) << 8)
-#define OCR2(x)    __REG2(IMX_GPIO_BASE + 0x08, ((x) & 7) << 8)
-#define ICONFA1(x) __REG2(IMX_GPIO_BASE + 0x0c, ((x) & 7) << 8)
-#define ICONFA2(x) __REG2(IMX_GPIO_BASE + 0x10, ((x) & 7) << 8)
-#define ICONFB1(x) __REG2(IMX_GPIO_BASE + 0x14, ((x) & 7) << 8)
-#define ICONFB2(x) __REG2(IMX_GPIO_BASE + 0x18, ((x) & 7) << 8)
-#define DR(x)      __REG2(IMX_GPIO_BASE + 0x1c, ((x) & 7) << 8)
-#define GIUS(x)    __REG2(IMX_GPIO_BASE + 0x20, ((x) & 7) << 8)
-#define SSR(x)     __REG2(IMX_GPIO_BASE + 0x24, ((x) & 7) << 8)
-#define ICR1(x)    __REG2(IMX_GPIO_BASE + 0x28, ((x) & 7) << 8)
-#define ICR2(x)    __REG2(IMX_GPIO_BASE + 0x2c, ((x) & 7) << 8)
-#define IMR(x)     __REG2(IMX_GPIO_BASE + 0x30, ((x) & 7) << 8)
-#define ISR(x)     __REG2(IMX_GPIO_BASE + 0x34, ((x) & 7) << 8)
-#define GPR(x)     __REG2(IMX_GPIO_BASE + 0x38, ((x) & 7) << 8)
-#define SWR(x)     __REG2(IMX_GPIO_BASE + 0x3c, ((x) & 7) << 8)
-#define PUEN(x)    __REG2(IMX_GPIO_BASE + 0x40, ((x) & 7) << 8)
+#define DDIR    0x00
+#define OCR1    0x04
+#define OCR2    0x08
+#define ICONFA1 0x0c
+#define ICONFA2 0x10
+#define ICONFB1 0x14
+#define ICONFB2 0x18
+#define DR      0x1c
+#define GIUS    0x20
+#define SSR     0x24
+#define ICR1    0x28
+#define ICR2    0x2c
+#define IMR     0x30
+#define ISR     0x34
+#define GPR     0x38
+#define SWR     0x3c
+#define PUEN    0x40
+
+static void __iomem *iomuxv1_base;
 
 void imx_gpio_mode(int gpio_mode)
 {
@@ -33,55 +36,81 @@ void imx_gpio_mode(int gpio_mode)
 	unsigned int ocr = (gpio_mode & GPIO_OCR_MASK) >> GPIO_OCR_SHIFT;
 	unsigned int aout = (gpio_mode & GPIO_AOUT_MASK) >> GPIO_AOUT_SHIFT;
 	unsigned int bout = (gpio_mode & GPIO_BOUT_MASK) >> GPIO_BOUT_SHIFT;
-	unsigned int tmp;
+	void __iomem *portbase = iomuxv1_base + port * 0x100;
+	uint32_t val;
+
+	if (!iomuxv1_base)
+		return;
 
 	/* Pullup enable */
-	if(gpio_mode & GPIO_PUEN)
-		PUEN(port) |= (1 << pin);
+	val = readl(portbase + PUEN);
+	if (gpio_mode & GPIO_PUEN)
+		val |= (1 << pin);
 	else
-		PUEN(port) &= ~(1 << pin);
+		val &= ~(1 << pin);
+	writel(val, portbase + PUEN);
 
 	/* Data direction */
-	if(gpio_mode & GPIO_OUT)
-		DDIR(port) |= 1 << pin;
+	val = readl(portbase + DDIR);
+	if (gpio_mode & GPIO_OUT)
+		val |= 1 << pin;
 	else
-		DDIR(port) &= ~(1 << pin);
+		val &= ~(1 << pin);
+	writel(val, portbase + DDIR);
 
 	/* Primary / alternate function */
-	if(gpio_mode & GPIO_AF)
-		GPR(port) |= (1 << pin);
+	val = readl(portbase + GPR);
+	if (gpio_mode & GPIO_AF)
+		val |= (1 << pin);
 	else
-		GPR(port) &= ~(1 << pin);
+		val &= ~(1 << pin);
+	writel(val, portbase + GPR);
 
 	/* use as gpio? */
-	if(!(gpio_mode & (GPIO_PF | GPIO_AF)))
-		GIUS(port) |= (1 << pin);
+	val = readl(portbase + GIUS);
+	if (!(gpio_mode & (GPIO_PF | GPIO_AF)))
+		val |= (1 << pin);
 	else
-		GIUS(port) &= ~(1 << pin);
+		val &= ~(1 << pin);
+	writel(val, portbase + GIUS);
 
 	/* Output / input configuration */
 	if (pin < 16) {
-		tmp = OCR1(port);
-		tmp &= ~(3 << (pin * 2));
-		tmp |= (ocr << (pin * 2));
-		OCR1(port) = tmp;
+		val = readl(portbase + OCR1);
+		val &= ~(3 << (pin * 2));
+		val |= (ocr << (pin * 2));
+		writel(val, portbase + OCR1);
+
+		val = readl(portbase + ICONFA1);
+		val &= ~(3 << (pin * 2));
+		val |= aout << (pin * 2);
+		writel(val, portbase + ICONFA1);
 
-		ICONFA1(port) &= ~(3 << (pin * 2));
-		ICONFA1(port) |= aout << (pin * 2);
-		ICONFB1(port) &= ~(3 << (pin * 2));
-		ICONFB1(port) |= bout << (pin * 2);
+		val = readl(portbase + ICONFB1);
+		val &= ~(3 << (pin * 2));
+		val |= bout << (pin * 2);
+		writel(val, portbase + ICONFB1);
 	} else {
 		pin -= 16;
 
-		tmp = OCR2(port);
-		tmp &= ~(3 << (pin * 2));
-		tmp |= (ocr << (pin * 2));
-		OCR2(port) = tmp;
+		val = readl(portbase + OCR2);
+		val &= ~(3 << (pin * 2));
+		val |= (ocr << (pin * 2));
+		writel(val, portbase + OCR2);
 
-		ICONFA2(port) &= ~(3 << (pin * 2));
-		ICONFA2(port) |= aout << (pin * 2);
-		ICONFB2(port) &= ~(3 << (pin * 2));
-		ICONFB2(port) |= bout << (pin * 2);
+		val = readl(portbase + ICONFA2);
+		val &= ~(3 << (pin * 2));
+		val |= aout << (pin * 2);
+		writel(val, portbase + ICONFA2);
+
+		val = readl(portbase + ICONFB2);
+		val &= ~(3 << (pin * 2));
+		val |= bout << (pin * 2);
+		writel(val, portbase + ICONFB2);
 	}
 }
 
+void imx_iomuxv1_init(void __iomem *base)
+{
+	iomuxv1_base = base;
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
