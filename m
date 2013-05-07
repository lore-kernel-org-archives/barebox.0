Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f180.google.com ([209.85.217.180])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZdde-0006gB-8o
 for barebox@lists.infradead.org; Tue, 07 May 2013 08:52:47 +0000
Received: by mail-lb0-f180.google.com with SMTP id v1so440695lbd.25
 for <barebox@lists.infradead.org>; Tue, 07 May 2013 01:52:24 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  7 May 2013 12:51:26 +0400
Message-Id: <1367916686-12975-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1367916686-12975-1-git-send-email-antonynpavlov@gmail.com>
References: <1367916686-12975-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] MIPS: rzx50: switch to common mach-xburst serial code
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/rzx50/serial.c |   37 ++-----------------------------------
 1 file changed, 2 insertions(+), 35 deletions(-)

diff --git a/arch/mips/boards/rzx50/serial.c b/arch/mips/boards/rzx50/serial.c
index 5230aaa..129806d 100644
--- a/arch/mips/boards/rzx50/serial.c
+++ b/arch/mips/boards/rzx50/serial.c
@@ -16,47 +16,14 @@
  */
 
 #include <common.h>
-#include <types.h>
-#include <driver.h>
 #include <init.h>
-#include <ns16550.h>
+#include <mach/devices.h>
 #include <mach/jz4750d_regs.h>
-#include <io.h>
-#include <asm/common.h>
-
-#define JZ4750D_UART_SHIFT	2
-
-#define ier		(1 << JZ4750D_UART_SHIFT)
-#define fcr		(2 << JZ4750D_UART_SHIFT)
-
-static void jz4750d_serial_reg_write(unsigned int val, unsigned long base,
-	unsigned char reg_offset)
-{
-	switch (reg_offset) {
-	case fcr:
-		val |= 0x10; /* Enable uart module */
-		break;
-	case ier:
-		val |= (val & 0x4) << 2;
-		break;
-	default:
-		break;
-	}
-
-	writeb(val & 0xff, (void *)(base + reg_offset));
-}
-
-static struct NS16550_plat serial_plat = {
-	.clock = 12000000,
-	.shift = JZ4750D_UART_SHIFT,
-	.reg_write = &jz4750d_serial_reg_write,
-};
 
 static int rzx50_console_init(void)
 {
 	/* Register the serial port */
-	add_ns16550_device(DEVICE_ID_DYNAMIC, UART1_BASE, 8 << JZ4750D_UART_SHIFT,
-			IORESOURCE_MEM_8BIT, &serial_plat);
+	jz_add_uart(DEVICE_ID_DYNAMIC, UART1_BASE, 12000000);
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
