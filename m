Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V2zvp-00021e-Gi
 for barebox@lists.infradead.org; Sat, 27 Jul 2013 08:32:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 27 Jul 2013 10:32:21 +0200
Message-Id: <1374913941-17529-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374913941-17529-1-git-send-email-s.hauer@pengutronix.de>
References: <1374913941-17529-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: bootm: Print Kernel commandline unconditionally
To: barebox@lists.infradead.org

The Kernel commandline is an important debugging aid when people
ask why their Kernel won't start, so print it unconditionally.
This is done in !dt mode anyway, so also do it with dt.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 0786e22..599b09a 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -91,8 +91,7 @@ static int __do_bootm_linux(struct image_data *data, int swap)
 			of_add_reserve_entry(initrd_start, initrd_end);
 		data->oftree = of_get_fixed_tree(data->of_root_node);
 		fdt_add_reserve_map(data->oftree);
-		if (bootm_verbose(data))
-			of_print_cmdline(data->of_root_node);
+		of_print_cmdline(data->of_root_node);
 		if (bootm_verbose(data) > 1)
 			of_print_nodes(data->of_root_node, 0);
 	}
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
