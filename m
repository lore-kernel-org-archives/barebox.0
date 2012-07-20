Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SsItc-000690-OE
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 19:30:01 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SsItY-0005c4-C7
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 21:29:48 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1SsItX-0007gl-Ez
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 21:29:47 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 20 Jul 2012 21:29:43 +0200
Message-Id: <1342812585-22017-8-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342812585-22017-1-git-send-email-jbe@pengutronix.de>
References: <1342812585-22017-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 7/9] Samsung/serial: move the decision about an improved UART
 into Kconfig
To: barebox@lists.infradead.org

More or less just cosmetic (removing ifdefs!).

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-samsung/Kconfig                     |    5 +++++
 arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h |    5 +++--
 drivers/serial/serial_s3c.c                       |   16 ++++++++--------
 3 files changed, 16 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index c60f5ed..37d1aa3 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -18,6 +18,9 @@ config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 	hex
 	default 0x1ff0 if ARCH_S5PCxx
 
+config SAMSUNG_IMPROVED_UART
+	bool
+
 if ARCH_S3C24xx
 
 config CPU_S3C2410
@@ -87,9 +90,11 @@ endif
 if ARCH_S5PCxx
 
 config CPU_S5PC110
+	select SAMSUNG_IMPROVED_UART
 	bool
 
 config CPU_S5PV210
+	select SAMSUNG_IMPROVED_UART
 	bool
 
 #choice
diff --git a/arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h b/arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h
index cb05527..448e3b8 100644
--- a/arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h
+++ b/arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h
@@ -45,5 +45,6 @@
 #define S3C_UART2_SIZE 0x400
 #define S3C_UART3_BASE (S3C_UART_BASE + 0x800)
 #define S3C_UART3_SIZE 0x400
-#define S3C_UART_HAS_UBRDIVSLOT
-#define S3C_UART_HAS_UINTM
+
+#define S5P_DMC0_BASE 0xF0000000
+#define S5P_DMC1_BASE 0xF1400000
diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index 2cb2eef..01f2246 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -79,10 +79,11 @@ static int s3c_serial_setbaudrate(struct console_device *cdev, int baudrate)
 	void __iomem *base = priv->regs;
 	unsigned val;
 
-#ifdef S3C_UART_HAS_UBRDIVSLOT
-	val = s3c_get_arch_uart_input_clock(base) / baudrate;
-	writew(udivslot_table[val & 15], base + UBRDIVSLOT);
-#endif
+	if (IS_ENABLED(CONFIG_SAMSUNG_IMPROVED_UART)) {
+		val = s3c_get_arch_uart_input_clock(base) / baudrate;
+		writew(udivslot_table[val & 15], base + UBRDIVSLOT);
+	}
+
 	val = s3c_get_arch_uart_input_clock(base) / (16 * baudrate) - 1;
 	writew(val, base + UBRDIV);
 
@@ -106,10 +107,9 @@ static int s3c_serial_init_port(struct console_device *cdev)
 	writew(0x0245 | UCON_SET_CLK_SRC(S3C_UART_CLKSEL),
 						base + UCON);
 
-#ifdef S3C_UART_HAS_UINTM
-	/* 'interrupt or polling mode' for both directions */
-	writeb(0xf, base + UINTM);
-#endif
+	if (IS_ENABLED(CONFIG_SAMSUNG_IMPROVED_UART))
+		/* 'interrupt or polling mode' for both directions */
+		writeb(0xf, base + UINTM);
 
 	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_S3C_AUTOSYNC))
 		writeb(0x10, base + UMCON); /* enable auto flow control */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
