Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cw37I-00020f-45
 for barebox@lists.infradead.org; Thu, 06 Apr 2017 08:50:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Apr 2017 10:49:40 +0200
Message-Id: <20170406084943.28150-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] boot: Allow to register boot entry providers
To: Barebox List <barebox@lists.infradead.org>

bootentry_create_from_name() takes a name and creates bootentries
for it. It tries different providers that interpret the name:
blspec, bootchooser or script pathes. Instead of hardcoding the
different providers in the function, allow the providers to register
themselves.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/boot.c  | 26 ++++++++++++++++++++++++++
 include/boot.h |  2 ++
 2 files changed, 28 insertions(+)

diff --git a/common/boot.c b/common/boot.c
index 4306319331..f0359cff38 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -244,6 +244,25 @@ static int bootscript_scan_path(struct bootentries *bootentries, const char *pat
 	return ret;
 }
 
+static LIST_HEAD(bootentry_providers);
+
+struct bootentry_provider {
+	int (*fn)(struct bootentries *bootentries, const char *name);
+	struct list_head list;
+};
+
+int bootentry_register_provider(int (*fn)(struct bootentries *bootentries, const char *name))
+{
+	struct bootentry_provider *p;
+
+	p = xzalloc(sizeof(*p));
+	p->fn = fn;
+
+	list_add_tail(&p->list, &bootentry_providers);
+
+	return 0;
+}
+
 /*
  * bootentry_create_from_name - create boot entries from a name
  *
@@ -261,6 +280,7 @@ static int bootscript_scan_path(struct bootentries *bootentries, const char *pat
 int bootentry_create_from_name(struct bootentries *bootentries,
 				      const char *name)
 {
+	struct bootentry_provider *p;
 	int found = 0, ret;
 
 	if (IS_ENABLED(CONFIG_BLSPEC)) {
@@ -275,6 +295,12 @@ int bootentry_create_from_name(struct bootentries *bootentries,
 		}
 	}
 
+	list_for_each_entry(p, &bootentry_providers, list) {
+		ret = p->fn(bootentries, name);
+		if (ret > 0)
+			found += ret;
+	}
+
 	if (IS_ENABLED(CONFIG_BOOTCHOOSER) && !strcmp(name, "bootchooser")) {
 		ret = bootchooser_create_bootentry(bootentries);
 		if (ret > 0)
diff --git a/include/boot.h b/include/boot.h
index a855cbe1e5..4f7612ab80 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -36,6 +36,8 @@ struct bootentry {
 
 int bootentries_add_entry(struct bootentries *entries, struct bootentry *entry);
 
+int bootentry_register_provider(int (*fn)(struct bootentries *bootentries, const char *name));
+
 #define bootentries_for_each_entry(bootentries, entry) \
 	list_for_each_entry(entry, &bootentries->entries, list)
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
