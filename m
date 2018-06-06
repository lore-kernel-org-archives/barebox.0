Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQSbi-0004DO-MM
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 07:11:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Jun 2018 09:11:25 +0200
Message-Id: <20180606071129.28884-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] ppc: bootm: rename variables
To: Barebox List <barebox@lists.infradead.org>

In bootm_relocate_fdt 'addr' is used for two different purposes, once for the
os address and once for the new fdt. Make the code more readable by
using two variables describing their meaning, 'os' and 'newfdt'.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/lib/ppclinux.c | 26 ++++++++++++++------------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/arch/ppc/lib/ppclinux.c b/arch/ppc/lib/ppclinux.c
index 3fca6b2720..ed2f769c25 100644
--- a/arch/ppc/lib/ppclinux.c
+++ b/arch/ppc/lib/ppclinux.c
@@ -14,34 +14,36 @@
 #include <restart.h>
 #include <fs.h>
 
-static int bootm_relocate_fdt(void *addr, struct image_data *data)
+static int bootm_relocate_fdt(void *os, struct image_data *data)
 {
-	if (addr < LINUX_TLB1_MAX_ADDR) {
+	void *newfdt;
+
+	if (os < LINUX_TLB1_MAX_ADDR) {
 		/* The kernel is within  the boot TLB mapping.
 		 * Put the DTB above if there is no space
 		 * below.
 		 */
-		if (addr < (void *)data->oftree->totalsize) {
-			addr = (void *)PAGE_ALIGN((phys_addr_t)addr +
+		if (os < (void *)data->oftree->totalsize) {
+			os = (void *)PAGE_ALIGN((phys_addr_t)os +
 					data->os->header.ih_size);
-			addr += data->oftree->totalsize;
-			if (addr < LINUX_TLB1_MAX_ADDR)
-				addr = LINUX_TLB1_MAX_ADDR;
+			os += data->oftree->totalsize;
+			if (os < LINUX_TLB1_MAX_ADDR)
+				os = LINUX_TLB1_MAX_ADDR;
 		}
 	}
 
-	if (addr > LINUX_TLB1_MAX_ADDR) {
+	if (os > LINUX_TLB1_MAX_ADDR) {
 		pr_crit("Unable to relocate DTB to Linux TLB\n");
 		return 1;
 	}
 
-	addr = (void *)PAGE_ALIGN_DOWN((phys_addr_t)addr -
+	newfdt = (void *)PAGE_ALIGN_DOWN((phys_addr_t)os -
 			data->oftree->totalsize);
-	memcpy(addr, data->oftree, data->oftree->totalsize);
+	memcpy(newfdt, data->oftree, data->oftree->totalsize);
 	free(data->oftree);
-	data->oftree = addr;
+	data->oftree = newfdt;
 
-	pr_info("Relocating device tree to 0x%p\n", addr);
+	pr_info("Relocating device tree to 0x%p\n", newfdt);
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
