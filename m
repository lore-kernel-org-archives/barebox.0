Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQspo-0004nK-3p
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 06:53:56 +0000
Received: by mail-lb0-f182.google.com with SMTP id v6so410333lbi.27
 for <barebox@lists.infradead.org>; Sun, 07 Sep 2014 23:53:32 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  8 Sep 2014 10:53:07 +0400
Message-Id: <1410159189-17328-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
References: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 5/7] openrisc: generic board: reduce platform code
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
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
