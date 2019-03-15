Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4iva-0004sN-5I
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 09:15:00 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 15 Mar 2019 10:14:44 +0100
Message-Id: <20190315091453.22393-6-jbe@pengutronix.de>
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
Subject: [PATCH 06/15] pstore: improve error report for failed setup
To: barebox@lists.infradead.org
Cc: Kees Cook <keescook@chromium.org>

From: Kees Cook <keescook@chromium.org>

When setting ramoops record sizes, sometimes it's not clear which
parameters contributed to the allocation failure. This adds a per-zone
name and expands the failure reports.

Signed-off-by: Kees Cook <keescook@chromium.org>
[p.zabel@pengutronix.de: ported to Barebox from Linux commit c443a5f3f1f1]
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 fs/pstore/ram.c | 49 ++++++++++++++++++++++++++++++++-----------------
 1 file changed, 32 insertions(+), 17 deletions(-)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 58422dda54..d46612fbff 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -274,7 +274,8 @@ static void ramoops_free_przs(struct ramoops_context *cxt)
 	kfree(cxt->przs);
 }
 
-static int ramoops_init_przs(struct ramoops_context *cxt,
+static int ramoops_init_przs(const char *name,
+			     struct ramoops_context *cxt,
 			     struct persistent_ram_zone ***przs,
 			     phys_addr_t *paddr, size_t mem_sz,
 			     ssize_t record_size,
@@ -300,24 +301,33 @@ static int ramoops_init_przs(struct ramoops_context *cxt,
 		if (*cnt == 0)
 			return 0;
 		record_size = mem_sz / *cnt;
-		if (record_size == 0)
+		if (record_size == 0) {
+			pr_err("%s record size == 0 (%zu / %u)\n",
+				name, mem_sz, *cnt);
 			goto fail;
+		}
 	} else {
 		*cnt = mem_sz / record_size;
-		if (*cnt == 0)
+		if (*cnt == 0) {
+			pr_err("%s record count == 0 (%zu / %zu)\n",
+				name, mem_sz, record_size);
 			goto fail;
+		}
 	}
 
 	if (*paddr + mem_sz - cxt->phys_addr > cxt->size) {
-		pr_err("no room for mem region (0x%zx@0x%llx) in (0x%lx@0x%llx)\n",
+		pr_err("no room for %s mem region (0x%zx@0x%llx) in (0x%lx@0x%llx)\n",
+			name,
 			mem_sz, (unsigned long long)*paddr,
 			cxt->size, (unsigned long long)cxt->phys_addr);
 		goto fail;
 	}
 
 	zone_sz = mem_sz / *cnt;
-	if (!zone_sz)
+	if (!zone_sz) {
+		pr_err("%s zone size == 0\n", name);
 		goto fail;
+	}
 
 	prz_ar = kcalloc(*cnt, sizeof(**przs), GFP_KERNEL);
 	if (!prz_ar)
@@ -328,8 +338,9 @@ static int ramoops_init_przs(struct ramoops_context *cxt,
 				&cxt->ecc_info, cxt->memtype);
 		if (IS_ERR(prz_ar[i])) {
 			err = PTR_ERR(prz_ar[i]);
-			pr_err("failed to request mem region (0x%zx@0x%llx): %d\n",
-				record_size, (unsigned long long)*paddr, err);
+			pr_err("failed to request %s mem region (0x%zx@0x%llx): %d\n",
+				name, record_size,
+				(unsigned long long)*paddr, err);
 
 			while (i > 0) {
 				i--;
@@ -349,7 +360,8 @@ fail:
 	return err;
 }
 
-static int ramoops_init_prz(struct ramoops_context *cxt,
+static int ramoops_init_prz(const char *name,
+			    struct ramoops_context *cxt,
 			    struct persistent_ram_zone **prz,
 			    phys_addr_t *paddr, size_t sz, u32 sig)
 {
@@ -357,8 +369,8 @@ static int ramoops_init_prz(struct ramoops_context *cxt,
 		return 0;
 
 	if (*paddr + sz - cxt->phys_addr > cxt->size) {
-		pr_err("no room for mem region (0x%zx@0x%llx) in (0x%lx@0x%llx)\n",
-			sz, (unsigned long long)*paddr,
+		pr_err("no room for %s mem region (0x%zx@0x%llx) in (0x%lx@0x%llx)\n",
+			name, sz, (unsigned long long)*paddr,
 			cxt->size, (unsigned long long)cxt->phys_addr);
 		return -ENOMEM;
 	}
@@ -368,8 +380,8 @@ static int ramoops_init_prz(struct ramoops_context *cxt,
 	if (IS_ERR(*prz)) {
 		int err = PTR_ERR(*prz);
 
-		pr_err("failed to request mem region (0x%zx@0x%llx): %d\n",
-			sz, (unsigned long long)*paddr, err);
+		pr_err("failed to request %s mem region (0x%zx@0x%llx): %d\n",
+			name, sz, (unsigned long long)*paddr, err);
 		return err;
 	}
 
@@ -497,21 +509,24 @@ static int ramoops_probe(struct device_d *dev)
 
 	dump_mem_sz = cxt->size - cxt->console_size - cxt->ftrace_size
 			- cxt->pmsg_size;
-	err = ramoops_init_przs(cxt, &cxt->przs, &paddr, dump_mem_sz,
-				cxt->record_size, &cxt->max_dump_cnt, 0, 0);
+	err = ramoops_init_przs("dump", cxt, &cxt->przs, &paddr,
+				dump_mem_sz, cxt->record_size,
+				&cxt->max_dump_cnt, 0, 0);
 	if (err)
 		goto fail_out;
 
-	err = ramoops_init_prz(cxt, &cxt->cprz, &paddr,
+	err = ramoops_init_prz("console", cxt, &cxt->cprz, &paddr,
 			       cxt->console_size, 0);
 	if (err)
 		goto fail_init_cprz;
 
-	err = ramoops_init_prz(cxt, &cxt->fprz, &paddr, cxt->ftrace_size, 0);
+	err = ramoops_init_prz("ftrace", cxt, &cxt->fprz, &paddr,
+			       cxt->ftrace_size, 0);
 	if (err)
 		goto fail_init_fprz;
 
-	err = ramoops_init_prz(cxt, &cxt->mprz, &paddr, cxt->pmsg_size, 0);
+	err = ramoops_init_prz("pmsg", cxt, &cxt->mprz, &paddr,
+			       cxt->pmsg_size, 0);
 	if (err)
 		goto fail_init_mprz;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
