Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp11.mail.ru ([94.100.176.85])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZjFG-0007HX-Ev
 for barebox@lists.infradead.org; Fri, 25 Oct 2013 15:24:15 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 25 Oct 2013 19:23:48 +0400
Message-Id: <1382714628-27038-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] console: Obey "linux,
 stdout-path" parameter regardless of CONSOLE_ACTIVATE_XX
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 common/console.c  |  4 ++--
 drivers/of/base.c | 13 ++++---------
 include/of.h      |  2 +-
 3 files changed, 7 insertions(+), 12 deletions(-)

diff --git a/common/console.c b/common/console.c
index 56bc864..2d31d71 100644
--- a/common/console.c
+++ b/common/console.c
@@ -168,8 +168,8 @@ int console_register(struct console_device *newcdev)
 		activate = 1;
 	}
 
-	if (newcdev->dev && of_device_is_stdout_path(newcdev->dev))
-		activate = 1;
+	if (newcdev->dev)
+		 check_of_device_is_stdout_path(newcdev->dev, &activate);
 
 	list_add_tail(&newcdev->list, &console_list);
 
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 116dd0c..6303b53 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1819,23 +1819,18 @@ void of_delete_node(struct device_node *node)
 		of_set_root_node(NULL);
 }
 
-int of_device_is_stdout_path(struct device_d *dev)
+void check_of_device_is_stdout_path(struct device_d *dev, int *activate)
 {
 	struct device_node *dn;
 	const char *name;
 
 	name = of_get_property(of_chosen, "linux,stdout-path", NULL);
 	if (name == NULL)
-		return 0;
+		return;
 
 	dn = of_find_node_by_path(name);
-	if (!dn)
-		return 0;
-
-	if (dn == dev->device_node)
-		return 1;
-
-	return 0;
+	if (dn)
+		*activate = dn == dev->device_node;
 }
 
 /**
diff --git a/include/of.h b/include/of.h
index e5cd750..0f739d9 100644
--- a/include/of.h
+++ b/include/of.h
@@ -225,7 +225,7 @@ extern struct device_d *of_find_device_by_node(struct device_node *np);
 
 struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node);
 int of_parse_partitions(struct cdev *cdev, struct device_node *node);
-int of_device_is_stdout_path(struct device_d *dev);
+void check_of_device_is_stdout_path(struct device_d *dev, int *activate);
 const char *of_get_model(void);
 void *of_flatten_dtb(struct device_node *node);
 int of_add_memory(struct device_node *node, bool dump);
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
