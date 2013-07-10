Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uws0d-0000Kl-3V
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 10:52:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 12:52:03 +0200
Message-Id: <1373453528-3723-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
References: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/9] cdev: introduce partition names
To: barebox@lists.infradead.org

currently most partition cdevs have the name <devname>.<partname>
This makes it hard to find a partition by <partname>. This introduces
a partname field in struct cdev so that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c  | 3 +++
 include/driver.h | 5 ++++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index a16866e..a2bea93 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -244,6 +244,8 @@ struct cdev *devfs_add_partition(const char *devname, loff_t offset, loff_t size
 
 	new = xzalloc(sizeof (*new));
 	new->name = strdup(name);
+	if (!strncmp(devname, name, strlen(devname)))
+		new->partname = xstrdup(name + strlen(devname) + 1);
 	new->ops = cdev->ops;
 	new->priv = cdev->priv;
 	new->size = size;
@@ -291,6 +293,7 @@ int devfs_del_partition(const char *name)
 		return ret;
 
 	free(cdev->name);
+	free(cdev->partname);
 	free(cdev);
 
 	return 0;
diff --git a/include/driver.h b/include/driver.h
index 9f114ff..353af3a 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -444,7 +444,10 @@ struct cdev {
 	struct device_d *dev;
 	struct list_head list;
 	struct list_head devices_list;
-	char *name;
+	char *name; /* filename under /dev/ */
+	char *partname; /* the partition name, usually the above without the
+			 * device part, i.e. name = "nand0.barebox" -> partname = "barebox"
+			 */
 	loff_t offset;
 	loff_t size;
 	unsigned int flags;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
