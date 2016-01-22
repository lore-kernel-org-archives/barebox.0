Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aMWDW-0003q6-5y
 for barebox@lists.infradead.org; Fri, 22 Jan 2016 07:33:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jan 2016 08:32:23 +0100
Message-Id: <1453447952-30818-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1453447952-30818-1-git-send-email-s.hauer@pengutronix.de>
References: <1453447952-30818-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/14] ARM: bootm: Use kernel handler to start barebox image
To: Barebox List <barebox@lists.infradead.org>

barebox can be called with the kernel calling convention, so
we can reuse the handler instead of creating a barebox specific
handler.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c | 30 +-----------------------------
 1 file changed, 1 insertion(+), 29 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 0855907..010b668 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -355,37 +355,9 @@ static struct image_handler zimage_handler = {
 	.filetype = filetype_arm_zimage,
 };
 
-static int do_bootm_barebox(struct image_data *data)
-{
-	void *barebox;
-
-	barebox = read_file(data->os_file, NULL);
-	if (!barebox)
-		return -EINVAL;
-
-	if (IS_ENABLED(CONFIG_OFTREE) && data->of_root_node) {
-		data->oftree = of_get_fixed_tree(data->of_root_node);
-		fdt_add_reserve_map(data->oftree);
-		of_print_cmdline(data->of_root_node);
-		if (bootm_verbose(data) > 1)
-			of_print_nodes(data->of_root_node, 0);
-	}
-
-	if (bootm_verbose(data)) {
-		printf("\nStarting barebox at 0x%p", barebox);
-		if (data->oftree)
-			printf(", oftree at 0x%p", data->oftree);
-		printf("...\n");
-	}
-
-	start_linux(barebox, 0, 0, 0, data->oftree);
-
-	restart_machine();
-}
-
 static struct image_handler barebox_handler = {
 	.name = "ARM barebox",
-	.bootm = do_bootm_barebox,
+	.bootm = do_bootm_linux,
 	.filetype = filetype_arm_barebox,
 };
 
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
