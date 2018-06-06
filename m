Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQSbi-0004DS-Kc
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 07:11:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Jun 2018 09:11:28 +0200
Message-Id: <20180606071129.28884-6-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] bootm: Drop data->oftree
To: Barebox List <barebox@lists.infradead.org>

It's no longer necessary to store the devicetree pointer in struct
image_data, it can be replaced with a local variable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c  | 6 ------
 include/bootm.h | 1 -
 2 files changed, 7 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 5ff6683fe7..8167c3a603 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -337,9 +337,6 @@ int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
 	struct fdt_header *oftree;
 	int ret;
 
-	if (data->oftree)
-		return 0;
-
 	if (!IS_ENABLED(CONFIG_OFTREE))
 		return 0;
 
@@ -431,8 +428,6 @@ int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
 	if (bootm_verbose(data) > 1)
 		of_print_nodes(data->of_root_node, 0);
 
-	data->oftree = oftree;
-
 	return 0;
 }
 
@@ -576,7 +571,6 @@ int bootm_boot(struct bootm_data *bootm_data)
 		 * When we only allow booting signed images make sure everything
 		 * we boot is in the OS image and not given separately.
 		 */
-		data->oftree = NULL;
 		data->oftree_file = NULL;
 		data->initrd_file = NULL;
 		if (os_type != filetype_oftree) {
diff --git a/include/bootm.h b/include/bootm.h
index 62951d6058..03779772c4 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -78,7 +78,6 @@ struct image_data {
 	void *fit_config;
 
 	struct device_node *of_root_node;
-	struct fdt_header *oftree;
 	struct resource *oftree_res;
 
 	/*
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
