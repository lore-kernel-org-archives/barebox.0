Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sn5rY-00021I-Qg
 for barebox@lists.infradead.org; Fri, 06 Jul 2012 10:34:14 +0000
Received: by lbbgg6 with SMTP id gg6so13752252lbb.36
 for <barebox@lists.infradead.org>; Fri, 06 Jul 2012 03:34:10 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  6 Jul 2012 14:34:02 +0400
Message-Id: <1341570842-12951-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: malta: register memory bank
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/qemu-malta/init.c |    9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/mips/boards/qemu-malta/init.c b/arch/mips/boards/qemu-malta/init.c
index 2a6eadb..0efc92a 100644
--- a/arch/mips/boards/qemu-malta/init.c
+++ b/arch/mips/boards/qemu-malta/init.c
@@ -23,6 +23,7 @@
 #include <types.h>
 #include <driver.h>
 #include <init.h>
+#include <memory.h>
 #include <ns16550.h>
 #include <mach/hardware.h>
 #include <io.h>
@@ -30,6 +31,14 @@
 #include <sizes.h>
 #include <asm/common.h>
 
+static int malta_mem_init(void)
+{
+	barebox_add_memory_bank("ram0", 0xa0000000, SZ_256M);
+
+	return 0;
+}
+mem_initcall(malta_mem_init);
+
 static int malta_devices_init(void)
 {
 	add_cfi_flash_device(0, 0x1e000000, SZ_4M, 0);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
