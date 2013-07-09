Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp32.i.mail.ru ([94.100.177.92])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwXTc-0007RF-Vo
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 12:57:06 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue,  9 Jul 2013 16:56:40 +0400
Message-Id: <1373374600-13856-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: Use armlinux_bootparams address for DTB
To: barebox@lists.infradead.org

In some cases, the address of the devicetree, which is obtained
dynamically, may be located in the kernel text area, which leads
to malfunction of the devicetree. The patch uses the address of
the devicetree, designed for the board, if it possible.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/lib/armlinux.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 40a63ea..12fb06d 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -261,16 +261,20 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 		unsigned long initrd_size, void *oftree)
 {
 	void (*kernel)(int zero, int arch, void *params) = adr;
-	void *params = NULL;
 	int architecture;
 
 	if (oftree) {
-		printf("booting Linux kernel with devicetree\n");
-		params = oftree;
-	} else {
+		if (armlinux_bootparams) {
+			struct fdt_header *header = oftree;
+
+			printf("Relocate DTB to 0x%p\n", armlinux_bootparams);
+			memcpy(armlinux_bootparams, oftree,
+			       fdt32_to_cpu(header->totalsize));
+		} else
+			armlinux_bootparams = oftree;
+	} else
 		setup_tags(initrd_address, initrd_size, swap);
-		params = armlinux_bootparams;
-	}
+
 	architecture = armlinux_get_architecture();
 
 	shutdown_barebox();
@@ -288,10 +292,10 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 		"mov r2, %1\n"
 		"bx %2\n"
 		:
-		: "r" (architecture), "r" (params), "r" (kernel)
+		: "r" (architecture), "r" (armlinux_bootparams), "r" (kernel)
 		: "r0", "r1", "r2"
 	);
 #else
-	kernel(0, architecture, params);
+	kernel(0, architecture, armlinux_bootparams);
 #endif
 }
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
