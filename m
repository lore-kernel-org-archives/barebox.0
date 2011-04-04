Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jbb-0002C2-QU
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:14:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:13:55 +0200
Message-Id: <1301922843-12118-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301922843-12118-1-git-send-email-s.hauer@pengutronix.de>
References: <1301922843-12118-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] ARM omap: move uart access functions to a more generic
	place
To: barebox@lists.infradead.org

These functions can be used on omap4 aswell, so move them to
omap.c

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Makefile        |    1 +
 arch/arm/mach-omap/omap-uart.c     |   36 ++++++++++++++++++++++++++++++++++++
 arch/arm/mach-omap/omap3_generic.c |   34 ----------------------------------
 3 files changed, 37 insertions(+), 34 deletions(-)
 create mode 100644 arch/arm/mach-omap/omap-uart.c

diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 57bab99..fe2d626 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -25,3 +25,4 @@ obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o
 obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock_core.o omap3_clock.o
 obj-$(CONFIG_GPMC) += gpmc.o
 obj-$(CONFIG_GPIO) += gpio.o
+obj-y += omap-uart.o
diff --git a/arch/arm/mach-omap/omap-uart.c b/arch/arm/mach-omap/omap-uart.c
new file mode 100644
index 0000000..477452d
--- /dev/null
+++ b/arch/arm/mach-omap/omap-uart.c
@@ -0,0 +1,36 @@
+#include <common.h>
+#include <asm/io.h>
+
+/**
+ * @brief Uart port register read function for OMAP3
+ *
+ * @param base base address of UART
+ * @param reg_idx register index
+ *
+ * @return character read from register
+ */
+unsigned int omap_uart_read(unsigned long base, unsigned char reg_idx)
+{
+	unsigned int *reg_addr = (unsigned int *)base;
+	reg_addr += reg_idx;
+	return readb(reg_addr);
+}
+EXPORT_SYMBOL(omap_uart_read);
+
+/**
+ * @brief Uart port register write function for OMAP3
+ *
+ * @param val value to write
+ * @param base base address of UART
+ * @param reg_idx register index
+ *
+ * @return void
+ */
+void omap_uart_write(unsigned int val, unsigned long base,
+		     unsigned char reg_idx)
+{
+	unsigned int *reg_addr = (unsigned int *)base;
+	reg_addr += reg_idx;
+	writeb(val, reg_addr);
+}
+EXPORT_SYMBOL(omap_uart_write);
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 843143b..c1940d2 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -483,37 +483,3 @@ void a_init(void)
 #endif
 
 }
-
-/**
- * @brief Uart port register read function for OMAP3
- *
- * @param base base address of UART
- * @param reg_idx register index
- *
- * @return character read from register
- */
-unsigned int omap_uart_read(unsigned long base, unsigned char reg_idx)
-{
-	unsigned int *reg_addr = (unsigned int *)base;
-	reg_addr += reg_idx;
-	return readb(reg_addr);
-}
-EXPORT_SYMBOL(omap_uart_read);
-
-/**
- * @brief Uart port register write function for OMAP3
- *
- * @param val value to write
- * @param base base address of UART
- * @param reg_idx register index
- *
- * @return void
- */
-void omap_uart_write(unsigned int val, unsigned long base,
-		     unsigned char reg_idx)
-{
-	unsigned int *reg_addr = (unsigned int *)base;
-	reg_addr += reg_idx;
-	writeb(val, reg_addr);
-}
-EXPORT_SYMBOL(omap_uart_write);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
