Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XF8z0-0004Jf-AD
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 21:42:54 +0000
Received: by mail-la0-f48.google.com with SMTP id gl10so2786703lab.21
 for <barebox@lists.infradead.org>; Wed, 06 Aug 2014 14:42:31 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  7 Aug 2014 01:42:14 +0400
Message-Id: <1407361335-14875-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1407361335-14875-1-git-send-email-antonynpavlov@gmail.com>
References: <1407361335-14875-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 5/6] openrisc: generic board: reduce platform code
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Franck Jullien <franck.jullien@gmail.com>
---
 arch/openrisc/boards/generic/config.h  |  5 -----
 arch/openrisc/boards/generic/generic.c | 24 ++----------------------
 2 files changed, 2 insertions(+), 27 deletions(-)

diff --git a/arch/openrisc/boards/generic/config.h b/arch/openrisc/boards/generic/config.h
index 10c33a1..f6a054b 100644
--- a/arch/openrisc/boards/generic/config.h
+++ b/arch/openrisc/boards/generic/config.h
@@ -8,11 +8,6 @@
 #define OPENRISC_SOPC_MEMORY_BASE	0x00000000
 #define OPENRISC_SOPC_MEMORY_SIZE	0x02000000
 
-#define OPENRISC_SOPC_UART_FREQ		CONFIG_SYS_CLK_FREQ
-#define OPENRISC_SOPC_UART_BASE		0x90000000
-
-#define OPENRISC_SOPC_ETHOC_BASE	0x92000000
-
 /* We reserve 512K for barebox */
 #define BAREBOX_RESERVED_SIZE		0x80000
 
diff --git a/arch/openrisc/boards/generic/generic.c b/arch/openrisc/boards/generic/generic.c
index 9f68007..ff6f9f4 100644
--- a/arch/openrisc/boards/generic/generic.c
+++ b/arch/openrisc/boards/generic/generic.c
@@ -1,30 +1,10 @@
 #include <common.h>
 #include <init.h>
-#include <driver.h>
-#include <partition.h>
-#include <ns16550.h>
 
-static struct NS16550_plat serial_plat = {
-	.clock = OPENRISC_SOPC_UART_FREQ,
-	.shift = 0,
-};
-
-static int openrisc_console_init(void)
+static int openrisc_core_init(void)
 {
-	barebox_set_model("OpenRISC or1k");
 	barebox_set_hostname("or1k");
 
-	/* Register the serial port */
-	add_ns16550_device(DEVICE_ID_DYNAMIC, OPENRISC_SOPC_UART_BASE, 1024,
-			   IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
-
-#ifdef CONFIG_DRIVER_NET_ETHOC
-	add_generic_device("ethoc", DEVICE_ID_DYNAMIC, NULL,
-			   OPENRISC_SOPC_ETHOC_BASE, 0x1000,
-			   IORESOURCE_MEM, NULL);
-#endif
-
 	return 0;
 }
-
-console_initcall(openrisc_console_init);
+core_initcall(openrisc_core_init);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
