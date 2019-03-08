Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h2DDO-0006GW-Uj
 for barebox@lists.infradead.org; Fri, 08 Mar 2019 10:59:02 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri,  8 Mar 2019 11:58:54 +0100
Message-Id: <20190308105854.10089-5-o.rempel@pengutronix.de>
In-Reply-To: <20190308105854.10089-1-o.rempel@pengutronix.de>
References: <20190308105854.10089-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 4/4] MIPS: remove request_sdram_region "fdt"
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

It is actually not needed at barebox runtime

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/boot/dtb.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/mips/boot/dtb.c b/arch/mips/boot/dtb.c
index ea30e16f21..5e316270f6 100644
--- a/arch/mips/boot/dtb.c
+++ b/arch/mips/boot/dtb.c
@@ -29,10 +29,6 @@ void of_add_memory_bank(struct device_node *node, bool dump, int r,
 
 	if (dump)
 		pr_info("%s: %s: 0x%llx@0x%llx\n", node->name, str, size, base);
-
-	if (glob_fdt && glob_fdt_size)
-		request_sdram_region("fdt", (resource_size_t)glob_fdt,
-				     glob_fdt_size);
 }
 
 extern char __dtb_start[];
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
