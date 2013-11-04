Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdKlx-0004P7-0C
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 14:04:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Nov 2013 15:04:22 +0100
Message-Id: <1383573870-11325-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1383573870-11325-1-git-send-email-s.hauer@pengutronix.de>
References: <1383573870-11325-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/11] blspec: rename _hwdevice functions to _devicename
To: barebox@lists.infradead.org

Since it's not necessarily the hardware device this seems to
be a more appropriate name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c  |  2 +-
 common/blspec.c  | 10 +++++-----
 include/blspec.h |  4 ++--
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index 8105889..f2d9836 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -219,7 +219,7 @@ static int boot(const char *name)
 			goto out;
 		}
 
-		ret = blspec_boot_hwdevice(name, verbose, dryrun);
+		ret = blspec_boot_devicename(name, verbose, dryrun);
 		pr_err("%s: %s\n", name, strerror(-ret));
 		goto out;
 	}
diff --git a/common/blspec.c b/common/blspec.c
index dd8ec4b..8ae09a2 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -361,12 +361,12 @@ int blspec_scan_device(struct blspec *blspec, struct device_d *dev)
 }
 
 /*
- * blspec_scan_hwdevice - scan a hardware device for child cdevs
+ * blspec_scan_devicename - scan a hardware device for child cdevs
  *
  * Given a name of a hardware device this functions scans over all child
  * cdevs looking for blspec entries.
  */
-int blspec_scan_hwdevice(struct blspec *blspec, const char *devname)
+int blspec_scan_devicename(struct blspec *blspec, const char *devname)
 {
 	struct device_d *dev;
 
@@ -488,10 +488,10 @@ struct blspec_entry *blspec_entry_default(struct blspec *l)
 }
 
 /*
- * blspec_boot_hwdevice - scan hardware device for blspec entries and
+ * blspec_boot_devicename - scan hardware device for blspec entries and
  *                        start the best one.
  */
-int blspec_boot_hwdevice(const char *devname, int verbose, int dryrun)
+int blspec_boot_devicename(const char *devname, int verbose, int dryrun)
 {
 	struct blspec *blspec;
 	struct blspec_entry *e;
@@ -499,7 +499,7 @@ int blspec_boot_hwdevice(const char *devname, int verbose, int dryrun)
 
 	blspec = blspec_alloc();
 
-	ret = blspec_scan_hwdevice(blspec, devname);
+	ret = blspec_scan_devicename(blspec, devname);
 	if (ret)
 		return ret;
 
diff --git a/include/blspec.h b/include/blspec.h
index aa836e6..a7b189a 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -31,12 +31,12 @@ int blspec_entry_save(struct blspec_entry *entry, const char *path);
 
 int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun);
 
-int blspec_boot_hwdevice(const char *devname, int verbose, int dryrun);
+int blspec_boot_devicename(const char *devname, int verbose, int dryrun);
 
 void blspec_scan_devices(struct blspec *blspec);
 
 struct blspec_entry *blspec_entry_default(struct blspec *l);
-int blspec_scan_hwdevice(struct blspec *blspec, const char *devname);
+int blspec_scan_devicename(struct blspec *blspec, const char *devname);
 
 #define blspec_for_each_entry(blspec, entry) \
 	list_for_each_entry(entry, &blspec->entries, list)
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
