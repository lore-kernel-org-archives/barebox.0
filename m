Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RMx22-0005Zx-J2
 for barebox@lists.infradead.org; Sun, 06 Nov 2011 07:20:44 +0000
Received: by wwe3 with SMTP id 3so3599326wwe.18
 for <barebox@lists.infradead.org>; Sun, 06 Nov 2011 00:20:40 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Sun,  6 Nov 2011 08:20:48 +0100
Message-Id: <1320564048-3908-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [RFC] mount: Fix the printing of device name
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

Mount without argument always print a "none" as device name mounted
because entry->parent_device is always NULL.

The problem is the mount function in fs/fs.c. parent_device is
initialized to NULL and never updated. With this patch, parent_device
is set with the mounted device name.

Moreover, the mount function has been modified to print the device name
plus device id using the dev_name function.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 commands/mount.c |    2 +-
 fs/fs.c          |   11 +++++++++++
 2 files changed, 12 insertions(+), 1 deletions(-)

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
index 51a7411..529ff53 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -31,6 +31,7 @@
 #include <init.h>
 #include <module.h>
 #include <libbb.h>
+#include <libgen.h>
 
 void *read_file(const char *filename, size_t *size)
 {
@@ -741,6 +742,7 @@ int mount(const char *device, const char *fsname, const char *_path)
 	struct device_d *dev, *parent_device = NULL;
 	int ret;
 	char *path = normalise_path(_path);
+	char *devname, *par;
 
 	errno = 0;
 
@@ -804,6 +806,15 @@ int mount(const char *device, const char *fsname, const char *_path)
 		goto out2;
 	}
 
+	devname = basename((char *)device);
+
+	if (strchr(devname, '.')) {
+		par = strchr(devname, '.');
+		*par = 0;
+	}
+
+	parent_device = get_device_by_name(devname);
+
 	if (parent_device)
 		dev_add_child(parent_device, &fsdev->dev);
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
