Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNVLX-00049x-KC
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 21:03:44 +0000
Received: from mail619.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id C077EFF965A
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 23:10:16 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Oct 2012 23:01:10 +0200
Message-Id: <1350248478-19359-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121014205929.GU13639@game.jcrosoft.org>
 <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/12] fs: add bus device
To: barebox@lists.infradead.org

automatically add it as parent of any fs device

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/fs.c |   23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index b9a1f17..b63a005 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1131,7 +1131,12 @@ static void fs_remove(struct device_d *dev)
 	free(fsdev);
 }
 
-struct bus_type fs_bus = {
+struct device_d fs_bus = {
+	.name = "fs",
+	.id = DEVICE_ID_SINGLE,
+};
+
+struct bus_type fs_bus_type = {
 	.name = "fs",
 	.match = fs_match,
 	.probe = fs_probe,
@@ -1140,13 +1145,14 @@ struct bus_type fs_bus = {
 
 static int fs_bus_init(void)
 {
-	return bus_register(&fs_bus);
+	register_device(&fs_bus);
+	return bus_register(&fs_bus_type);
 }
 pure_initcall(fs_bus_init);
 
 int register_fs_driver(struct fs_driver_d *fsdrv)
 {
-	fsdrv->drv.bus = &fs_bus;
+	fsdrv->drv.bus = &fs_bus_type;
 	register_driver(&fsdrv->drv);
 
 	return 0;
@@ -1162,10 +1168,7 @@ static const char *detect_fs(const char *filename)
 	if (type == filetype_unknown)
 		return NULL;
 
-	for_each_driver(drv) {
-		if (drv->bus != &fs_bus)
-			continue;
-
+	bus_for_each_driver(&fs_bus_type, drv) {
 		fdrv = drv_to_fs_driver(drv);
 
 		if (type == fdrv->type)
@@ -1217,11 +1220,15 @@ int mount(const char *device, const char *fsname, const char *_path)
 	safe_strncpy(fsdev->dev.name, fsname, MAX_DRIVER_NAME);
 	fsdev->dev.id = get_free_deviceid(fsdev->dev.name);
 	fsdev->path = xstrdup(path);
-	fsdev->dev.bus = &fs_bus;
+	fsdev->dev.bus = &fs_bus_type;
 
 	if (!strncmp(device, "/dev/", 5))
 		fsdev->cdev = cdev_by_name(device + 5);
 
+	if (!fsdev->dev.parent) {
+		fsdev->dev.parent = &fs_bus;
+		dev_add_child(fsdev->dev.parent, &fsdev->dev);
+	}
 	ret = register_device(&fsdev->dev);
 	if (ret)
 		goto err_register;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
