Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwAe-0003s6-7s
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:02:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 09:02:19 +0100
Message-Id: <1322467340-10596-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/14] bootm: push relocate_image up to the generic command
To: barebox@lists.infradead.org

All handlers used to just relocate the image without any checks, so
we are doomed if we write outside of SDRAM or will overwrite ourselves.
Move the relocation up to the generic part where we have a chance
of catching these issues.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c               |    7 -------
 arch/blackfin/lib/blackfin_linux.c |    3 ---
 arch/nios2/lib/bootm.c             |    3 ---
 arch/ppc/lib/ppclinux.c            |    3 ---
 commands/bootm.c                   |   17 +++++++++++++++++
 5 files changed, 17 insertions(+), 16 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index a104aaa..5b85ba9 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -29,13 +29,6 @@ static int do_bootm_linux(struct image_data *data)
 	debug("## Transferring control to Linux (at address 0x%p) ...\n",
 	       theKernel);
 
-	if (relocate_image(data->os, (void *)image_get_load(os_header)))
-		return -1;
-
-	if (data->initrd)
-		if (relocate_image(data->initrd, (void *)image_get_load(&data->initrd->header)))
-			return -1;
-
 	/* we assume that the kernel is in place */
 	printf("\nStarting kernel %s...\n\n", data->initrd ? "with initrd " : "");
 
diff --git a/arch/blackfin/lib/blackfin_linux.c b/arch/blackfin/lib/blackfin_linux.c
index a20cf55..9da9ec4 100644
--- a/arch/blackfin/lib/blackfin_linux.c
+++ b/arch/blackfin/lib/blackfin_linux.c
@@ -50,9 +50,6 @@ static int do_bootm_linux(struct image_data *idata)
 	appl = (int (*)(char *))image_get_ep(os_header);
 	printf("Starting Kernel at 0x%p\n", appl);
 
-	if (relocate_image(os_handle, (void *)image_get_load(os_header)))
-		return -1;
-
 	icache_disable();
 
 	strncpy(cmdlinedest, cmdline, 0x1000);
diff --git a/arch/nios2/lib/bootm.c b/arch/nios2/lib/bootm.c
index c38243f..b5b344f 100644
--- a/arch/nios2/lib/bootm.c
+++ b/arch/nios2/lib/bootm.c
@@ -43,9 +43,6 @@ static int do_bootm_linux(struct image_data *idata)
 
 	kernel = (void (*)(int, int, int, const char *))ntohl(os_header->ih_ep);
 
-	if (relocate_image(idata->os, (void *)ntohl(os_header->ih_load)))
-		return -1;
-
 	/* kernel parameters passing
 	 * r4 : NIOS magic
 	 * r5 : initrd start
diff --git a/arch/ppc/lib/ppclinux.c b/arch/ppc/lib/ppclinux.c
index 531c215..471b303 100644
--- a/arch/ppc/lib/ppclinux.c
+++ b/arch/ppc/lib/ppclinux.c
@@ -200,9 +200,6 @@ static int do_bootm_linux(struct image_data *idata)
 
 	kernel = (void (*)(bd_t *, ulong, ulong, ulong, ulong))image_get_ep(os_header); /* FIXME */
 
-	if (relocate_image(idata->os, (void *)image_get_load(os_header)))
-		return -1;
-
 #if defined(CFG_INIT_RAM_LOCK) && !defined(CONFIG_E500)
 	unlock_ram_in_cache();
 #endif
diff --git a/commands/bootm.c b/commands/bootm.c
index c400ab5..027dd37 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -207,6 +207,23 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 
 	puts ("OK\n");
 
+	/*
+	 * FIXME: we do not check at all whether
+	 * - we will write the image to sdram
+	 * - we overwrite ourselves
+	 * - kernel and initrd overlap
+	 */
+	ret = relocate_image(data.os, (void *)image_get_load(os_header));
+	if (ret)
+		goto err_out;
+
+	if (data.initrd) {
+		ret = relocate_image(data.initrd,
+				(void *)image_get_load(&data.initrd->header));
+		if (ret)
+			goto err_out;
+	}
+
 	/* loop through the registered handlers */
 	list_for_each_entry(handler, &handler_list, list) {
 		if (image_get_os(os_header) == handler->image_type) {
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
