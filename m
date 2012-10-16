Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TODEI-0003Kg-7t
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 19:55:07 +0000
Received: by mail-wi0-f177.google.com with SMTP id hj13so268905wib.0
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2012 12:55:04 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Tue, 16 Oct 2012 21:54:56 +0200
Message-Id: <1350417296-26963-3-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1350417296-26963-1-git-send-email-franck.jullien@gmail.com>
References: <1350417296-26963-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 2/2] openrisc: generic board cleanup
To: barebox@lists.infradead.org

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/openrisc/boards/generic/config.h  |    7 +++----
 arch/openrisc/boards/generic/generic.c |    2 +-
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/openrisc/boards/generic/config.h b/arch/openrisc/boards/generic/config.h
index 88d2929..95260cd 100644
--- a/arch/openrisc/boards/generic/config.h
+++ b/arch/openrisc/boards/generic/config.h
@@ -1,16 +1,15 @@
 #ifndef _GENERIC_NAMES_H_
 #define _GENERIC_NAMES_H_
 
-#define CONFIG_SYS_CLK_FREQ		20000000
+#define CONFIG_SYS_CLK_FREQ		50000000
 
-#define OPENRISC_TIMER_FREQ		20000000
+#define OPENRISC_TIMER_FREQ		CONFIG_SYS_CLK_FREQ
 
 #define OPENRISC_SOPC_MEMORY_BASE	0x00000000
 #define OPENRISC_SOPC_MEMORY_SIZE	0x02000000
 
+#define OPENRISC_SOPC_UART_FREQ		CONFIG_SYS_CLK_FREQ
 #define OPENRISC_SOPC_UART_BASE		0x90000000
-#define CONFIG_SYS_UART_FREQ		CONFIG_SYS_CLK_FREQ
-#define CONFIG_SYS_UART_BAUD		115200
 
 /* We reserve 256K for barebox */
 #define BAREBOX_RESERVED_SIZE		0x40000
diff --git a/arch/openrisc/boards/generic/generic.c b/arch/openrisc/boards/generic/generic.c
index 54c73a5..14b5e18 100644
--- a/arch/openrisc/boards/generic/generic.c
+++ b/arch/openrisc/boards/generic/generic.c
@@ -5,7 +5,7 @@
 #include <ns16550.h>
 
 static struct NS16550_plat serial_plat = {
-	.clock = 50000000,      /* 48MHz (APLL96/2) */
+	.clock = OPENRISC_SOPC_UART_FREQ,
 	.shift = 0,
 };
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
