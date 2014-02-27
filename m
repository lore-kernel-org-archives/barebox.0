Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ84J-0003TU-Bs
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 21:00:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Feb 2014 22:00:12 +0100
Message-Id: <1393534812-30995-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1393534812-30995-1-git-send-email-s.hauer@pengutronix.de>
References: <1393534812-30995-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] blspec: Add NFS support
To: barebox@lists.infradead.org

With this barebox can start root filesystems containing bootloader
spec entries via NFS. It is used as:

boot nfs://<ipaddr>[:<port]//path/to/nfsroot

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 114 +++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 112 insertions(+), 2 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index df3c9c3..fcdcc77 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -10,6 +10,8 @@
  * GNU General Public License for more details.
  *
  */
+#define pr_fmt(fmt)  "blspec: " fmt
+
 #include <environment.h>
 #include <globalvar.h>
 #include <readkey.h>
@@ -22,6 +24,7 @@
 #include <libbb.h>
 #include <init.h>
 #include <boot.h>
+#include <net.h>
 #include <fs.h>
 #include <of.h>
 #include <linux/stat.h>
@@ -131,6 +134,107 @@ static int blspec_have_entry(struct blspec *blspec, const char *path)
 }
 
 /*
+ * nfs_find_mountpath - Check if a given url is already mounted
+ */
+static const char *nfs_find_mountpath(const char *nfshostpath)
+{
+	struct fs_device_d *fsdev;
+
+	for_each_fs_device(fsdev) {
+		if (fsdev->backingstore && !strcmp(fsdev->backingstore, nfshostpath))
+			return fsdev->path;
+	}
+
+	return NULL;
+}
+
+/*
+ * parse_nfs_url - check for nfs:// style url
+ *
+ * Check if the passed string is a NFS url and if yes, mount the
+ * NFS and return the path we have mounted to.
+ */
+static char *parse_nfs_url(const char *url)
+{
+	char *sep, *str, *host, *port, *path;
+	char *mountpath = NULL, *hostpath = NULL, *options = NULL;
+	const char *prevpath;
+	IPaddr_t ip;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_FS_NFS))
+		return NULL;
+
+	if (strncmp(url, "nfs://", 6))
+		return ERR_PTR(-EINVAL);
+
+	url += 6;
+
+	str = xstrdup(url);
+
+	host = str;
+
+	sep = strchr(str, '/');
+	if (!sep) {
+		ret = -EINVAL;
+		goto out;
+	}
+
+	*sep++ = 0;
+
+	path = sep;
+
+	port = strchr(host, ':');
+	if (port)
+		*port++ = 0;
+
+	ret = ifup_all(0);
+	if (ret) {
+		pr_err("Failed to bring up networking\n");
+		goto out;
+	}
+
+	ip = resolv(host);
+	if (ip == 0)
+		goto out;
+
+	hostpath = asprintf("%s:%s", ip_to_string(ip), path);
+
+	prevpath = nfs_find_mountpath(hostpath);
+
+	if (prevpath) {
+		mountpath = xstrdup(prevpath);
+	} else {
+		mountpath = asprintf("/mnt/nfs-%s-blspec-%08x", host, rand());
+		if (port)
+			options = asprintf("mountport=%s,port=%s", port, port);
+
+		ret = make_directory(mountpath);
+		if (ret)
+			goto out;
+
+		pr_debug("host: %s port: %s path: %s\n", host, port, path);
+		pr_debug("hostpath: %s mountpath: %s options: %s\n", hostpath, mountpath, options);
+
+		ret = mount(hostpath, "nfs", mountpath, options);
+		if (ret)
+			goto out;
+	}
+
+	ret = 0;
+
+out:
+	free(str);
+	free(hostpath);
+	free(options);
+
+	if (ret)
+		free(mountpath);
+
+	return ret ? ERR_PTR(ret) : mountpath;
+}
+
+/*
  * blspec_scan_directory - scan over a directory
  *
  * Given a root path collects all blspec entries found under /blspec/entries/.
@@ -145,9 +249,13 @@ int blspec_scan_directory(struct blspec *blspec, const char *root)
 	char *abspath;
 	int ret, found = 0;
 	const char *dirname = "loader/entries";
-	char *entry_default = NULL, *entry_once = NULL, *name;
+	char *entry_default = NULL, *entry_once = NULL, *name, *nfspath = NULL;
+
+	nfspath = parse_nfs_url(root);
+	if (!IS_ERR(nfspath))
+		root = nfspath;
 
-	pr_debug("%s: %s %s\n", __func__, root, dirname);
+	pr_info("%s: %s %s\n", __func__, root, dirname);
 
 	entry_default = read_file_line("%s/default", root);
 	entry_once = read_file_line("%s/once", root);
@@ -239,6 +347,8 @@ int blspec_scan_directory(struct blspec *blspec, const char *root)
 
 	closedir(dir);
 err_out:
+	if (!IS_ERR(nfspath))
+		free(nfspath);
 	free(abspath);
 	free(entry_default);
 	free(entry_once);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
