Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQSbu-0004Jz-Md
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 07:12:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Jun 2018 09:11:24 +0200
Message-Id: <20180606071129.28884-2-s.hauer@pengutronix.de>
In-Reply-To: <20180606071129.28884-1-s.hauer@pengutronix.de>
References: <20180606071129.28884-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] ARM: bootm: drop usage of data->oftree
To: Barebox List <barebox@lists.infradead.org>

data->oftree can be replaced with a variable local to the arm code, so
drop usage of data->oftree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/bootm.c | 43 +++++++++++++++++++++++-------------------
 1 file changed, 24 insertions(+), 19 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index c8bf72f0e0..7817e1bdc1 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -130,11 +130,13 @@ static int get_kernel_addresses(size_t image_size,
 	return 0;
 }
 
-static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int swap)
+static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
+			    int swap, void *fdt)
 {
 	unsigned long kernel;
 	unsigned long initrd_start = 0, initrd_size = 0, initrd_end = 0;
 	enum arm_security_state state = bootm_arm_security_state();
+	void *fdt_load_address = NULL;
 	int ret;
 
 	kernel = data->os_res->start + data->os_entry;
@@ -163,16 +165,21 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int
 		free_mem = PAGE_ALIGN(initrd_end + 1);
 	}
 
-	ret = bootm_load_devicetree(data, free_mem);
-	if (ret)
-		return ret;
+	if (fdt) {
+		fdt_load_address = fdt;
+	} else {
+		fdt_load_address = (void *)free_mem;
+		ret = bootm_load_devicetree(data, free_mem);
+		if (ret)
+			return ret;
+	}
 
 	if (bootm_verbose(data)) {
 		printf("\nStarting kernel at 0x%08lx", kernel);
 		if (initrd_size)
 			printf(", initrd at 0x%08lx", initrd_start);
-		if (data->oftree)
-			printf(", oftree at 0x%p", data->oftree);
+		if (fdt_load_address)
+			printf(", oftree at 0x%p", fdt_load_address);
 		printf("...\n");
 	}
 
@@ -188,8 +195,8 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int
 	if (data->dryrun)
 		return 0;
 
-	start_linux((void *)kernel, swap, initrd_start, initrd_size, data->oftree,
-		    state);
+	start_linux((void *)kernel, swap, initrd_start, initrd_size,
+		    fdt_load_address, state);
 
 	restart_machine();
 
@@ -212,7 +219,7 @@ static int do_bootm_linux(struct image_data *data)
 	if (ret)
 		return ret;
 
-	return __do_bootm_linux(data, mem_free, 0);
+	return __do_bootm_linux(data, mem_free, 0, NULL);
 }
 
 static struct image_handler uimage_handler = {
@@ -237,7 +244,7 @@ struct zimage_header {
 
 #define ZIMAGE_MAGIC 0x016F2818
 
-static int do_bootz_linux_fdt(int fd, struct image_data *data)
+static int do_bootz_linux_fdt(int fd, struct image_data *data, void **outfdt)
 {
 	struct fdt_header __header, *header;
 	void *oftree;
@@ -245,9 +252,6 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 
 	u32 end;
 
-	if (data->oftree)
-		return -ENXIO;
-
 	header = &__header;
 	ret = read(fd, header, sizeof(*header));
 	if (ret < 0)
@@ -287,8 +291,8 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 			pr_err("unable to unflatten devicetree\n");
 			goto err_free;
 		}
-		data->oftree = of_get_fixed_tree(root);
-		if (!data->oftree) {
+		*outfdt = of_get_fixed_tree(root);
+		if (!*outfdt) {
 			pr_err("Unable to get fixed tree\n");
 			ret = -EINVAL;
 			goto err_free;
@@ -296,7 +300,7 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 
 		free(oftree);
 	} else {
-		data->oftree = oftree;
+		*outfdt = oftree;
 	}
 
 	pr_info("zImage: concatenated oftree detected\n");
@@ -318,6 +322,7 @@ static int do_bootz_linux(struct image_data *data)
 	size_t image_size;
 	unsigned long load_address = data->os_address;
 	unsigned long mem_free;
+	void *fdt;
 
 	fd = open(data->os_file, O_RDONLY);
 	if (fd < 0) {
@@ -388,13 +393,13 @@ static int do_bootz_linux(struct image_data *data)
 			*(u32 *)ptr = swab32(*(u32 *)ptr);
 	}
 
-	ret = do_bootz_linux_fdt(fd, data);
+	ret = do_bootz_linux_fdt(fd, data, &fdt);
 	if (ret && ret != -ENXIO)
 		goto err_out;
 
 	close(fd);
 
-	return __do_bootm_linux(data, mem_free, swap);
+	return __do_bootm_linux(data, mem_free, swap, fdt);
 
 err_out:
 	close(fd);
@@ -559,7 +564,7 @@ static int do_bootm_aimage(struct image_data *data)
 	else
 		mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
 
-	return __do_bootm_linux(data, mem_free, 0);
+	return __do_bootm_linux(data, mem_free, 0, NULL);
 
 err_out:
 	linux_bootargs_overwrite(NULL);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
