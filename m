Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f181.google.com ([209.85.217.181])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tz8o8-0000Wx-1x
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 16:40:44 +0000
Received: by mail-lb0-f181.google.com with SMTP id gm6so2154913lbb.26
 for <barebox@lists.infradead.org>; Sat, 26 Jan 2013 08:40:42 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 26 Jan 2013 20:52:38 +0400
Message-Id: <1359219160-18500-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1359219160-18500-1-git-send-email-antonynpavlov@gmail.com>
References: <1359219160-18500-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/4] MIPS: qemu-malta: use mips_add_ram0()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/qemu-malta/init.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/boards/qemu-malta/init.c b/arch/mips/boards/qemu-malta/init.c
index 28c23aa..fb4472f 100644
--- a/arch/mips/boards/qemu-malta/init.c
+++ b/arch/mips/boards/qemu-malta/init.c
@@ -20,7 +20,7 @@
 #include <types.h>
 #include <driver.h>
 #include <init.h>
-#include <memory.h>
+#include <asm/memory.h>
 #include <ns16550.h>
 #include <mach/hardware.h>
 #include <io.h>
@@ -30,7 +30,7 @@
 
 static int malta_mem_init(void)
 {
-	barebox_add_memory_bank("ram0", 0xa0000000, SZ_256M);
+	mips_add_ram0(SZ_256M);
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
