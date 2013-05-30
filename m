Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui0M9-0004Hq-B4
 for barebox@lists.infradead.org; Thu, 30 May 2013 10:45:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 12:44:53 +0200
Message-Id: <1369910694-20991-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369910694-20991-1-git-send-email-s.hauer@pengutronix.de>
References: <1369910694-20991-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] bootm: make sure to print fixed oftree
To: barebox@lists.infradead.org

when doing bootm -v -v we dumped the original tree to the console.
Make sure to print the fixed tree instead so that the fixups can
be examined.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c | 2 ++
 commands/bootm.c     | 4 ----
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index e7a0625..133e04d 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -91,6 +91,8 @@ static int __do_bootm_linux(struct image_data *data, int swap)
 			of_add_reserve_entry(initrd_start, initrd_end);
 		data->oftree = of_get_fixed_tree(data->of_root_node);
 		fdt_add_reserve_map(data->oftree);
+		if (bootm_verbose(data) > 1)
+			of_print_nodes(data->of_root_node, 0);
 	}
 
 	if (bootm_verbose(data)) {
diff --git a/commands/bootm.c b/commands/bootm.c
index 5dd1703..3976eb4 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -398,10 +398,6 @@ static int do_bootm(int argc, char *argv[])
 		if (bootm_verbose(&data) && data.of_root_node)
 			printf("using internal devicetree\n");
 	}
-
-
-	if (bootm_verbose(&data) > 1 && data.of_root_node)
-		of_print_nodes(data.of_root_node, 0);
 #endif
 	if (data.os_address == UIMAGE_SOME_ADDRESS)
 		data.os_address = UIMAGE_INVALID_ADDRESS;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
