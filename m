Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZp0-0005HX-RU
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:44:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 14:44:15 +0200
Message-Id: <1469191472-14491-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
References: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/18] blspec: remove unused blspec_boot_devicename
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c  | 30 ------------------------------
 include/blspec.h |  2 --
 2 files changed, 32 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index bf98e6b..2e9d87b 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -758,33 +758,3 @@ struct blspec_entry *blspec_entry_default(struct blspec *l)
 		return entry_default;
 	return entry_first;
 }
-
-/*
- * blspec_boot_devicename - scan hardware device for blspec entries and
- *                        start the best one.
- */
-int blspec_boot_devicename(const char *devname, int verbose, int dryrun)
-{
-	struct blspec *blspec;
-	struct blspec_entry *e;
-	int ret;
-
-	blspec = blspec_alloc();
-
-	ret = blspec_scan_devicename(blspec, devname);
-	if (ret)
-		return ret;
-
-	e = blspec_entry_default(blspec);
-	if (!e) {
-		printf("No bootspec entry found on %s\n", devname);
-		ret = -ENOENT;
-		goto out;
-	}
-
-	ret = blspec_boot(e, verbose, dryrun);
-out:
-	blspec_free(blspec);
-
-	return ret;
-}
diff --git a/include/blspec.h b/include/blspec.h
index e22e9be..9fc42df 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -31,8 +31,6 @@ int blspec_entry_save(struct blspec_entry *entry, const char *path);
 
 int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun);
 
-int blspec_boot_devicename(const char *devname, int verbose, int dryrun);
-
 int blspec_scan_devices(struct blspec *blspec);
 
 int blspec_scan_device(struct blspec *blspec, struct device_d *dev);
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
