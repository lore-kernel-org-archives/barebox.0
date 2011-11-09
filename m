Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RO6LS-000655-31
 for barebox@lists.infradead.org; Wed, 09 Nov 2011 11:29:30 +0000
Received: by mail-bw0-f49.google.com with SMTP id t2so1766116bka.36
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2011 03:29:29 -0800 (PST)
From: franck.jullien@gmail.com
Date: Wed,  9 Nov 2011 12:29:21 +0100
Message-Id: <1320838161-29653-3-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1320838161-29653-1-git-send-email-franck.jullien@gmail.com>
References: <1320838161-29653-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 2/2] [RFC v2] mount: Fix the printing of device name
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

Mount without argument always print a "none" as device name mounted
because entry->parent_device is always NULL.

The problem is the mount function in fs/fs.c. parent_device is
initialized to NULL and never updated. With this patch,
parent_device is set with the mounted device name.

Moreover, the mount function has been modified to print the device
name plus device id using the dev_name function.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 commands/mount.c |    2 +-
 fs/fs.c          |    7 +++++++
 2 files changed, 8 insertions(+), 1 deletions(-)

diff --git a/commands/mount.c b/commands/mount.c
index 52d1700..7cefdbe 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -40,7 +40,7 @@ static int do_mount(struct command *cmdtp, int argc, char *argv[])
 			entry = mtab_next_entry(entry);
 			if (entry) {
 				printf("%s on %s type %s\n",
-					entry->parent_device ? entry->parent_device->name : "none",
+					entry->parent_device ? dev_name(entry->parent_device) : "none",
 					entry->path,
 					entry->dev->name);
 			}
diff --git a/fs/fs.c b/fs/fs.c
index 51a7411..c70b691 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -739,6 +739,7 @@ int mount(const char *device, const char *fsname, const char *_path)
 	struct mtab_entry *entry;
 	struct fs_device_d *fsdev;
 	struct device_d *dev, *parent_device = NULL;
+	struct cdev *cdev = NULL;
 	int ret;
 	char *path = normalise_path(_path);
 
@@ -804,6 +805,12 @@ int mount(const char *device, const char *fsname, const char *_path)
 		goto out2;
 	}
 
+	if (!strncmp(device, "/dev/", 5)) {
+		cdev = cdev_by_name(device + 5);
+		if(cdev)
+			parent_device = cdev->dev;
+	}
+
 	if (parent_device)
 		dev_add_child(parent_device, &fsdev->dev);
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
