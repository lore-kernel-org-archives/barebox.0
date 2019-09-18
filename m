Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUnI-0001y6-8u
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 07:54:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Sep 2019 09:54:06 +0200
Message-Id: <20190918075421.20456-2-s.hauer@pengutronix.de>
In-Reply-To: <20190918075421.20456-1-s.hauer@pengutronix.de>
References: <20190918075421.20456-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/16] ARM: start: Allow to pass machine type as boarddata
To: Barebox List <barebox@lists.infradead.org>

Allow to pass a machine type number as directly as boarddata. This makes
it easy for non device tree boards to pass a machine type and to
identify themselves during runtime.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index c97b2770c4..0c2e9fb9a8 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -193,7 +193,19 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 		uint32_t totalsize = 0;
 		const char *name;
 
-		if (blob_is_fdt(boarddata)) {
+		if ((unsigned long)boarddata < 8192) {
+			struct barebox_arm_boarddata *bd;
+			uint32_t machine_type = (uint32_t)boarddata;
+			unsigned long mem = arm_mem_boarddata(membase, endmem,
+							      sizeof(*bd));
+			pr_debug("found machine type %d in boarddata\n",
+				 machine_type);
+			bd = barebox_boarddata = (void *)mem;
+			barebox_boarddata_size = sizeof(*bd);
+			bd->magic = BAREBOX_ARM_BOARDDATA_MAGIC;
+			bd->machine = machine_type;
+			malloc_end = mem;
+		} else if (blob_is_fdt(boarddata)) {
 			totalsize = get_unaligned_be32(boarddata + 4);
 			name = "DTB";
 		} else if (blob_is_compressed_fdt(boarddata)) {
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
