Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSBGV-0002Q3-Iv
 for barebox@lists.infradead.org; Mon, 24 Mar 2014 20:14:36 +0000
Received: by mail-la0-f46.google.com with SMTP id hr17so3994676lab.5
 for <barebox@lists.infradead.org>; Mon, 24 Mar 2014 13:14:13 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 25 Mar 2014 00:13:52 +0400
Message-Id: <1395692034-5821-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395692034-5821-1-git-send-email-antonynpavlov@gmail.com>
References: <1395692034-5821-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 6/8] MIPS: rzx50: drop console initialization in board code
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/rzx50/Makefile | 2 +-
 arch/mips/boards/rzx50/serial.c | 9 ++-------
 2 files changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/mips/boards/rzx50/Makefile b/arch/mips/boards/rzx50/Makefile
index ff1a655..31c0629 100644
--- a/arch/mips/boards/rzx50/Makefile
+++ b/arch/mips/boards/rzx50/Makefile
@@ -1 +1 @@
-obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial.o
+obj-y += serial.o
diff --git a/arch/mips/boards/rzx50/serial.c b/arch/mips/boards/rzx50/serial.c
index 566356a..f1e8da0 100644
--- a/arch/mips/boards/rzx50/serial.c
+++ b/arch/mips/boards/rzx50/serial.c
@@ -17,16 +17,11 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/devices.h>
-#include <mach/jz4750d_regs.h>
 
-static int rzx50_console_init(void)
+static int rzx50_hostname_init(void)
 {
 	barebox_set_hostname("rzx50");
 
-	/* Register the serial port */
-	jz_add_uart(DEVICE_ID_DYNAMIC, UART1_BASE, 12000000);
-
 	return 0;
 }
-console_initcall(rzx50_console_init);
+console_initcall(rzx50_hostname_init);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
