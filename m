Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x229.google.com ([2a00:1450:4008:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu56d-0005aB-Dc
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 18:15:14 +0000
Received: by mail-bk0-f41.google.com with SMTP id jc3so2511237bkc.14
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 11:14:49 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue,  2 Jul 2013 20:14:37 +0200
Message-Id: <1372788879-11028-9-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v3 08/10] OF: remove device and resource pointer from struct
 device_node
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

struct device_node has its own resources and a pointer to associated
device_d. With recent platform related OF code, we can convert the
only user of it and remove those pointers from struct device_node.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v3:
- remove gpio related changes as there is now a separate patch

Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |    8 ++++----
 include/of.h      |    3 ---
 2 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 9d63127..0244281 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1594,6 +1594,7 @@ void of_free(struct device_node *node)
 {
 	struct device_node *n, *nt;
 	struct property *p, *pt;
+	struct device_d *dev;
 
 	if (!node)
 		return;
@@ -1610,10 +1611,9 @@ void of_free(struct device_node *node)
 		list_del(&node->list);
 	}
 
-	if (node->device)
-		node->device->device_node = NULL;
-	else
-		free(node->resource);
+	dev = of_find_device_by_node(node);
+	if (dev)
+		dev->device_node = NULL;
 
 	free(node->name);
 	free(node->full_name);
diff --git a/include/of.h b/include/of.h
index f33ed20..f01d854 100644
--- a/include/of.h
+++ b/include/of.h
@@ -30,9 +30,6 @@ struct device_node {
 	struct list_head children;
 	struct list_head parent_list;
 	struct list_head list;
-	struct resource *resource;
-	int num_resource;
-	struct device_d *device;
 	struct list_head phandles;
 	phandle phandle;
 };
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
