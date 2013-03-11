Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp16.mail.ru ([94.100.176.153])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEz0j-0005r9-3M
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 09:27:18 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 11 Mar 2013 13:26:43 +0400
Message-Id: <1362994003-22653-13-git-send-email-shc_work@mail.ru>
In-Reply-To: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
References: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 13/13] serial: clps711x: Migrate to using SYSCON driver
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-clps711x/devices.c |    4 ----
 drivers/serial/serial_clps711x.c |   31 +++++++++++++++++++------------
 2 files changed, 19 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
index b36013f..9eeff5c 100644
--- a/arch/arm/mach-clps711x/devices.c
+++ b/arch/arm/mach-clps711x/devices.c
@@ -52,15 +52,11 @@ void clps711x_setup_memcfg(int bank, u32 val)
 
 static struct resource uart0_resources[] = {
 	DEFINE_RES_MEM(UBRLCR1, SZ_4),
-	DEFINE_RES_MEM(SYSCON1, SZ_4),
-	DEFINE_RES_MEM(SYSFLG1, SZ_4),
 	DEFINE_RES_MEM(UARTDR1, SZ_4),
 };
 
 static struct resource uart1_resources[] = {
 	DEFINE_RES_MEM(UBRLCR2, SZ_4),
-	DEFINE_RES_MEM(SYSCON2, SZ_4),
-	DEFINE_RES_MEM(SYSFLG2, SZ_4),
 	DEFINE_RES_MEM(UARTDR2, SZ_4),
 };
 
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index 21d0b55..cb250be 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -15,18 +15,21 @@
 #include <io.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <mfd/syscon.h>
 
 #include <mach/clps711x.h>
 
 struct clps711x_uart {
 	void __iomem		*UBRLCR;
-	void __iomem		*SYSCON;
-	void __iomem		*SYSFLG;
 	void __iomem		*UARTDR;
+	void __iomem		*syscon;
 	struct clk		*uart_clk;
 	struct console_device	cdev;
 };
 
+#define SYSCON(x)	((x)->syscon + 0x00)
+#define SYSFLG(x)	((x)->syscon + 0x40)
+
 static int clps711x_setbaudrate(struct console_device *cdev, int baudrate)
 {
 	struct clps711x_uart *s = cdev->dev->priv;
@@ -48,7 +51,7 @@ static void clps711x_init_port(struct console_device *cdev)
 	u32 tmp;
 
 	/* Disable the UART */
-	writel(readl(s->SYSCON) & ~SYSCON_UARTEN, s->SYSCON);
+	writel(readl(SYSCON(s)) & ~SYSCON_UARTEN, SYSCON(s));
 
 	/* Setup Line Control Register */
 	tmp = readl(s->UBRLCR) & UBRLCR_BAUD_MASK;
@@ -59,7 +62,7 @@ static void clps711x_init_port(struct console_device *cdev)
 	clps711x_setbaudrate(cdev, CONFIG_BAUDRATE);
 
 	/* Enable the UART */
-	writel(readl(s->SYSCON) | SYSCON_UARTEN, s->SYSCON);
+	writel(readl(SYSCON(s)) | SYSCON_UARTEN, SYSCON(s));
 }
 
 static void clps711x_putc(struct console_device *cdev, char c)
@@ -67,7 +70,7 @@ static void clps711x_putc(struct console_device *cdev, char c)
 	struct clps711x_uart *s = cdev->dev->priv;
 
 	/* Wait until there is space in the FIFO */
-	while (readl(s->SYSFLG) & SYSFLG_UTXFF)
+	while (readl(SYSFLG(s)) & SYSFLG_UTXFF)
 		barrier();
 
 	/* Send the character */
@@ -80,7 +83,7 @@ static int clps711x_getc(struct console_device *cdev)
 	u16 data;
 
 	/* Wait until there is data in the FIFO */
-	while (readl(s->SYSFLG) & SYSFLG_URXFE)
+	while (readl(SYSFLG(s)) & SYSFLG_URXFE)
 		barrier();
 
 	data = readw(s->UARTDR);
@@ -96,31 +99,35 @@ static int clps711x_tstc(struct console_device *cdev)
 {
 	struct clps711x_uart *s = cdev->dev->priv;
 
-	return !(readl(s->SYSFLG) & SYSFLG_URXFE);
+	return !(readl(SYSFLG(s)) & SYSFLG_URXFE);
 }
 
 static void clps711x_flush(struct console_device *cdev)
 {
 	struct clps711x_uart *s = cdev->dev->priv;
 
-	while (readl(s->SYSFLG) & SYSFLG_UBUSY)
+	while (readl(SYSFLG(s)) & SYSFLG_UBUSY)
 		barrier();
 }
 
 static int clps711x_probe(struct device_d *dev)
 {
 	struct clps711x_uart *s;
+	char syscon_dev[18];
 
-	BUG_ON(dev->num_resources != 4);
+	BUG_ON(dev->num_resources != 2);
+	BUG_ON((dev->id != 0) && (dev->id != 1));
 
 	s = xzalloc(sizeof(struct clps711x_uart));
 	s->uart_clk = clk_get(dev, NULL);
 	BUG_ON(IS_ERR(s->uart_clk));
 
 	s->UBRLCR = dev_get_mem_region(dev, 0);
-	s->SYSCON = dev_get_mem_region(dev, 1);
-	s->SYSFLG = dev_get_mem_region(dev, 2);
-	s->UARTDR = dev_get_mem_region(dev, 3);
+	s->UARTDR = dev_get_mem_region(dev, 1);
+
+	sprintf(syscon_dev, "clps711x-syscon%i", dev->id + 1);
+	s->syscon = syscon_base_lookup_by_pdevname(syscon_dev);
+	BUG_ON(IS_ERR(s->syscon));
 
 	dev->priv	= s;
 	s->cdev.dev	= dev;
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
