Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YxEFo-0001J1-CY
 for barebox@lists.infradead.org; Tue, 26 May 2015 12:46:45 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 26 May 2015 14:46:20 +0200
Message-Id: <1432644381-29474-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1432644381-29474-1-git-send-email-mkl@pengutronix.de>
References: <1432644381-29474-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/2] blspec: honour default/once entries again and move them
 to a different place
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Support for default/once entries was lost earlier. This fixes this
and also looks for default/once entries in the loader directory instead
of the loader parent directory. This keeps the bootloader spec files
together under a common loader directory.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/blspec.c          | 35 ++++++++++++++++++++++++++++-------
 scripts/kernel-install.c |  2 +-
 2 files changed, 29 insertions(+), 8 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 3506388eb5fb..11e2a8a53698 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -308,6 +308,29 @@ out:
 	return ret;
 }
 
+static char *read_default_once(const char *root, const char *name)
+{
+	char *str, *res;
+
+	/* Compat: default/once was under root directly */
+	str = read_file_line("%s/%s", root, name);
+
+	if (!str)
+		str = read_file_line("%s/loader/%s", root, name);
+
+	if (!str)
+		return NULL;
+
+	res = strrchr(str, '/');
+	if (!res)
+		return str;
+
+	res = xstrdup(res);
+	free(str);
+
+	return res;
+}
+
 /*
  * blspec_scan_directory - scan over a directory
  *
@@ -323,7 +346,7 @@ int blspec_scan_directory(struct blspec *blspec, const char *root)
 	char *abspath;
 	int ret, found = 0;
 	const char *dirname = "loader/entries";
-	char *entry_default = NULL, *entry_once = NULL, *name, *nfspath = NULL;
+	char *entry_default = NULL, *entry_once = NULL, *nfspath = NULL;
 
 	nfspath = parse_nfs_url(root);
 	if (!IS_ERR(nfspath))
@@ -331,8 +354,8 @@ int blspec_scan_directory(struct blspec *blspec, const char *root)
 
 	pr_info("%s: %s %s\n", __func__, root, dirname);
 
-	entry_default = read_file_line("%s/default", root);
-	entry_once = read_file_line("%s/once", root);
+	entry_default = read_default_once(root, "default");
+	entry_once = read_default_once(root, "once");
 
 	abspath = asprintf("%s/%s", root, dirname);
 
@@ -398,12 +421,10 @@ int blspec_scan_directory(struct blspec *blspec, const char *root)
 
 		found++;
 
-		name = asprintf("%s/%s", dirname, d->d_name);
-		if (entry_default && !strcmp(name, entry_default))
+		if (entry_default && !strcmp(d->d_name, entry_default))
 			entry->boot_default = true;
-		if (entry_once && !strcmp(name, entry_once))
+		if (entry_once && !strcmp(d->d_name, entry_once))
 			entry->boot_once = true;
-		free(name);
 
 		if (entry->cdev) {
 			devname = xstrdup(dev_name(entry->cdev->dev));
diff --git a/scripts/kernel-install.c b/scripts/kernel-install.c
index d943f0288f39..d26864066583 100644
--- a/scripts/kernel-install.c
+++ b/scripts/kernel-install.c
@@ -1118,7 +1118,7 @@ static int do_set_once_default(const char *name, int entry)
 		return -errno;
 	}
 
-	dprintf(fd, "loader/entries/%s\n", e->config_file);
+	dprintf(fd, "%s\n", e->config_file);
 
 	ret = close(fd);
 	if (ret)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
