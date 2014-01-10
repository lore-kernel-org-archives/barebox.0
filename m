Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Zuw-0006iV-VM
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 11:06:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2014 12:05:59 +0100
Message-Id: <1389351959-20448-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389351959-20448-1-git-send-email-s.hauer@pengutronix.de>
References: <1389351959-20448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] ARM: bootm: pass free memory to __do_bootm_linux
To: barebox@lists.infradead.org

This improves the initrd/devicetree placement in the bootm code.
We used to put the initrd at the start of the kernel + 8MiB. This
of course fails once the kernel gets bigger than 8MiB. Also the
place for the devicetree was allocated using malloc(). This can
lead to the problem that the devicetree is outside of the kernels
lowmem and thus not reachable for the kernel.
With this patch __do_bootm_linux gets a pointer to free space where
the devicetree and the initrd can be safely put.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c | 59 +++++++++++++++++++++++++++++++++++++---------------
 1 file changed, 42 insertions(+), 17 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 5a2780a..182655f 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -54,17 +54,18 @@ static int sdram_start_and_size(unsigned long *start, unsigned long *size)
 	return 0;
 }
 
-static int __do_bootm_linux(struct image_data *data, int swap)
+static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int swap)
 {
 	unsigned long kernel;
 	unsigned long initrd_start = 0, initrd_size = 0, initrd_end = 0;
+	int ret;
 
 	kernel = data->os_res->start + data->os_entry;
 
 	initrd_start = data->initrd_address;
 
 	if (initrd_start == UIMAGE_INVALID_ADDRESS) {
-		initrd_start = data->os_res->start + SZ_8M;
+		initrd_start = PAGE_ALIGN(free_mem);
 
 		if (bootm_verbose(data)) {
 			printf("no initrd load address, defaulting to 0x%08lx\n",
@@ -80,18 +81,12 @@ static int __do_bootm_linux(struct image_data *data, int swap)
 		initrd_start = data->initrd_res->start;
 		initrd_end = data->initrd_res->end;
 		initrd_size = resource_size(data->initrd_res);
+		free_mem = PAGE_ALIGN(initrd_end);
 	}
 
-	if (IS_ENABLED(CONFIG_OFTREE) && data->of_root_node) {
-		of_add_initrd(data->of_root_node, initrd_start, initrd_end);
-		if (initrd_end)
-			of_add_reserve_entry(initrd_start, initrd_end);
-		data->oftree = of_get_fixed_tree(data->of_root_node);
-		fdt_add_reserve_map(data->oftree);
-		of_print_cmdline(data->of_root_node);
-		if (bootm_verbose(data) > 1)
-			of_print_nodes(data->of_root_node, 0);
-	}
+	ret = bootm_load_devicetree(data, free_mem);
+	if (ret)
+		return ret;
 
 	if (bootm_verbose(data)) {
 		printf("\nStarting kernel at 0x%08lx", kernel);
@@ -111,7 +106,7 @@ static int __do_bootm_linux(struct image_data *data, int swap)
 
 static int do_bootm_linux(struct image_data *data)
 {
-	unsigned long load_address, mem_start, mem_size;
+	unsigned long load_address, mem_start, mem_size, mem_free;
 	int ret;
 
 	ret = sdram_start_and_size(&mem_start, &mem_size);
@@ -131,7 +126,16 @@ static int do_bootm_linux(struct image_data *data)
 	if (ret)
 		return ret;
 
-	return __do_bootm_linux(data, 0);
+	/*
+	 * Put devicetree/initrd at maximum to 128MiB into RAM to not
+	 * risk to put it outside of lowmem.
+	 */
+	if (mem_size > SZ_256M)
+		mem_free = mem_start + SZ_128M;
+	else
+		mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
+
+	return __do_bootm_linux(data, mem_free, 0);
 }
 
 static struct image_handler uimage_handler = {
@@ -224,7 +228,7 @@ static int do_bootz_linux(struct image_data *data)
 	void *zimage;
 	u32 end;
 	unsigned long load_address = data->os_address;
-	unsigned long mem_start, mem_size;
+	unsigned long mem_start, mem_size, mem_free;
 
 	ret = sdram_start_and_size(&mem_start, &mem_size);
 	if (ret)
@@ -309,7 +313,17 @@ static int do_bootz_linux(struct image_data *data)
 		goto err_out;
 
 	close(fd);
-	return __do_bootm_linux(data, swap);
+
+	/*
+	 * Put devicetree/initrd at maximum to 128MiB into RAM to not
+	 * risk to put it outside of lowmem.
+	 */
+	if (mem_size > SZ_256M)
+		mem_free = mem_start + SZ_128M;
+	else
+		mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
+
+	return __do_bootm_linux(data, mem_free, swap);
 
 err_out:
 	close(fd);
@@ -384,6 +398,7 @@ static int do_bootm_aimage(struct image_data *data)
 	void *buf;
 	int to_read;
 	struct android_header_comp *cmp;
+	unsigned long mem_free;
 
 	fd = open(data->os_file, O_RDONLY);
 	if (fd < 0) {
@@ -477,7 +492,17 @@ static int do_bootm_aimage(struct image_data *data)
 	}
 
 	close(fd);
-	return __do_bootm_linux(data, 0);
+
+	/*
+	 * Put devicetree right after initrd if present or after the kernel
+	 * if not.
+	 */
+	if (data->initrd_res)
+		mem_free = PAGE_ALIGN(data->initrd_res->end);
+	else
+		mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
+
+	return __do_bootm_linux(data, mem_free, 0);
 
 err_out:
 	linux_bootargs_overwrite(NULL);
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
