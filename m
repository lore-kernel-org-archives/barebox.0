Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQSbi-0004DR-KS
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 07:11:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Jun 2018 09:11:27 +0200
Message-Id: <20180606071129.28884-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] ppc: bootm: Drop usage of data->oftree
To: Barebox List <barebox@lists.infradead.org>

The ppc bootm code uses data->oftree to store its private data pointers.
Drop this and use a local variable instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/lib/ppclinux.c | 35 +++++++++++++++++------------------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/arch/ppc/lib/ppclinux.c b/arch/ppc/lib/ppclinux.c
index 67649f3b46..05c29be7da 100644
--- a/arch/ppc/lib/ppclinux.c
+++ b/arch/ppc/lib/ppclinux.c
@@ -14,7 +14,8 @@
 #include <restart.h>
 #include <fs.h>
 
-static int bootm_relocate_fdt(struct image_data *data)
+static struct fdt_header *bootm_relocate_fdt(struct image_data *data,
+					     struct fdt_header *fdt)
 {
 	void *os = (void *)data->os_address;
 	void *newfdt;
@@ -24,10 +25,10 @@ static int bootm_relocate_fdt(struct image_data *data)
 		 * Put the DTB above if there is no space
 		 * below.
 		 */
-		if (os < (void *)data->oftree->totalsize) {
+		if (os < (void *)fdt->totalsize) {
 			os = (void *)PAGE_ALIGN((phys_addr_t)os +
 					data->os->header.ih_size);
-			os += data->oftree->totalsize;
+			os += fdt->totalsize;
 			if (os < LINUX_TLB1_MAX_ADDR)
 				os = LINUX_TLB1_MAX_ADDR;
 		}
@@ -35,17 +36,15 @@ static int bootm_relocate_fdt(struct image_data *data)
 
 	if (os > LINUX_TLB1_MAX_ADDR) {
 		pr_crit("Unable to relocate DTB to Linux TLB\n");
-		return 1;
+		return NULL;
 	}
 
-	newfdt = (void *)PAGE_ALIGN_DOWN((phys_addr_t)os -
-			data->oftree->totalsize);
-	memcpy(newfdt, data->oftree, data->oftree->totalsize);
-	free(data->oftree);
-	data->oftree = newfdt;
+	newfdt = (void *)PAGE_ALIGN_DOWN((phys_addr_t)os - fdt->totalsize);
+	memcpy(newfdt, fdt, fdt->totalsize);
+	free(fdt);
 
 	pr_info("Relocating device tree to 0x%p\n", newfdt);
-	return 0;
+	return newfdt;
 }
 
 static int do_bootm_linux(struct image_data *data)
@@ -53,13 +52,14 @@ static int do_bootm_linux(struct image_data *data)
 	void	(*kernel)(void *, void *, unsigned long,
 			unsigned long, unsigned long);
 	int ret;
+	struct fdt_header *fdt;
 
 	ret = bootm_load_os(data, data->os_address);
 	if (ret)
 		return ret;
 
-	data->oftree = of_get_fixed_tree(data->of_root_node);
-	if (!data->oftree) {
+	fdt = of_get_fixed_tree(data->of_root_node);
+	if (!fdt) {
 		pr_err("bootm: No devicetree given.\n");
 		return -EINVAL;
 	}
@@ -71,15 +71,14 @@ static int do_bootm_linux(struct image_data *data)
 	 * Linux mapped TLB.
 	 */
 	if (IS_ENABLED(CONFIG_MPC85xx)) {
-		void *addr = data->oftree;
-
-		if ((addr + data->oftree->totalsize) > LINUX_TLB1_MAX_ADDR) {
-			if (bootm_relocate_fdt(data))
+		if (((void *)fdt + fdt->totalsize) > LINUX_TLB1_MAX_ADDR) {
+			fdt = bootm_relocate_fdt(data, fdt);
+			if (!fdt)
 				goto error;
 		}
 	}
 
-	fdt_add_reserve_map(data->oftree);
+	fdt_add_reserve_map(fdt);
 
 	kernel = (void *)(data->os_address + data->os_entry);
 
@@ -91,7 +90,7 @@ static int do_bootm_linux(struct image_data *data)
 	 *   r6: NULL
 	 *   r7: NULL
 	 */
-	kernel(data->oftree, kernel, 0, 0, 0);
+	kernel(fdt, kernel, 0, 0, 0);
 
 	restart_machine();
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
