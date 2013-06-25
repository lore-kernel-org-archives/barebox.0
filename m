Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22e.google.com ([2a00:1450:4013:c00::22e])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrPRD-00023I-Km
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 09:21:25 +0000
Received: by mail-ee0-f46.google.com with SMTP id d41so6481686eek.5
 for <barebox@lists.infradead.org>; Tue, 25 Jun 2013 02:21:00 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 25 Jun 2013 11:20:45 +0200
Message-Id: <1372152047-28134-8-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 7/9] OF: remove device and resource pointer from struct
 device_node
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

struct device_node has its own resources and a pointer to associated
device_d. With recent platform related OF code, we can convert the
only user of it and remove those pointers from struct device_node.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |    8 ++++----
 drivers/of/gpio.c |    6 +++++-
 include/of.h      |    3 ---
 3 files changed, 9 insertions(+), 8 deletions(-)

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
diff --git a/drivers/of/gpio.c b/drivers/of/gpio.c
index 41e91ec..7f6d99c 100644
--- a/drivers/of/gpio.c
+++ b/drivers/of/gpio.c
@@ -10,6 +10,10 @@ int of_get_named_gpio(struct device_node *np,
 {
 	int ret;
 	struct of_phandle_args out_args;
+	struct device_d *dev = of_find_device_by_node(np);
+
+	if (!dev)
+		return -EINVAL;
 
 	ret = of_parse_phandle_with_args(np, propname, "#gpio-cells",
 					index, &out_args);
@@ -18,7 +22,7 @@ int of_get_named_gpio(struct device_node *np,
 		return -EINVAL;
 	}
 
-	ret = gpio_get_num(out_args.np->device, out_args.args[0]);
+	ret = gpio_get_num(dev, out_args.args[0]);
 	if (ret < 0)
 		return ret;
 
diff --git a/include/of.h b/include/of.h
index f1f555f..0298189 100644
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
