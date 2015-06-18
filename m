Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z5UUe-0000GH-JX
 for barebox@lists.infradead.org; Thu, 18 Jun 2015 07:44:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Jun 2015 09:43:43 +0200
Message-Id: <1434613424-19989-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434613424-19989-1-git-send-email-s.hauer@pengutronix.de>
References: <1434613424-19989-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] fs: nfs: Implement Linux rootarg
To: Barebox List <barebox@lists.infradead.org>

Add the root= parameter for NFS filesystems. We currently hardcode
v3 and tcp which probably needs to become configurable at some point.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/filesystems/nfs.rst | 13 +++++++++++++
 fs/nfs.c                          | 24 ++++++++++++++++++++++++
 2 files changed, 37 insertions(+)

diff --git a/Documentation/filesystems/nfs.rst b/Documentation/filesystems/nfs.rst
index f4eda5d..4469ac1 100644
--- a/Documentation/filesystems/nfs.rst
+++ b/Documentation/filesystems/nfs.rst
@@ -10,3 +10,16 @@ barebox has readonly support for NFSv3 in UDP mode.
 Example::
 
    mount -t nfs 192.168.23.4:/home/user/nfsroot /mnt/nfs
+
+The barebox NFS driver adds a ``linux.bootargs`` device parameter to the NFS device.
+This parameter holds a Linux kernel commandline snippet containing a suitable root=
+option for booting from exactly that NFS share.
+
+Example::
+
+  devinfo nfs0
+  ...
+  linux.bootargs: root=/dev/nfs nfsroot=192.168.23.4:/home/sha/nfsroot/generic-v7,v3,tcp
+
+The options default to ``v3,tcp`` but can be adjusted before mounting the NFS share with
+the ``global.linux.rootnfsopts`` variable
diff --git a/fs/nfs.c b/fs/nfs.c
index 2738c78..5bff54a 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -35,6 +35,7 @@
 #include <kfifo.h>
 #include <linux/sizes.h>
 #include <byteorder.h>
+#include <globalvar.h>
 
 #include "parseopt.h"
 
@@ -1306,6 +1307,23 @@ static int nfs_stat(struct device_d *dev, const char *filename, struct stat *s)
 	}
 }
 
+static char *rootnfsopts;
+
+static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device_d *fsdev)
+{
+	char *str;
+	const char *ip;
+
+	ip = ip_to_string(npriv->server);
+	str = asprintf("root=/dev/nfs nfsroot=%s:%s%s%s",
+			ip, npriv->path, rootnfsopts[0] ? "," : "",
+			rootnfsopts);
+
+	fsdev_set_linux_rootarg(fsdev, str);
+
+	free(str);
+}
+
 static int nfs_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
@@ -1369,6 +1387,8 @@ static int nfs_probe(struct device_d *dev)
 		goto err2;
 	}
 
+	nfs_set_rootarg(npriv, fsdev);
+
 	free(tmp);
 
 	return 0;
@@ -1421,6 +1441,10 @@ static struct fs_driver_d nfs_driver = {
 
 static int nfs_init(void)
 {
+	rootnfsopts = xstrdup("v3,tcp");
+
+	globalvar_add_simple_string("linux.rootnfsopts", &rootnfsopts);
+
 	return register_fs_driver(&nfs_driver);
 }
 coredevice_initcall(nfs_init);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
