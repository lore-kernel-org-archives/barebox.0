Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNDL1-0004a0-DO
 for barebox@lists.infradead.org; Tue, 29 Sep 2020 10:58:29 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 29 Sep 2020 12:58:23 +0200
Message-Id: <20200929105823.11542-5-a.fatoum@pengutronix.de>
In-Reply-To: <20200929105823.11542-1-a.fatoum@pengutronix.de>
References: <20200929105823.11542-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/5] sandbox: add dummy memory-mapped I/O port region
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Super I/O devices on x86 have their base usually located at one of two
I/O ports. They are probed by writing a "passcode" to the I/O port
and then a value is read back.

When COMPILE_TESTing these drivers and running them on sandbox,
this fails with a segfault because all I/O port access lead to
zero page dereference on that architecture. Even without running
barebox, static analyzers correctly flag these accesses as invoking
undefined behavior. Adding a dummy I/O region solves both issues.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/devices.c  | 3 +++
 arch/sandbox/include/asm/io.h | 6 +++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/board/devices.c b/arch/sandbox/board/devices.c
index 72e62552a3b8..1fd1913ae60f 100644
--- a/arch/sandbox/board/devices.c
+++ b/arch/sandbox/board/devices.c
@@ -9,6 +9,9 @@
 #include <mach/linux.h>
 #include <init.h>
 #include <mach/linux.h>
+#include <asm/io.h>
+
+unsigned char __pci_iobase[IO_SPACE_LIMIT];
 
 static LIST_HEAD(sandbox_device_list);
 
diff --git a/arch/sandbox/include/asm/io.h b/arch/sandbox/include/asm/io.h
index 6a0e77aead42..9f9cd3a42ab1 100644
--- a/arch/sandbox/include/asm/io.h
+++ b/arch/sandbox/include/asm/io.h
@@ -1,7 +1,11 @@
 #ifndef __ASM_SANDBOX_IO_H
 #define __ASM_SANDBOX_IO_H
 
-#define	IO_SPACE_LIMIT 0
+#define	IO_SPACE_LIMIT 0xffff
+/* pacify static analyzers */
+#define PCI_IOBASE     ((void __iomem *)__pci_iobase)
+
+extern unsigned char __pci_iobase[IO_SPACE_LIMIT];
 
 #include <asm-generic/io.h>
 #include <asm-generic/bitio.h>
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
