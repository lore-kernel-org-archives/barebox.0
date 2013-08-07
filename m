Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V70Jb-0002FH-Rk
 for barebox@lists.infradead.org; Wed, 07 Aug 2013 09:46:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 Aug 2013 11:45:34 +0200
Message-Id: <1375868734-32357-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Revert "ARM: Use armlinux_bootparams address for DTB"
To: barebox@lists.infradead.org

This patch placed the flattened devicetree to armlinux_bootparams.
armlinux_bootparams normally is at SDRAM_START + 0x100. The kernels
initial page tables are normally at SDRAM_START + 0x4000, so the
flattened devicetree gets overwritten once it exceeds 0x3f00 bytes
which is quite common.

Revert this patch for now once a better solution can be found

This reverts commit 0c4108f9173ece75d96f19b447ef6464bdfdf187.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/lib/armlinux.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index d962997..40a63ea 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -261,24 +261,16 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 		unsigned long initrd_size, void *oftree)
 {
 	void (*kernel)(int zero, int arch, void *params) = adr;
+	void *params = NULL;
 	int architecture;
 
 	if (oftree) {
-		if (armlinux_bootparams) {
-			struct fdt_header *header = oftree;
-
-			memcpy(armlinux_bootparams, oftree,
-					fdt32_to_cpu(header->totalsize));
-		} else {
-			armlinux_bootparams = oftree;
-		}
-
-		printf("booting Linux kernel with devicetree at 0x%p\n",
-				armlinux_bootparams);
+		printf("booting Linux kernel with devicetree\n");
+		params = oftree;
 	} else {
 		setup_tags(initrd_address, initrd_size, swap);
+		params = armlinux_bootparams;
 	}
-
 	architecture = armlinux_get_architecture();
 
 	shutdown_barebox();
@@ -296,10 +288,10 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 		"mov r2, %1\n"
 		"bx %2\n"
 		:
-		: "r" (architecture), "r" (armlinux_bootparams), "r" (kernel)
+		: "r" (architecture), "r" (params), "r" (kernel)
 		: "r0", "r1", "r2"
 	);
 #else
-	kernel(0, architecture, armlinux_bootparams);
+	kernel(0, architecture, params);
 #endif
 }
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
