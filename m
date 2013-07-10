Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp31.i.mail.ru ([94.100.177.91])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwoOw-00040g-78
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 07:01:25 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 10 Jul 2013 11:00:40 +0400
Message-Id: <1373439641-18852-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1373439641-18852-1-git-send-email-shc_work@mail.ru>
References: <1373439641-18852-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/3] ARM: Use armlinux_bootparams address for DTB
To: barebox@lists.infradead.org

In some cases, the address of the devicetree, which is obtained
dynamically, may be located in the kernel text area, which leads
to overwrite devicetree by kernel. The patch uses the address for
devicetree, provided by board, if it possible.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/lib/armlinux.c | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 84372af..4aa3414 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -262,17 +262,23 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 		unsigned long initrd_size, void *oftree, int verbose)
 {
 	void (*kernel)(int zero, int arch, void *params) = adr;
-	void *params = NULL;
 	int architecture;
 
 	if (oftree) {
+		if (armlinux_bootparams) {
+			struct fdt_header *header = oftree;
+
+			memcpy(armlinux_bootparams, oftree,
+			       fdt32_to_cpu(header->totalsize));
+		} else
+			armlinux_bootparams = oftree;
+
 		if (verbose)
-			printf("booting Linux kernel with devicetree\n");
-		params = oftree;
-	} else {
+			printf("booting Linux kernel with devicetree at 0x%p\n",
+			       armlinux_bootparams);
+	} else
 		setup_tags(initrd_address, initrd_size, swap, verbose);
-		params = armlinux_bootparams;
-	}
+
 	architecture = armlinux_get_architecture();
 
 	shutdown_barebox();
@@ -290,10 +296,10 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
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
