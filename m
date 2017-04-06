Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cw37M-000228-Ra
 for barebox@lists.infradead.org; Thu, 06 Apr 2017 08:50:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Apr 2017 10:49:41 +0200
Message-Id: <20170406084943.28150-2-s.hauer@pengutronix.de>
In-Reply-To: <20170406084943.28150-1-s.hauer@pengutronix.de>
References: <20170406084943.28150-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] blspec: register as bootentry provider
To: Barebox List <barebox@lists.infradead.org>

Instead of using a global function called by
bootentry_create_from_name(), register blspec as bootentry
provider.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 24 ++++++++++++++++++++++++
 common/boot.c   | 12 ------------
 2 files changed, 24 insertions(+), 12 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index ec63ddb407..8132d141ab 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -732,3 +732,27 @@ int blspec_scan_devicename(struct bootentries *bootentries, const char *devname)
 
 	return blspec_scan_device(bootentries, dev);
 }
+
+static int blspec_bootentry_provider(struct bootentries *bootentries,
+				     const char *name)
+{
+	int ret, found = 0;
+
+	ret = blspec_scan_devicename(bootentries, name);
+	if (ret > 0)
+		found += ret;
+
+	if (*name == '/' || !strncmp(name, "nfs://", 6)) {
+		ret = blspec_scan_directory(bootentries, name);
+		if (ret > 0)
+			found += ret;
+	}
+
+	return found;
+}
+
+static int blspec_init(void)
+{
+	return bootentry_register_provider(blspec_bootentry_provider);
+}
+device_initcall(blspec_init);
\ No newline at end of file
diff --git a/common/boot.c b/common/boot.c
index f0359cff38..3280ac4f54 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -283,18 +283,6 @@ int bootentry_create_from_name(struct bootentries *bootentries,
 	struct bootentry_provider *p;
 	int found = 0, ret;
 
-	if (IS_ENABLED(CONFIG_BLSPEC)) {
-		ret = blspec_scan_devicename(bootentries, name);
-		if (ret > 0)
-			found += ret;
-
-		if (*name == '/' || !strncmp(name, "nfs://", 6)) {
-			ret = blspec_scan_directory(bootentries, name);
-			if (ret > 0)
-				found += ret;
-		}
-	}
-
 	list_for_each_entry(p, &bootentry_providers, list) {
 		ret = p->fn(bootentries, name);
 		if (ret > 0)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
