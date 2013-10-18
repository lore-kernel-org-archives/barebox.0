Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VX6YE-0005lF-TQ
 for barebox@lists.infradead.org; Fri, 18 Oct 2013 09:40:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Oct 2013 11:40:35 +0200
Message-Id: <1382089235-19816-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] blspec: Fix once/default booting
To: barebox@lists.infradead.org

The default/once files contain the full path to the entries, not
only the filename. This fixes booting the once and default entries.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index f306ada..a564602 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -147,7 +147,7 @@ static int blspec_scan_directory(struct blspec *blspec, const char *root,
 	char *abspath;
 	int ret, found = 0;
 	const char *dirname = "loader/entries";
-	char *entry_default = NULL, *entry_once = NULL;
+	char *entry_default = NULL, *entry_once = NULL, *name;
 
 	pr_debug("%s: %s %s\n", __func__, root, dirname);
 
@@ -213,10 +213,12 @@ static int blspec_scan_directory(struct blspec *blspec, const char *root,
 		entry->configpath = configname;
 		entry->cdev = cdev;
 
-		if (entry_default && !strcmp(d->d_name, entry_default))
+		name = asprintf("%s/%s", dirname, d->d_name);
+		if (entry_default && !strcmp(name, entry_default))
 			entry->boot_default = true;
-		if (entry_once && !strcmp(d->d_name, entry_once))
+		if (entry_once && !strcmp(name, entry_once))
 			entry->boot_once = true;
+		free(name);
 
 		devname = xstrdup(dev_name(entry->cdev->dev));
 		if (entry->cdev->dev->parent)
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
