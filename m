Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QwKKx-0008BM-LE
	for barebox@lists.infradead.org; Wed, 24 Aug 2011 20:46:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 Aug 2011 22:46:03 +0200
Message-Id: <1314218763-31058-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1314218763-31058-1-git-send-email-s.hauer@pengutronix.de>
References: <1314218763-31058-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM Linux: Add device tree support
To: barebox@lists.infradead.org

If the user has parsed a tree, we start Linux using the
device tree, otherwise we use the traditional ATAG
mechanism.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/armlinux.c |   15 ++++++++++++---
 1 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 5bdbb92..f34e721 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -35,6 +35,7 @@
 #include <malloc.h>
 #include <fcntl.h>
 #include <errno.h>
+#include <of.h>
 
 #include <asm/byteorder.h>
 #include <asm/setup.h>
@@ -202,8 +203,16 @@ void armlinux_set_serial(u64 serial)
 void start_linux(void *adr, int swap, struct image_data *data)
 {
 	void (*kernel)(int zero, int arch, void *params) = adr;
-
-	setup_tags(data, swap);
+	void *params = NULL;
+#ifdef CONFIG_OFTREE
+	params = of_get_fixed_tree();
+	if (params)
+		printf("booting Linux kernel with devicetree\n");
+#endif
+	if (!params) {
+		setup_tags(data, swap);
+		params = armlinux_bootparams;
+	}
 
 	shutdown_barebox();
 	if (swap) {
@@ -213,5 +222,5 @@ void start_linux(void *adr, int swap, struct image_data *data)
 		__asm__ __volatile__("mcr p15, 0, %0, c1, c0" :: "r" (reg));
 	}
 
-	kernel(0, armlinux_architecture, armlinux_bootparams);
+	kernel(0, armlinux_architecture, params);
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
