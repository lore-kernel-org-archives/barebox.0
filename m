Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4ivZ-0004sH-Tx
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 09:14:59 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 15 Mar 2019 10:14:42 +0100
Message-Id: <20190315091453.22393-4-jbe@pengutronix.de>
In-Reply-To: <20190315091453.22393-1-jbe@pengutronix.de>
References: <20190315091453.22393-1-jbe@pengutronix.de>
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
Subject: [PATCH 04/15] pstore: Make ramoops_init_przs generic for other prz
 arrays
To: barebox@lists.infradead.org
Cc: Kees Cook <keescook@chromium.org>

From: Kees Cook <keescook@chromium.org>

Currently ramoops_init_przs() is hard wired only for panic dump zone
array. In preparation for the ftrace zone array (one zone per-cpu) and pmsg
zone array, make the function more generic to be able to handle this case.

Heavily based on similar work from Joel Fernandes.

Signed-off-by: Kees Cook <keescook@chromium.org>
[p.zabel@pengutronix.de: ported to Barebox from Linux commit de83209249d6]
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 fs/pstore/ram.c | 86 ++++++++++++++++++++++++++++++++++++++-------------------
 1 file changed, 58 insertions(+), 28 deletions(-)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 8dc583ea86..58422dda54 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -274,49 +274,78 @@ static void ramoops_free_przs(struct ramoops_context *cxt)
 	kfree(cxt->przs);
 }
 
-static int ramoops_init_przs(struct ramoops_context *cxt, phys_addr_t *paddr,
-			     size_t dump_mem_sz)
+static int ramoops_init_przs(struct ramoops_context *cxt,
+			     struct persistent_ram_zone ***przs,
+			     phys_addr_t *paddr, size_t mem_sz,
+			     ssize_t record_size,
+			     unsigned int *cnt, u32 sig, u32 flags)
 {
 	int err = -ENOMEM;
 	int i;
+	size_t zone_sz;
+	struct persistent_ram_zone **prz_ar;
 
-	if (!cxt->record_size)
+	/* Allocate nothing for 0 mem_sz or 0 record_size. */
+	if (mem_sz == 0 || record_size == 0) {
+		*cnt = 0;
 		return 0;
-
-	if (*paddr + dump_mem_sz - cxt->phys_addr > cxt->size) {
-		pr_err("no room for dumps\n");
-		return -ENOMEM;
 	}
 
-	cxt->max_dump_cnt = dump_mem_sz / cxt->record_size;
-	if (!cxt->max_dump_cnt)
-		return -ENOMEM;
+	/*
+	 * If we have a negative record size, calculate it based on
+	 * mem_sz / *cnt. If we have a positive record size, calculate
+	 * cnt from mem_sz / record_size.
+	 */
+	if (record_size < 0) {
+		if (*cnt == 0)
+			return 0;
+		record_size = mem_sz / *cnt;
+		if (record_size == 0)
+			goto fail;
+	} else {
+		*cnt = mem_sz / record_size;
+		if (*cnt == 0)
+			goto fail;
+	}
 
-	cxt->przs = kzalloc(sizeof(*cxt->przs) * cxt->max_dump_cnt,
-			     GFP_KERNEL);
-	if (!cxt->przs) {
-		pr_err("failed to initialize a prz array for dumps\n");
-		goto fail_prz;
+	if (*paddr + mem_sz - cxt->phys_addr > cxt->size) {
+		pr_err("no room for mem region (0x%zx@0x%llx) in (0x%lx@0x%llx)\n",
+			mem_sz, (unsigned long long)*paddr,
+			cxt->size, (unsigned long long)cxt->phys_addr);
+		goto fail;
 	}
 
-	for (i = 0; i < cxt->max_dump_cnt; i++) {
-		size_t sz = cxt->record_size;
+	zone_sz = mem_sz / *cnt;
+	if (!zone_sz)
+		goto fail;
 
-		cxt->przs[i] = persistent_ram_new(*paddr, sz, 0,
-						  &cxt->ecc_info,
-						  cxt->memtype);
-		if (IS_ERR(cxt->przs[i])) {
-			err = PTR_ERR(cxt->przs[i]);
+	prz_ar = kcalloc(*cnt, sizeof(**przs), GFP_KERNEL);
+	if (!prz_ar)
+		goto fail;
+
+	for (i = 0; i < *cnt; i++) {
+		prz_ar[i] = persistent_ram_new(*paddr, zone_sz, sig,
+				&cxt->ecc_info, cxt->memtype);
+		if (IS_ERR(prz_ar[i])) {
+			err = PTR_ERR(prz_ar[i]);
 			pr_err("failed to request mem region (0x%zx@0x%llx): %d\n",
-				sz, (unsigned long long)*paddr, err);
-			goto fail_prz;
+				record_size, (unsigned long long)*paddr, err);
+
+			while (i > 0) {
+				i--;
+				persistent_ram_free(prz_ar[i]);
+			}
+			kfree(prz_ar);
+			goto fail;
 		}
-		*paddr += sz;
+		*paddr += zone_sz;
 	}
 
+	*przs = prz_ar;
 	return 0;
-fail_prz:
-	ramoops_free_przs(cxt);
+
+fail:
+	*cnt = 0;
 	return err;
 }
 
@@ -468,7 +497,8 @@ static int ramoops_probe(struct device_d *dev)
 
 	dump_mem_sz = cxt->size - cxt->console_size - cxt->ftrace_size
 			- cxt->pmsg_size;
-	err = ramoops_init_przs(cxt, &paddr, dump_mem_sz);
+	err = ramoops_init_przs(cxt, &cxt->przs, &paddr, dump_mem_sz,
+				cxt->record_size, &cxt->max_dump_cnt, 0, 0);
 	if (err)
 		goto fail_out;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
