Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XwB26-0006CW-ME
 for barebox@lists.infradead.org; Wed, 03 Dec 2014 14:35:59 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed,  3 Dec 2014 15:34:00 +0100
Message-Id: <1417617240-16852-2-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1417617240-16852-1-git-send-email-jlu@pengutronix.de>
References: <1417617240-16852-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 2/2] fdt: of_unflatten_dtb can work on const data
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/of/fdt.c | 4 ++--
 include/of.h     | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index cfe183350978..89f291787962 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -54,7 +54,7 @@ static inline char *dt_string(struct fdt_header *f, char *strstart, uint32_t ofs
  * Parse a flat device tree binary blob and return a pointer to the
  * unflattened tree.
  */
-struct device_node *of_unflatten_dtb(void *infdt)
+struct device_node *of_unflatten_dtb(const void *infdt)
 {
 	const void *nodep;	/* property node pointer */
 	uint32_t tag;		/* tag */
@@ -69,7 +69,7 @@ struct device_node *of_unflatten_dtb(void *infdt)
 	struct fdt_header f;
 	int ret;
 	unsigned int maxlen;
-	struct fdt_header *fdt = infdt;
+	const struct fdt_header *fdt = infdt;
 
 	if (fdt->magic != cpu_to_fdt32(FDT_MAGIC)) {
 		pr_err("bad magic: 0x%08x\n", fdt32_to_cpu(fdt->magic));
diff --git a/include/of.h b/include/of.h
index 7b93c58474de..5273f87ebd1d 100644
--- a/include/of.h
+++ b/include/of.h
@@ -98,7 +98,7 @@ void of_print_cmdline(struct device_node *root);
 void of_print_nodes(struct device_node *node, int indent);
 int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
-struct device_node *of_unflatten_dtb(void *fdt);
+struct device_node *of_unflatten_dtb(const void *fdt);
 
 struct cdev;
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
