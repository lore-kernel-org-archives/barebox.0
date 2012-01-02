Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhgJQ-0006hU-JW
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 11:44:22 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RhgJA-0002oH-7d
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 12:44:04 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RhgJA-0002TN-3q
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 12:44:04 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon,  2 Jan 2012 12:43:59 +0100
Message-Id: <1325504642-9324-12-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1325504642-9324-1-git-send-email-jbe@pengutronix.de>
References: <1325504642-9324-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 11/14] MACH SAMSUNG/S3C: Prepare watchdog unit to be shared in
 the S3C family
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-samsung/generic.c                |   10 +++++++---
 arch/arm/mach-samsung/include/mach/s3c-iomap.h |    7 +------
 arch/arm/mach-samsung/lowlevel-init.S          |    2 +-
 3 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-samsung/generic.c b/arch/arm/mach-samsung/generic.c
index 83222e1..4a0c87b 100644
--- a/arch/arm/mach-samsung/generic.c
+++ b/arch/arm/mach-samsung/generic.c
@@ -76,16 +76,20 @@ uint32_t s3c24x0_get_memory_size(void)
 	return size;
 }
 
+#define S3C_WTCON (S3C_WATCHDOG_BASE)
+#define S3C_WTDAT (S3C_WATCHDOG_BASE + 0x04)
+#define S3C_WTCNT (S3C_WATCHDOG_BASE + 0x08)
+
 void __noreturn reset_cpu(unsigned long addr)
 {
 	/* Disable watchdog */
-	writew(0x0000, WTCON);
+	writew(0x0000, S3C_WTCON);
 
 	/* Initialize watchdog timer count register */
-	writew(0x0001, WTCNT);
+	writew(0x0001, S3C_WTCNT);
 
 	/* Enable watchdog timer; assert reset at timer timeout */
-	writew(0x0021, WTCON);
+	writew(0x0021, S3C_WTCON);
 
 	/* loop forever and wait for reset to happen */
 	while(1)
diff --git a/arch/arm/mach-samsung/include/mach/s3c-iomap.h b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
index 807660a..9677803 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-iomap.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
@@ -31,7 +31,7 @@
 #define S3C24X0_UART_BASE		0x50000000
 #define S3C_TIMER_BASE			0x51000000
 #define S3C2410_USB_DEVICE_BASE		0x52000140
-#define S3C24X0_WATCHDOG_BASE		0x53000000
+#define S3C_WATCHDOG_BASE		0x53000000
 #define S3C2410_I2C_BASE		0x54000000
 #define S3C2410_I2S_BASE		0x55000000
 #define S3C24X0_GPIO_BASE		0x56000000
@@ -41,11 +41,6 @@
 #define S3C2410_SDI_BASE		0x5A000000
 
 
-/* Watchdog (direct access) */
-#define WTCON (S3C24X0_WATCHDOG_BASE)
-#define WTDAT (S3C24X0_WATCHDOG_BASE + 0x04)
-#define WTCNT (S3C24X0_WATCHDOG_BASE + 0x08)
-
 /*
  * if we are booting from NAND, its internal SRAM occures at
  * a different address than without this feature
diff --git a/arch/arm/mach-samsung/lowlevel-init.S b/arch/arm/mach-samsung/lowlevel-init.S
index e2e3fc0..93ea3ce 100644
--- a/arch/arm/mach-samsung/lowlevel-init.S
+++ b/arch/arm/mach-samsung/lowlevel-init.S
@@ -29,7 +29,7 @@
 .globl s3c24x0_disable_wd
 s3c24x0_disable_wd:
 
-	ldr r0, =S3C24X0_WATCHDOG_BASE
+	ldr r0, =S3C_WATCHDOG_BASE
 	mov r1, #0x0
 	str r1, [r0]
 	mov pc, lr
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
