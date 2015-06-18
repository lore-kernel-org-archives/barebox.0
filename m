Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z5UUZ-0000Cu-MM
 for barebox@lists.infradead.org; Thu, 18 Jun 2015 07:44:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Jun 2015 09:43:44 +0200
Message-Id: <1434613424-19989-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] blspec: Automatically append rootarg
To: Barebox List <barebox@lists.infradead.org>

This patch makes it possible to automatically add a suitable root= option
for booting Linux from the same filesystem on which the bootspec entry
has been found. This adds an additional 'linux-appendroot' option to
bootspec which if set to 'true' will cause barebox to automatically
add a root= option. This currently works for NFS, UBIFS and regular
block devices like ATA, SD/MMC using the root=PARTUUID= mechanism.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/booting-linux.rst |  7 +++++++
 common/blspec.c                      | 29 ++++++++++++++++++++++++++++-
 2 files changed, 35 insertions(+), 1 deletion(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 6e7d155..39084e5 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -205,6 +205,13 @@ compatible NFS URI string must be passed to the boot command:
 
   boot nfs://nfshost//path/
 
+Additionally to the options defined in the original spec barebox understands the
+``linux-appendroot`` option. This is a boolean value and if set to ``true`` barebox
+will automatically append a ``root=`` string to the Linux commandline based on the
+device where the entry is found on. This makes it possible to use the same rootfs
+image on different devices without having to specify a different root= option each
+time.
+
 Network boot
 ------------
 
diff --git a/common/blspec.c b/common/blspec.c
index 3506388..742065e 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -601,6 +601,29 @@ int blspec_scan_devicename(struct blspec *blspec, const char *devname)
 	return blspec_scan_device(blspec, dev);
 }
 
+static int blspec_append_root(struct blspec_entry *entry)
+{
+	const char *appendroot;
+	char *rootarg;
+
+	appendroot = blspec_entry_var_get(entry, "linux-appendroot");
+	if (!appendroot || strcmp(appendroot, "true"))
+		return 0;
+
+	rootarg = path_get_linux_rootarg(entry->rootpath);
+	if (IS_ERR(rootarg)) {
+		pr_err("Getting root argument for %s failed with: %s\n",
+				entry->rootpath, strerror(-PTR_ERR(rootarg)));
+		return PTR_ERR(rootarg);
+	}
+
+	globalvar_add_simple("linux.bootargs.dyn.blspec.appendroot", rootarg);
+
+	free(rootarg);
+
+	return 0;
+}
+
 /*
  * blspec_boot - boot an entry
  *
@@ -650,6 +673,10 @@ int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun)
 
 	globalvar_add_simple("linux.bootargs.dyn.blspec", options);
 
+	ret = blspec_append_root(entry);
+	if (ret)
+		goto err_out;
+
 	pr_info("booting %s from %s\n", blspec_entry_var_get(entry, "title"),
 			entry->cdev ? dev_name(entry->cdev->dev) : "none");
 
@@ -668,7 +695,7 @@ int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun)
 	ret = bootm_boot(&data);
 	if (ret)
 		pr_err("Booting failed\n");
-
+err_out:
 	free((char *)data.oftree_file);
 	free((char *)data.initrd_file);
 	free((char *)data.os_file);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
