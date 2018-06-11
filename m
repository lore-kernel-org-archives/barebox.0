Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSTeT-0000DR-Le
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 20:43:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Jun 2018 22:42:43 +0200
Message-Id: <20180611204245.8351-2-s.hauer@pengutronix.de>
In-Reply-To: <20180611204245.8351-1-s.hauer@pengutronix.de>
References: <20180611204245.8351-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: bootm: Add option boot using ATAGs
To: Barebox List <barebox@lists.infradead.org>

So far we can only force legacy boot using ATAGs by executing
'oftree -f'. Said command is going away as often this command
is not safe to call. Add an alternative way using the
global.bootm.boot_atag environment variable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/bootm.c | 26 +++++++++++++++++++++-----
 1 file changed, 21 insertions(+), 5 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index c8bf72f0e0..17eb78c6b2 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -26,6 +26,9 @@
 #include <asm/armlinux.h>
 #include <asm/system.h>
 
+/* If true, ignore device tree and boot with ATAGs */
+static int bootm_boot_atag;
+
 /*
  * sdram_start_and_size() - determine place for putting the kernel/oftree/initrd
  *
@@ -135,8 +138,14 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int
 	unsigned long kernel;
 	unsigned long initrd_start = 0, initrd_size = 0, initrd_end = 0;
 	enum arm_security_state state = bootm_arm_security_state();
+	void *oftree;
 	int ret;
 
+	if (bootm_boot_atag)
+		oftree = NULL;
+	else
+		oftree = data->oftree;
+
 	kernel = data->os_res->start + data->os_entry;
 
 	initrd_start = data->initrd_address;
@@ -163,16 +172,18 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int
 		free_mem = PAGE_ALIGN(initrd_end + 1);
 	}
 
-	ret = bootm_load_devicetree(data, free_mem);
-	if (ret)
-		return ret;
+	if (oftree) {
+		ret = bootm_load_devicetree(data, free_mem);
+		if (ret)
+			return ret;
+	}
 
 	if (bootm_verbose(data)) {
 		printf("\nStarting kernel at 0x%08lx", kernel);
 		if (initrd_size)
 			printf(", initrd at 0x%08lx", initrd_start);
 		if (data->oftree)
-			printf(", oftree at 0x%p", data->oftree);
+			printf(", oftree at 0x%p", oftree);
 		printf("...\n");
 	}
 
@@ -188,7 +199,7 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int
 	if (data->dryrun)
 		return 0;
 
-	start_linux((void *)kernel, swap, initrd_start, initrd_size, data->oftree,
+	start_linux((void *)kernel, swap, initrd_start, initrd_size, oftree,
 		    state);
 
 	restart_machine();
@@ -600,8 +611,13 @@ static struct binfmt_hook binfmt_barebox_hook = {
 	.exec = "bootm",
 };
 
+BAREBOX_MAGICVAR_NAMED(global_bootm_boot_atag, global.bootm.boot_atag,
+		       "If true, ignore device tree and boot using ATAGs");
+
 static int armlinux_register_image_handler(void)
 {
+	globalvar_add_simple_bool("bootm.boot_atag", &bootm_boot_atag);
+
 	register_image_handler(&barebox_handler);
 	register_image_handler(&uimage_handler);
 	register_image_handler(&rawimage_handler);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
