Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1UCS5f-0004Zc-NL
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:38 +0100
Message-Id: <1362390820-10333-36-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 35/37] ARM bootm: Switch initrd support to unflattened tree
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/armlinux.c |    2 --
 arch/arm/lib/bootm.c    |   11 +++++++-
 common/oftree.c         |   66 -----------------------------------------------
 3 files changed, 10 insertions(+), 69 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 4dd84ed..40a63ea 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -266,8 +266,6 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 
 	if (oftree) {
 		printf("booting Linux kernel with devicetree\n");
-		fdt_initrd(oftree, initrd_address,
-			initrd_address + initrd_size, 1);
 		params = oftree;
 	} else {
 		setup_tags(initrd_address, initrd_size, swap);
diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 00c4908..4decee4 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -26,7 +26,7 @@
 static int __do_bootm_linux(struct image_data *data, int swap)
 {
 	unsigned long kernel;
-	unsigned long initrd_start = 0, initrd_size = 0;
+	unsigned long initrd_start = 0, initrd_size = 0, initrd_end = 0;
 	struct memory_bank *bank;
 	unsigned long load_address;
 
@@ -82,9 +82,18 @@ static int __do_bootm_linux(struct image_data *data, int swap)
 
 	if (data->initrd_res) {
 		initrd_start = data->initrd_res->start;
+		initrd_end = data->initrd_res->end;
 		initrd_size = resource_size(data->initrd_res);
 	}
 
+	if (IS_ENABLED(CONFIG_OFTREE) && data->of_root_node) {
+		of_add_initrd(data->of_root_node, initrd_start, initrd_end);
+		if (initrd_end)
+			of_add_reserve_entry(initrd_start, initrd_end);
+		data->oftree = of_get_fixed_tree(data->of_root_node);
+		fdt_add_reserve_map(data->oftree);
+	}
+
 	if (bootm_verbose(data)) {
 		printf("\nStarting kernel at 0x%08lx", kernel);
 		if (initrd_size)
diff --git a/common/oftree.c b/common/oftree.c
index 44ffade..e6c82d6 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -273,72 +273,6 @@ int fdt_get_path_or_create(struct fdt_header *fdt, const char *path)
 	return nodeoffset;
 }
 
-int fdt_initrd(void *fdt, ulong initrd_start, ulong initrd_end, int force)
-{
-	int nodeoffset;
-	int err, j, total;
-	u32 tmp;
-	const char *path;
-	uint64_t addr, size;
-
-	/* Find the "chosen" node */
-	nodeoffset = fdt_path_offset(fdt, "/chosen");
-
-	/* If there is no "chosen" node in the blob return */
-	if (nodeoffset < 0) {
-		printf("fdt_initrd: %s\n", fdt_strerror(nodeoffset));
-		return nodeoffset;
-	}
-
-	/* just return if initrd_start/end aren't valid */
-	if ((initrd_start == 0) || (initrd_end == 0))
-		return 0;
-
-	total = fdt_num_mem_rsv(fdt);
-
-	/*
-	 * Look for an existing entry and update it. If we don't find
-	 * the entry, we will j be the next available slot.
-	 */
-	for (j = 0; j < total; j++) {
-		err = fdt_get_mem_rsv(fdt, j, &addr, &size);
-		if (addr == initrd_start) {
-			fdt_del_mem_rsv(fdt, j);
-			break;
-		}
-	}
-
-	err = fdt_add_mem_rsv(fdt, initrd_start, initrd_end - initrd_start);
-	if (err < 0) {
-		printf("fdt_initrd: %s\n", fdt_strerror(err));
-		return err;
-	}
-
-	path = fdt_getprop(fdt, nodeoffset, "linux,initrd-start", NULL);
-	if (!path || force) {
-		tmp = __cpu_to_be32(initrd_start);
-		err = fdt_setprop(fdt, nodeoffset,
-			"linux,initrd-start", &tmp, sizeof(tmp));
-		if (err < 0) {
-			printf("WARNING: "
-				"could not set linux,initrd-start %s.\n",
-				fdt_strerror(err));
-			return err;
-		}
-		tmp = __cpu_to_be32(initrd_end);
-		err = fdt_setprop(fdt, nodeoffset,
-			"linux,initrd-end", &tmp, sizeof(tmp));
-		if (err < 0) {
-			printf("WARNING: could not set linux,initrd-end %s.\n",
-				fdt_strerror(err));
-
-			return err;
-		}
-	}
-
-	return 0;
-}
-
 static int of_fixup_bootargs(struct device_node *root)
 {
 	struct device_node *node;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
