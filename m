Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSoA0-0004dM-Al
 for barebox@lists.infradead.org; Thu, 07 Nov 2019 20:13:41 +0000
Received: from astat.fritz.box (a89-183-53-44.net-htp.de [89.183.53.44])
 by lynxeye.de (Postfix) with ESMTPA id 7116BE7414D
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2019 21:13:00 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  7 Nov 2019 21:12:56 +0100
Message-Id: <20191107201256.35249-1-dev@lynxeye.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: start: check for machine type last
To: barebox@lists.infradead.org

A valid DTB may reside low in the Barebox binary address map. If this
binary is started at a very low address, we might mistake the pointer
for a machine type. Make sure to check for all other possibilities first
before interpreting the boarddata as a raw machine type.

Fixes: 19c24e2f0121 (ARM: start: Allow to pass machine type as boarddata)
Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/cpu/start.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 44d974e40ef2..d99dd147b004 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -193,7 +193,17 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 		uint32_t totalsize = 0;
 		const char *name;
 
-		if ((unsigned long)boarddata < 8192) {
+		if (blob_is_fdt(boarddata)) {
+			totalsize = get_unaligned_be32(boarddata + 4);
+			name = "DTB";
+		} else if (blob_is_compressed_fdt(boarddata)) {
+			struct barebox_arm_boarddata_compressed_dtb *bd = boarddata;
+			totalsize = bd->datalen + sizeof(*bd);
+			name = "Compressed DTB";
+		} else if (blob_is_arm_boarddata(boarddata)) {
+			totalsize = sizeof(struct barebox_arm_boarddata);
+			name = "machine type";
+		} else if ((unsigned long)boarddata < 8192) {
 			struct barebox_arm_boarddata *bd;
 			uint32_t machine_type = (unsigned long)boarddata;
 			unsigned long mem = arm_mem_boarddata(membase, endmem,
@@ -205,16 +215,6 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 			bd->magic = BAREBOX_ARM_BOARDDATA_MAGIC;
 			bd->machine = machine_type;
 			malloc_end = mem;
-		} else if (blob_is_fdt(boarddata)) {
-			totalsize = get_unaligned_be32(boarddata + 4);
-			name = "DTB";
-		} else if (blob_is_compressed_fdt(boarddata)) {
-			struct barebox_arm_boarddata_compressed_dtb *bd = boarddata;
-			totalsize = bd->datalen + sizeof(*bd);
-			name = "Compressed DTB";
-		} else if (blob_is_arm_boarddata(boarddata)) {
-			totalsize = sizeof(struct barebox_arm_boarddata);
-			name = "machine type";
 		}
 
 		if (totalsize) {
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
