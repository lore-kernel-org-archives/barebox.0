Delivery-date: Mon, 25 Nov 2024 16:32:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb56-000G3Q-0q
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:32:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb54-00043u-62
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:32:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oO3NbIby5s1zH5StwIbpxICrjxFDh4OExN1sZAz5eWI=; b=pe4EhZbqGDpnAb1h0msjgmr7ho
	0kxcUwyQhRq1ng2U7qOebJdzLO94yrmxjQfVPX3akOpKQq+p4DM/q7VLlwYDCwtQSKIhNA7pSX4ko
	aGj3UXWS0eai9rCavDk6zkHTlgBK7LXQQtor8IjcYwn1nZIGswVAyg0zgkgYcByZP3pdDzMdpMH5M
	bCd4fiB0KaybZjYvShFVNAICiQzDbIq+1H6nx0nfvCOVF/+FEc/ZXBCZGhdVK6/I77j/gD0FJgPqy
	Kb2j3O63Vmrsjiz18xkHi1UQ1ShvVkew8nUBzyl6xslUXCYhja8I0s29tP7/fEG9dOaZ8GIWgfuxr
	1CkqUN3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb4T-00000008UyA-1c0x;
	Mon, 25 Nov 2024 15:32:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb1m-00000008UGh-2f9y
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:29:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1l-00036R-Cn; Mon, 25 Nov 2024 16:29:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1k-0006QU-1I;
	Mon, 25 Nov 2024 16:29:29 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1k-002dWd-1T;
	Mon, 25 Nov 2024 16:29:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:29:25 +0100
Message-Id: <20241125152927.546493-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125152927.546493-1-a.fatoum@pengutronix.de>
References: <20241125152927.546493-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_072931_138876_3C903877 
X-CRM114-Status: GOOD (  19.46  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] treewide: use strdup_const where appropriate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There are many places where we are using strdup and end up often
duplicating strings, when all we needed is extending lifetime of
some of the strings.

Let's make use of strdup_const instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/magicvar.c            | 12 +++++------
 commands/menu.c                |  6 +++---
 commands/of_property.c         | 12 +++++------
 common/blspec.c                |  8 +++----
 common/boot.c                  | 24 ++++++++++-----------
 common/bootchooser.c           |  6 +++---
 common/elf.c                   |  2 +-
 common/env.c                   | 28 ++++++++++++-------------
 common/file-list.c             | 14 ++++++++-----
 common/globalvar.c             |  4 ++--
 common/menu.c                  | 38 ++++++++++++++++++----------------
 common/menutree.c              |  4 ++--
 common/poller.c                |  4 ++--
 common/resource.c              |  8 +++----
 common/restart.c               |  2 +-
 common/slice.c                 |  4 ++--
 common/state/backend_storage.c |  4 ++--
 common/state/state.h           |  2 +-
 common/state/state_variables.c |  4 ++--
 drivers/led/led-gpio.c         |  6 +++---
 drivers/led/led-pwm.c          |  2 +-
 drivers/nvmem/core.c           |  4 ++--
 drivers/of/base.c              | 12 +++++------
 drivers/of/of_net.c            |  2 +-
 drivers/regulator/core.c       |  4 ++--
 drivers/soc/kvx/kvx_socinfo.c  |  2 +-
 include/blspec.h               |  4 ++--
 include/boot.h                 |  2 +-
 include/console.h              |  2 +-
 include/digest.h               |  4 ++--
 include/elf.h                  |  2 +-
 include/environment.h          |  8 +++----
 include/file-list.h            |  4 ++--
 include/led.h                  |  2 +-
 include/linux/clk.h            |  4 +++-
 include/mci.h                  |  2 +-
 include/menu.h                 | 20 +++++++++++-------
 include/net.h                  |  2 +-
 include/of.h                   |  6 +++---
 include/param.h                |  2 +-
 include/poller.h               |  2 +-
 include/slice.h                |  2 +-
 include/stringlist.h           |  4 ++--
 lib/glob.c                     | 19 ++++++++++-------
 lib/parameter.c                |  6 +++---
 lib/stringlist.c               |  6 +++---
 net/eth.c                      |  4 ++--
 scripts/checkpatch.pl          |  2 +-
 48 files changed, 171 insertions(+), 156 deletions(-)

diff --git a/commands/magicvar.c b/commands/magicvar.c
index 01acc741ac5d..02a9237b1da9 100644
--- a/commands/magicvar.c
+++ b/commands/magicvar.c
@@ -10,8 +10,8 @@
 static LIST_HEAD(magicvars);
 
 struct magicvar_dyn {
-	char *name;
-	char *description;
+	const char *name;
+	const char *description;
 	struct list_head list;
 };
 
@@ -39,8 +39,8 @@ static struct magicvar_dyn *magicvar_find(const char *name)
 
 static void magicvar_remove(struct magicvar_dyn *md)
 {
-	free(md->name);
-	free(md->description);
+	free_const(md->name);
+	free_const(md->description);
 	list_del(&md->list);
 	free(md);
 }
@@ -62,8 +62,8 @@ static int magicvar_add(const char *name, const char *description)
 		magicvar_remove(md);
 
 	md = xzalloc(sizeof(*md));
-	md->name = xstrdup(name);
-	md->description = xstrdup(description);
+	md->name = xstrdup_const(name);
+	md->description = xstrdup_const(description);
 
 	list_add_sort(&md->list, &magicvars, compare);
 
diff --git a/commands/menu.c b/commands/menu.c
index e0fe09b5088b..b715d85c123f 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -128,7 +128,7 @@ static int do_menu_add(struct cmd_menu *cm)
 	if (!m)
 		goto free;
 
-	m->name = strdup(cm->menu);
+	m->name = strdup_const(cm->menu);
 	if (!m->name)
 		goto free;
 
@@ -216,9 +216,9 @@ static int do_menu_show(struct cmd_menu *cm)
 	if (cm->auto_select != -EINVAL) {
 		menu_set_auto_select(m, cm->auto_select);
 
-		free(m->auto_display);
+		free_const(m->auto_display);
 
-		m->auto_display = strdup(cm->description);
+		m->auto_display = strdup_const(cm->description);
 	}
 
 	return menu_show(m);
diff --git a/commands/of_property.c b/commands/of_property.c
index 0c914c55c6bf..c1c2b343bccc 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -187,8 +187,8 @@ static int of_parse_prop(struct device_node *root, char * const *newval, int cou
 }
 
 struct of_fixup_property_data {
-	char *path;
-	char *propname;
+	const char *path;
+	const char *propname;
 	void *data;
 	int len;
 };
@@ -219,8 +219,8 @@ static int do_of_property_set_fixup(const char *path, const char *propname,
 	struct of_fixup_property_data *fixup;
 
 	fixup = xzalloc(sizeof(*fixup));
-	fixup->path = xstrdup(path);
-	fixup->propname = xstrdup(propname);
+	fixup->path = xstrdup_const(path);
+	fixup->propname = xstrdup_const(propname);
 	fixup->data = data;
 	fixup->len = len;
 
@@ -232,8 +232,8 @@ static int do_of_property_delete_fixup(const char *path, const char *propname)
 	struct of_fixup_property_data *fixup;
 
 	fixup = xzalloc(sizeof(*fixup));
-	fixup->path = xstrdup(path);
-	fixup->propname = xstrdup(propname);
+	fixup->path = xstrdup_const(path);
+	fixup->propname = xstrdup_const(propname);
 	fixup->data = NULL;
 	fixup->len = 0;
 
diff --git a/common/blspec.c b/common/blspec.c
index 23a24c63db15..ea334e18718a 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -186,8 +186,8 @@ static void blspec_entry_free(struct bootentry *be)
 	struct blspec_entry *entry = container_of(be, struct blspec_entry, entry);
 
 	of_delete_node(entry->node);
-	free(entry->configpath);
-	free(entry->rootpath);
+	free_const(entry->configpath);
+	free_const(entry->rootpath);
 	free(entry);
 }
 
@@ -517,8 +517,8 @@ int blspec_scan_file(struct bootentries *bootentries, const char *root,
 		return PTR_ERR(entry);
 
 	root = root ?: get_mounted_path(configname);
-	entry->rootpath = xstrdup(root);
-	entry->configpath = xstrdup(configname);
+	entry->rootpath = xstrdup_const(root);
+	entry->configpath = xstrdup_const(configname);
 	entry->cdev = get_cdev_by_mountpath(root);
 
 	if (!entry_is_of_compatible(entry)) {
diff --git a/common/boot.c b/common/boot.c
index 89eb7a974566..f6ac4779cc33 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -44,17 +44,17 @@ void bootentries_free(struct bootentries *bootentries)
 
 	list_for_each_entry_safe(be, tmp, &bootentries->entries, list) {
 		list_del(&be->list);
-		free(be->title);
+		free_const(be->title);
 		free(be->description);
-		free(be->me.display);
+		free_const(be->me.display);
 		be->release(be);
 	}
 
 	if (bootentries->menu) {
 		int i;
 		for (i = 0; i < bootentries->menu->display_lines; i++)
-			free(bootentries->menu->display[i]);
-		free(bootentries->menu->display);
+			free_const(bootentries->menu->display[i]);
+		free_const(bootentries->menu->display);
 	}
 	free(bootentries->menu);
 	free(bootentries);
@@ -62,7 +62,7 @@ void bootentries_free(struct bootentries *bootentries)
 
 struct bootentry_script {
 	struct bootentry entry;
-	char *scriptpath;
+	const char *scriptpath;
 };
 
 /*
@@ -179,7 +179,7 @@ static void bootscript_entry_release(struct bootentry *entry)
 {
 	struct bootentry_script *bs = container_of(entry, struct bootentry_script, entry);
 
-	free(bs->scriptpath);
+	free_const(bs->scriptpath);
 	free(bs);
 }
 
@@ -203,8 +203,8 @@ static int bootscript_create_entry(struct bootentries *bootentries, const char *
 	bs->entry.me.type = MENU_ENTRY_NORMAL;
 	bs->entry.release = bootscript_entry_release;
 	bs->entry.boot = bootscript_boot;
-	bs->scriptpath = xstrdup(name);
-	bs->entry.title = xstrdup(kbasename(bs->scriptpath));
+	bs->scriptpath = xstrdup_const(name);
+	bs->entry.title = xstrdup_const(kbasename(bs->scriptpath));
 	bs->entry.description = basprintf("script: %s", name);
 	bootentries_add_entry(bootentries, &bs->entry);
 
@@ -305,18 +305,18 @@ int bootentry_create_from_name(struct bootentries *bootentries,
 	}
 
 	if (IS_ENABLED(CONFIG_COMMAND_SUPPORT) && !found) {
-		char *path;
+		const char *path;
 
 		if (*name != '/')
 			path = basprintf("/env/boot/%s", name);
 		else
-			path = xstrdup(name);
+			path = xstrdup_const(name);
 
 		ret = bootscript_scan_path(bootentries, path);
 		if (ret > 0)
 			found += ret;
 
-		free(path);
+		free_const(path);
 	}
 
 	return found;
@@ -339,7 +339,7 @@ void bootsources_menu(struct bootentries *bootentries,
 
 	bootentries_for_each_entry(bootentries, entry) {
 		if (!entry->me.display)
-			entry->me.display = xstrdup(entry->title);
+			entry->me.display = xstrdup_const(entry->title);
 		entry->me.action = bootsource_action;
 		menu_add_entry(bootentries->menu, &entry->me);
 
diff --git a/common/bootchooser.c b/common/bootchooser.c
index 65291c5e59d3..ed3db0092ddb 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -64,7 +64,7 @@ struct bootchooser_target {
 	int id;
 
 	/* spec */
-	char *name;
+	const char *name;
 	unsigned int default_attempts;
 	unsigned int default_priority;
 
@@ -228,7 +228,7 @@ static struct bootchooser_target *bootchooser_target_new(struct bootchooser *bc,
 	const char *val;
 	int ret;
 
-	target->name = xstrdup(name);
+	target->name = xstrdup_const(name);
 	target->prefix = basprintf("%s.%s", BOOTCHOOSER_PREFIX, name);
 	target->state_prefix = basprintf("%s.%s", bc->state_prefix, name);
 	target->default_attempts = global_default_attempts;
@@ -574,7 +574,7 @@ int bootchooser_put(struct bootchooser *bc)
 		free(target->boot);
 		free(target->prefix);
 		free(target->state_prefix);
-		free(target->name);
+		free_const(target->name);
 		free(target);
 	}
 
diff --git a/common/elf.c b/common/elf.c
index 62f793010fad..ec78e45bf180 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -340,7 +340,7 @@ void elf_close(struct elf_image *elf)
 
 	if (elf->filename) {
 		free(elf->hdr_buf);
-		free(elf->filename);
+		free_const(elf->filename);
 	}
 
 	free(elf);
diff --git a/common/env.c b/common/env.c
index 1e57e09e9de7..e34e3ac078d6 100644
--- a/common/env.c
+++ b/common/env.c
@@ -35,15 +35,15 @@ static void free_context(struct env_context *c)
 	struct variable_d *v, *tmp;
 
 	list_for_each_entry_safe(v, tmp, &c->local, list) {
-		free(v->name);
-		free(v->data);
+		free_const(v->name);
+		free_const(v->data);
 		list_del(&v->list);
 		free(v);
 	}
 
 	list_for_each_entry_safe(v, tmp, &c->global, list) {
-		free(v->name);
-		free(v->data);
+		free_const(v->name);
+		free_const(v->data);
 		list_del(&v->list);
 		free(v);
 	}
@@ -96,7 +96,7 @@ int env_pop_context(void)
  * @param[in] var Variable of interest
  * @return Value as text
  */
-char *var_val(struct variable_d *var)
+const char *var_val(struct variable_d *var)
 {
 	return var->data;
 }
@@ -106,7 +106,7 @@ char *var_val(struct variable_d *var)
  * @param[in] var Variable of interest
  * @return Name as text
  */
-char *var_name(struct variable_d *var)
+const char *var_name(struct variable_d *var)
 {
 	return var->name;
 }
@@ -186,14 +186,14 @@ static int setenv_raw(struct list_head *l, const char *name, const char *value)
 	list_for_each_entry(v, l, list) {
 		if (!strcmp(v->name, name)) {
 			if (value) {
-				free(v->data);
-				v->data = xstrdup(value);
+				free_const(v->data);
+				v->data = xstrdup_const(value);
 
 				return 0;
 			} else {
 				list_del(&v->list);
-				free(v->name);
-				free(v->data);
+				free_const(v->name);
+				free_const(v->data);
 				free(v);
 
 				return 0;
@@ -203,8 +203,8 @@ static int setenv_raw(struct list_head *l, const char *name, const char *value)
 
 	if (value) {
 		v = xzalloc(sizeof(*v));
-		v->name = xstrdup(name);
-		v->data = xstrdup(value);
+		v->name = xstrdup_const(name);
+		v->data = xstrdup_const(value);
 		list_add_tail(&v->list, l);
 	}
 
@@ -252,7 +252,7 @@ static int dev_setenv(const char *name, const char *val)
  */
 int setenv(const char *_name, const char *value)
 {
-	char *name = strdup(_name);
+	const char *name = strdup_const(_name);
 	int ret = 0;
 	struct list_head *list;
 	const char *dot;
@@ -278,7 +278,7 @@ int setenv(const char *_name, const char *value)
 
 	ret = setenv_raw(list, name, value);
 out:
-	free(name);
+	free_const(name);
 
 	return ret;
 }
diff --git a/common/file-list.c b/common/file-list.c
index 3867e79c0972..40ccfa97ec44 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -27,7 +27,9 @@ struct file_list_entry *file_list_entry_by_name(struct file_list *files, const c
 	return NULL;
 }
 
-static int __file_list_add_entry(struct file_list *files, char *name, char *filename,
+static int __file_list_add_entry(struct file_list *files,
+				 const char *name,
+				 const char *filename,
 				 unsigned long flags)
 {
 	struct file_list_entry *entry;
@@ -50,13 +52,15 @@ static int __file_list_add_entry(struct file_list *files, char *name, char *file
 int file_list_add_entry(struct file_list *files, const char *name, const char *filename,
 			unsigned long flags)
 {
-	return __file_list_add_entry(files, xstrdup(name), xstrdup(filename), flags);
+	return __file_list_add_entry(files,
+				     xstrdup_const(name), xstrdup_const(filename),
+				     flags);
 }
 
 int file_list_add_cdev_entry(struct file_list *files, struct cdev *cdev,
 			     unsigned long flags)
 {
-	return __file_list_add_entry(files, xstrdup(cdev->name),
+	return __file_list_add_entry(files, xstrdup_const(cdev->name),
 				     xasprintf("/dev/%s", cdev->name), flags);
 }
 
@@ -227,8 +231,8 @@ void file_list_free(struct file_list *files)
 		return;
 
 	list_for_each_entry_safe(entry, tmp, &files->list, list) {
-		free(entry->name);
-		free(entry->filename);
+		free_const(entry->name);
+		free_const(entry->filename);
 		free(entry);
 	}
 
diff --git a/common/globalvar.c b/common/globalvar.c
index ab224a27a130..5f5b7d44ae62 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -189,7 +189,7 @@ static int nv_set(struct device *dev, struct param_d *p, const char *name,
 	}
 
 	if (p) {
-		free(p->value);
+		free_const(p->value);
 		p->value = xstrdup(val);
 	}
 
@@ -246,7 +246,7 @@ static int __nvvar_add(const char *name, const char *value)
 		value = dev_get_param(&global_device, name);
 
 	if (value && p) {
-		free(p->value);
+		free_const(p->value);
 		p->value = xstrdup(value);
 	}
 
diff --git a/common/menu.c b/common/menu.c
index 4007c476c3d9..128043c225df 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -34,11 +34,11 @@ void menu_free(struct menu *m)
 
 	if (!m)
 		return;
-	free(m->name);
+	free_const(m->name);
 	for (i = 0; i < m->display_lines; i++)
-		free(m->display[i]);
+		free_const(m->display[i]);
 	free(m->display);
-	free(m->auto_display);
+	free_const(m->auto_display);
 
 	list_for_each_entry_safe(me, tmp, &m->entries, list)
 		menu_entry_free(me);
@@ -98,7 +98,7 @@ void menu_remove_entry(struct menu *m, struct menu_entry *me)
 }
 EXPORT_SYMBOL(menu_remove_entry);
 
-struct menu* menu_get_by_name(char *name)
+struct menu* menu_get_by_name(const char *name)
 {
 	struct menu* m;
 
@@ -387,7 +387,7 @@ void menu_action_exit(struct menu *m, struct menu_entry *me) {}
 EXPORT_SYMBOL(menu_action_exit);
 
 struct submenu {
-	char *submenu;
+	const char *submenu;
 	struct menu_entry entry;
 };
 
@@ -410,12 +410,14 @@ static void submenu_free(struct menu_entry *me)
 {
 	struct submenu *s = container_of(me, struct submenu, entry);
 
-	free(s->entry.display);
-	free(s->submenu);
+	free_const(s->entry.display);
+	free_const(s->submenu);
 	free(s);
 }
 
-struct menu_entry *menu_add_submenu(struct menu *parent, char *submenu, char *display)
+struct menu_entry *menu_add_submenu(struct menu *parent,
+				    const char *submenu,
+				    const char *display)
 {
 	struct submenu *s = calloc(1, sizeof(*s));
 	int ret;
@@ -423,10 +425,10 @@ struct menu_entry *menu_add_submenu(struct menu *parent, char *submenu, char *di
 	if (!s)
 		return ERR_PTR(-ENOMEM);
 
-	s->submenu = strdup(submenu);
+	s->submenu = strdup_const(submenu);
 	s->entry.action = menu_action_show;
 	s->entry.free = submenu_free;
-	s->entry.display = strdup(display);
+	s->entry.display = strdup_const(display);
 	if (!s->entry.display || !s->submenu) {
 		ret = -ENOMEM;
 		goto err_free;
@@ -445,7 +447,7 @@ struct menu_entry *menu_add_submenu(struct menu *parent, char *submenu, char *di
 EXPORT_SYMBOL(menu_add_submenu);
 
 struct action_entry {
-	char *command;
+	const char *command;
 	struct menu_entry entry;
 };
 
@@ -469,14 +471,14 @@ static void menu_command_free(struct menu_entry *me)
 {
 	struct action_entry *e = container_of(me, struct action_entry, entry);
 
-	free(e->entry.display);
-	free(e->command);
+	free_const(e->entry.display);
+	free_const(e->command);
 
 	free(e);
 }
 
-struct menu_entry *menu_add_command_entry(struct menu *m, char *display,
-					  char *command, menu_entry_type type)
+struct menu_entry *menu_add_command_entry(struct menu *m, const  char *display,
+					  const char *command, menu_entry_type type)
 {
 	struct action_entry *e = calloc(1, sizeof(*e));
 	int ret;
@@ -484,11 +486,11 @@ struct menu_entry *menu_add_command_entry(struct menu *m, char *display,
 	if (!e)
 		return ERR_PTR(-ENOMEM);
 
-	e->command = strdup(command);
+	e->command = strdup_const(command);
 	e->entry.action = menu_action_command;
 	e->entry.free = menu_command_free;
 	e->entry.type = type;
-	e->entry.display = strdup(display);
+	e->entry.display = strdup_const(display);
 
 	if (!e->entry.display || !e->command) {
 		ret = -ENOMEM;
@@ -555,7 +557,7 @@ void menu_add_title(struct menu *m, const char *display)
 	m->display_lines = lines;
 
 	for (src = tmp, i = 0; i < lines; i++) {
-		m->display[i] = xstrdup(src);
+		m->display[i] = xstrdup_const(src);
 		/* Go to the next line */
 		src += strlen(src) + 1;
 	}
diff --git a/common/menutree.c b/common/menutree.c
index 751350d75455..196c2f49fa58 100644
--- a/common/menutree.c
+++ b/common/menutree.c
@@ -49,7 +49,7 @@ static void menutree_entry_free(struct menu_entry *me)
 	struct menutree *mt = container_of(me, struct menutree, me);
 
 	free(mt->action);
-	free(mt->me.display);
+	free_const(mt->me.display);
 	free(mt);
 }
 
@@ -153,7 +153,7 @@ int menutree(const char *path, int toplevel)
 
 	if (!toplevel) {
 		mt = xzalloc(sizeof(*mt));
-		mt->me.display = xstrdup("back");
+		mt->me.display = xstrdup_const("back");
 		mt->me.type = MENU_ENTRY_NORMAL;
 		mt->me.non_re_ent = 1;
 		mt->me.free = menutree_entry_free;
diff --git a/common/poller.c b/common/poller.c
index 77d93ae8ccdf..83f7205e5d57 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -33,7 +33,7 @@ int poller_register(struct poller_struct *poller, const char *name)
 	if (poller->registered)
 		return -EBUSY;
 
-	poller->name = xstrdup(name);
+	poller->name = xstrdup_const(name);
 	list_add_tail(&poller->list, &poller_list);
 	poller->registered = 1;
 
@@ -48,7 +48,7 @@ int poller_unregister(struct poller_struct *poller)
 
 	list_del(&poller->list);
 	poller->registered = 0;
-	free(poller->name);
+	free_const(poller->name);
 
 	return 0;
 }
diff --git a/common/resource.c b/common/resource.c
index 436a0488ddf0..c233b106c17b 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -23,7 +23,7 @@ static int init_resource(struct resource *res, const char *name)
 {
 	INIT_LIST_HEAD(&res->children);
 	res->parent = NULL;
-	res->name = xstrdup(name);
+	res->name = xstrdup_const(name);
 
 	return 0;
 }
@@ -101,7 +101,7 @@ int release_region(struct resource *res)
 		return -EBUSY;
 
 	list_del(&res->sibling);
-	free((char *)res->name);
+	free_const(res->name);
 	free(res);
 
 	return 0;
@@ -122,8 +122,8 @@ int __merge_regions(const char *name,
 	else
 		resa->start = resb->start;
 
-	free((char *)resa->name);
-	resa->name = xstrdup(name);
+	free_const(resa->name);
+	resa->name = xstrdup_const(name);
 	release_region(resb);
 
 	return 0;
diff --git a/common/restart.c b/common/restart.c
index 2bdee289831c..e54b4d7c5b82 100644
--- a/common/restart.c
+++ b/common/restart.c
@@ -62,7 +62,7 @@ int restart_handler_register_fn(const char *name,
 
 	rst = xzalloc(sizeof(*rst));
 
-	rst->name = xstrdup(name);
+	rst->name = xstrdup_const(name);
 	rst->restart = restart_fn;
 
 	ret = restart_handler_register(rst);
diff --git a/common/slice.c b/common/slice.c
index 9d7e0d16cfa2..a63d290d4ee4 100644
--- a/common/slice.c
+++ b/common/slice.c
@@ -198,7 +198,7 @@ static LIST_HEAD(slices);
 void slice_init(struct slice *slice, const char *name)
 {
 	INIT_LIST_HEAD(&slice->deps);
-	slice->name = xstrdup(name);
+	slice->name = xstrdup_const(name);
 	list_add_tail(&slice->list, &slices);
 }
 
@@ -229,7 +229,7 @@ void slice_exit(struct slice *slice)
 		}
 	}
 
-	free(slice->name);
+	free_const(slice->name);
 }
 
 struct slice command_slice;
diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index df81902bf7be..d8d7c71a8a2b 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -386,7 +386,7 @@ int state_storage_init(struct state *state, const char *path,
 	storage->stridesize = stridesize;
 	storage->offset = offset;
 	storage->max_size = max_size;
-	storage->path = xstrdup(path);
+	storage->path = xstrdup_const(path);
 
 	if (IS_ENABLED(CONFIG_MTD))
 		ret = mtd_get_meminfo(path, &meminfo);
@@ -432,5 +432,5 @@ void state_storage_free(struct state_backend_storage *storage)
 		bucket->free(bucket);
 	}
 
-	free(storage->path);
+	free_const(storage->path);
 }
diff --git a/common/state/state.h b/common/state/state.h
index f0c5b1de4123..473717a379a6 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -97,7 +97,7 @@ struct state_backend_storage {
 	uint32_t stridesize;
 	off_t offset;
 	size_t max_size;
-	char *path;
+	const char *path;
 
 	bool readonly;
 };
diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index 77946206cd02..7d99207e8863 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -251,7 +251,7 @@ static struct state_variable *state_enum32_create(struct state *state,
 		ret = of_property_read_string_index(node, "names", i, &name);
 		if (ret)
 			goto out;
-		enum32->names[i] = xstrdup(name);
+		enum32->names[i] = xstrdup_const(name);
 	}
 
 	param = dev_add_param_enum(&state->dev, name, state_set_dirty,
@@ -265,7 +265,7 @@ static struct state_variable *state_enum32_create(struct state *state,
 	return &enum32->var;
 out:
 	for (i--; i >= 0; i--)
-		free((char *)enum32->names[i]);
+		free_const(enum32->names[i]);
 	free(enum32->names);
 	free(enum32);
 	return ERR_PTR(ret);
diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index c0d14256d3a1..0dda8f404e51 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -28,7 +28,7 @@ static void led_gpio_set(struct led *led, unsigned int value)
 int led_gpio_register(struct gpio_led *led)
 {
 	int ret;
-	char *name = led->led.name;
+	const char *name = led->led.name;
 
 	ret = gpio_request(led->gpio, name ? name : "led");
 	if (ret)
@@ -86,7 +86,7 @@ static void led_gpio_bicolor_set(struct led *led, unsigned int value)
 int led_gpio_bicolor_register(struct gpio_bicolor_led *led)
 {
 	int ret;
-	char *name = led->led.name;
+	const char *name = led->led.name;
 
 	ret = gpio_request(led->gpio_c0, name ? name : "led_c0");
 	if (ret)
@@ -146,7 +146,7 @@ static void led_gpio_rgb_set(struct led *led, unsigned int value)
 int led_gpio_rgb_register(struct gpio_rgb_led *led)
 {
 	int ret;
-	char *name = led->led.name;
+	const char *name = led->led.name;
 
 	ret = gpio_request(led->gpio_r, name ? name : "led_r");
 	if (ret)
diff --git a/drivers/led/led-pwm.c b/drivers/led/led-pwm.c
index 6f4abf97c8b7..7d16edea6017 100644
--- a/drivers/led/led-pwm.c
+++ b/drivers/led/led-pwm.c
@@ -53,7 +53,7 @@ static int led_pwm_of_probe(struct device *dev)
 			continue;
 
 		pwmled = xzalloc(sizeof(*pwmled));
-		pwmled->led.name = xstrdup(child->name);
+		pwmled->led.name = xstrdup_const(child->name);
 		pwmled->pwm = pwm;
 
 		ret = of_property_read_u32(child, "max-brightness", &pwmled->led.max_value);
diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 67276cf3b57b..4e69b3fa582b 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -150,7 +150,7 @@ static struct nvmem_cell *nvmem_find_cell(const char *cell_id)
 static void nvmem_cell_drop(struct nvmem_cell *cell)
 {
 	list_del(&cell->node);
-	kfree(cell->id);
+	kfree_const(cell->id);
 	kfree(cell);
 }
 
@@ -841,7 +841,7 @@ int nvmem_cell_read_variable_le_u32(struct device *dev, const char *cell_id,
 				    u32 *val)
 {
 	size_t len;
-	const u8 *buf;
+	u8 *buf;
 	int i;
 
 	len = sizeof(*val);
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 960a9327aed2..4f25f0760a8b 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2417,12 +2417,12 @@ struct device_node *of_new_node(struct device_node *parent, const char *name)
 	INIT_LIST_HEAD(&node->properties);
 
 	if (parent) {
-		node->name = xstrdup(name);
+		node->name = xstrdup_const(name);
 		node->full_name = basprintf("%pOF/%s",
 					      node->parent, name);
 		list_add(&node->list, &parent->list);
 	} else {
-		node->name = xstrdup("");
+		node->name = xstrdup_const("");
 		node->full_name = xstrdup("");
 		INIT_LIST_HEAD(&node->list);
 	}
@@ -2436,7 +2436,7 @@ struct property *__of_new_property(struct device_node *node, const char *name,
 	struct property *prop;
 
 	prop = xzalloc(sizeof(*prop));
-	prop->name = xstrdup(name);
+	prop->name = xstrdup_const(name);
 	prop->length = len;
 	prop->value = data;
 
@@ -2505,7 +2505,7 @@ void of_delete_property(struct property *pp)
 
 	list_del(&pp->list);
 
-	free(pp->name);
+	free_const(pp->name);
 	free(pp->value);
 	free(pp);
 }
@@ -2521,7 +2521,7 @@ struct property *of_rename_property(struct device_node *np,
 
 	of_property_write_bool(np, new_name, false);
 
-	free(pp->name);
+	free_const(pp->name);
 	pp->name = xstrdup(new_name);
 	return pp;
 }
@@ -2903,7 +2903,7 @@ void of_delete_node(struct device_node *node)
 		list_del(&node->list);
 	}
 
-	free(node->name);
+	free_const(node->name);
 	free(node->full_name);
 	free(node);
 }
diff --git a/drivers/of/of_net.c b/drivers/of/of_net.c
index 75a24073da51..58b4f99da111 100644
--- a/drivers/of/of_net.c
+++ b/drivers/of/of_net.c
@@ -82,7 +82,7 @@ static int of_get_mac_addr(struct device_node *np, const char *name, u8 *addr)
 int of_get_mac_addr_nvmem(struct device_node *np, u8 *addr)
 {
 	struct nvmem_cell *cell;
-	const void *mac;
+	void *mac;
 	size_t len;
 
 	if (!IS_ENABLED(CONFIG_NVMEM))
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 30ae270b518c..2c3b009ea66d 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -257,7 +257,7 @@ static int __regulator_register(struct regulator_dev *rdev, const char *name)
 	list_add_tail(&rdev->list, &regulator_list);
 
 	if (name)
-		rdev->name = xstrdup(name);
+		rdev->name = xstrdup_const(name);
 
 	ret = regulator_init_voltage(rdev);
 	if (ret)
@@ -276,7 +276,7 @@ static int __regulator_register(struct regulator_dev *rdev, const char *name)
 	return 0;
 err:
 	list_del(&rdev->list);
-	free((char *)rdev->name);
+	free_const(rdev->name);
 
 	return ret;
 }
diff --git a/drivers/soc/kvx/kvx_socinfo.c b/drivers/soc/kvx/kvx_socinfo.c
index 4b193ebac98c..014b3521eceb 100644
--- a/drivers/soc/kvx/kvx_socinfo.c
+++ b/drivers/soc/kvx/kvx_socinfo.c
@@ -140,7 +140,7 @@ static int kvx_read_board_sn(struct device_node *socinfo)
 		return PTR_ERR(cell);
 	}
 
-	sn = (char *)nvmem_cell_read(cell, &len);
+	sn = nvmem_cell_read(cell, &len);
 	nvmem_cell_put(cell);
 	if (IS_ERR(sn)) {
 		pr_debug("Fail to read board_sn\n");
diff --git a/include/blspec.h b/include/blspec.h
index 8297b9fdc1b6..affcea9a0ad5 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -10,8 +10,8 @@ struct blspec_entry {
 
 	struct device_node *node;
 	struct cdev *cdev;
-	char *rootpath;
-	char *configpath;
+	const char *rootpath;
+	const char *configpath;
 };
 
 int blspec_entry_var_set(struct blspec_entry *entry, const char *name,
diff --git a/include/boot.h b/include/boot.h
index 0f97901a9a72..53ad1360a5f3 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -29,7 +29,7 @@ struct bootentries {
 struct bootentry {
 	struct list_head list;
 	struct menu_entry me;
-	char *title;
+	const char *title;
 	char *description;
 	int (*boot)(struct bootentry *entry, int verbose, int dryrun);
 	void (*release)(struct bootentry *entry);
diff --git a/include/console.h b/include/console.h
index 62d13d7aa02c..8d3ec33bfac6 100644
--- a/include/console.h
+++ b/include/console.h
@@ -40,7 +40,7 @@ struct console_device {
 	int (*open)(struct console_device *cdev);
 	int (*close)(struct console_device *cdev);
 
-	char *devname;
+	const char *devname;
 	int devid;
 
 	struct list_head list;
diff --git a/include/digest.h b/include/digest.h
index 2816ddffaed2..b88256886c74 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -40,8 +40,8 @@ enum hash_algo {
 };
 
 struct crypto_alg {
-	char *name;
-	char *driver_name;
+	const char *name;
+	const char *driver_name;
 	int priority;
 #define DIGEST_ALGO_NEED_KEY	(1 << 0)
 	unsigned int flags;
diff --git a/include/elf.h b/include/elf.h
index de1549ee8620..8805eb4a2fc9 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -406,7 +406,7 @@ struct elf_image {
 	void *low_addr;
 	void *high_addr;
 	void *hdr_buf;
-	char *filename;
+	const char *filename;
 };
 
 static inline size_t elf_get_mem_size(struct elf_image *elf)
diff --git a/include/environment.h b/include/environment.h
index bd863ad3f425..f26c68ba3e34 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -15,8 +15,8 @@
  */
 struct variable_d {
 	struct list_head list;
-	char *name;
-	char *data;
+	const char *name;
+	const char *data;
 };
 
 struct env_context {
@@ -26,8 +26,8 @@ struct env_context {
 };
 
 struct env_context *get_current_context(void);
-char *var_val(struct variable_d *);
-char *var_name(struct variable_d *);
+const char *var_val(struct variable_d *);
+const char *var_name(struct variable_d *);
 
 #if IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES) && IN_PROPER
 const char *getenv(const char *);
diff --git a/include/file-list.h b/include/file-list.h
index 1625f116a0e6..2fcb2e8e5b79 100644
--- a/include/file-list.h
+++ b/include/file-list.h
@@ -13,8 +13,8 @@ struct cdev;
 #define FILE_LIST_FLAG_OPTIONAL (1 << 4)
 
 struct file_list_entry {
-	char *name;
-	char *filename;
+	const char *name;
+	const char *filename;
 	unsigned long flags;
 	struct list_head list;
 };
diff --git a/include/led.h b/include/led.h
index 6b6aff922a86..08bda19c1cf4 100644
--- a/include/led.h
+++ b/include/led.h
@@ -10,7 +10,7 @@
 struct led {
 	void (*set)(struct led *, unsigned int value);
 	int max_value;
-	char *name;
+	const char *name;
 	int num;
 	struct list_head list;
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 7e777b67f486..733ba356dd4b 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -13,6 +13,7 @@
 #include <linux/err.h>
 #include <linux/spinlock.h>
 #include <linux/stringify.h>
+#include <linux/string.h>
 #include <linux/container_of.h>
 #include <deep-probe.h>
 #include <xfuncs.h>
@@ -690,7 +691,8 @@ static inline struct clk_hw *clk_hw_register_gate(struct device *dev,
 						  u8 clk_gate_flags,
 						  spinlock_t *lock)
 {
-	return clk_to_clk_hw(clk_register_gate(dev, xstrdup(name), xstrdup(parent_name),
+	return clk_to_clk_hw(clk_register_gate(dev, xstrdup_const(name),
+					       xstrdup_const(parent_name),
 					       flags, reg, bit_idx,
 					       clk_gate_flags, lock));
 }
diff --git a/include/mci.h b/include/mci.h
index f607ef1b74d5..1e3757027406 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -611,7 +611,7 @@ struct mci_part {
 	struct mci		*mci;
 	uint64_t		size;		/* partition size (in bytes) */
 	unsigned int		part_cfg;	/* partition type */
-	char			*name;
+	const char		*name;
 	int			idx;
 	unsigned int		area_type;
 #define MMC_BLK_DATA_AREA_MAIN	(1<<0)
diff --git a/include/menu.h b/include/menu.h
index bf1f6c48a834..eeeb8423061a 100644
--- a/include/menu.h
+++ b/include/menu.h
@@ -18,7 +18,7 @@ typedef enum {
 
 struct menu_entry {
 	int num;
-	char *display;
+	const char *display;
 	void (*action)(struct menu *m, struct menu_entry *me);
 	void (*free)(struct menu_entry *me);
 	int non_re_ent;
@@ -33,14 +33,14 @@ struct menu_entry {
 };
 
 struct menu {
-	char *name;
+	const char *name;
 	/* Multiline title */
-	char **display;
+	const char **display;
 	/* Number of lines */
 	int display_lines;
 
 	int auto_select;
-	char *auto_display;
+	const char *auto_display;
 
 	struct list_head list;
 	struct list_head entries;
@@ -66,13 +66,17 @@ static inline struct menu* menu_alloc(void)
 	}
 	return m;
 }
-struct menu_entry *menu_add_submenu(struct menu *parent, char *submenu, char *display);
-struct menu_entry *menu_add_command_entry(struct menu *m, char *display,
-					  char *command, menu_entry_type type);
+struct menu_entry *menu_add_submenu(struct menu *parent,
+				    const char *submenu,
+				    const char *display);
+struct menu_entry *menu_add_command_entry(struct menu *m,
+					  const char *display,
+					  const char *command,
+					  menu_entry_type type);
 void menu_free(struct menu *m);
 int menu_add(struct menu* m);
 void menu_remove(struct menu *m);
-struct menu* menu_get_by_name(char *name);
+struct menu* menu_get_by_name(const char *name);
 int menu_show(struct menu *m);
 int menu_set_selected_entry(struct menu *m, struct menu_entry* me);
 int menu_set_selected(struct menu *m, int num);
diff --git a/include/net.h b/include/net.h
index a04ed5b0ab92..a3c466784630 100644
--- a/include/net.h
+++ b/include/net.h
@@ -58,7 +58,7 @@ struct eth_device {
 	struct device dev;
 	char *devname;
 	struct device *parent;
-	char *nodepath;
+	const char *nodepath;
 
 	IPaddr_t ipaddr;
 	IPaddr_t netmask;
diff --git a/include/of.h b/include/of.h
index 3d24e17e43a0..708b3a32556a 100644
--- a/include/of.h
+++ b/include/of.h
@@ -20,7 +20,7 @@
 typedef u32 phandle;
 
 struct property {
-	char *name;
+	const char *name;
 	int length;
 	void *value;
 	const void *value_const;
@@ -28,7 +28,7 @@ struct property {
 };
 
 struct device_node {
-	char *name;
+	const char *name;
 	char *full_name;
 
 	struct list_head properties;
@@ -1308,7 +1308,7 @@ static inline struct device_node *of_find_root_node(struct device_node *node)
 struct of_overlay_filter {
 	bool (*filter_filename)(struct of_overlay_filter *, const char *filename);
 	bool (*filter_content)(struct of_overlay_filter *, struct device_node *);
-	char *name;
+	const char *name;
 	struct list_head list;
 };
 
diff --git a/include/param.h b/include/param.h
index 1ccb6a26eb78..1b0315999e39 100644
--- a/include/param.h
+++ b/include/param.h
@@ -32,7 +32,7 @@ struct param_d {
 	int (*set)(struct device *, struct param_d *param, const char *val);
 	void (*info)(struct param_d *param);
 	unsigned int flags;
-	char *name;
+	const char *name;
 	char *value;
 	struct device *dev;
 	void *driver_priv;
diff --git a/include/poller.h b/include/poller.h
index 31db907ba5b8..d09968df1664 100644
--- a/include/poller.h
+++ b/include/poller.h
@@ -14,7 +14,7 @@ struct poller_struct {
 	u16 registered:1;
 	u16 overtime;
 	struct list_head list;
-	char *name;
+	const char *name;
 };
 
 int poller_register(struct poller_struct *poller, const char *name);
diff --git a/include/slice.h b/include/slice.h
index 800c5b2de08c..eb33d50339bf 100644
--- a/include/slice.h
+++ b/include/slice.h
@@ -15,7 +15,7 @@ enum slice_action {
 struct slice {
 	int acquired;
 	struct list_head deps;
-	char *name;
+	const char *name;
 	struct list_head list;
 };
 
diff --git a/include/stringlist.h b/include/stringlist.h
index 60b96ecb8319..dcfd33c6e064 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -7,7 +7,7 @@
 
 struct string_list {
 	struct list_head list;
-	char *str;
+	const char *str;
 };
 
 int string_list_add(struct string_list *sl, const char *str);
@@ -29,7 +29,7 @@ static inline void string_list_free(struct string_list *sl)
 	struct string_list *entry, *safe;
 
 	list_for_each_entry_safe(entry, safe, &sl->list, list) {
-		free(entry->str);
+		free_const(entry->str);
 		free(entry);
 	}
 }
diff --git a/lib/glob.c b/lib/glob.c
index 389580b0ed79..a077f2702b2d 100644
--- a/lib/glob.c
+++ b/lib/glob.c
@@ -77,8 +77,7 @@ static int collated_compare(const void *a, const void *b)
 int glob(const char *pattern, int flags,
 		int (*errfunc) (const char *, int), glob_t *pglob)
 {
-	const char *filename;
-	char *dirname = NULL;
+	const char *filename, *dirname = NULL;
 	size_t dirlen;
 	int status;
 	int oldcount;
@@ -92,19 +91,23 @@ int glob(const char *pattern, int flags,
 	filename = strrchr(pattern, '/');
 	if (filename == NULL) {
 		filename = pattern;
-		dirname = strdup(".");
+		dirname = strdup_const(".");
 		dirlen = 0;
 	} else if (filename == pattern) {
 		/* "/pattern".  */
-		dirname = strdup("/");
+		dirname = strdup_const("/");
 		dirlen = 1;
 		++filename;
 	} else {
+		char *buf;
+
 		dirlen = filename - pattern;
-		dirname = (char *)xmalloc(dirlen + 1);
-		memcpy(dirname, pattern, dirlen);
-		dirname[dirlen] = '\0';
+		buf = (char *)xmalloc(dirlen + 1);
+		memcpy(buf, pattern, dirlen);
+		buf[dirlen] = '\0';
 		++filename;
+
+		dirname = buf;
 	}
 
 	if (filename[0] == '\0' && dirlen > 1) {
@@ -231,7 +234,7 @@ int glob(const char *pattern, int flags,
 #endif
 	status = 0;
 out:
-	free(dirname);
+	free_const(dirname);
 
 	return status;
 }
diff --git a/lib/parameter.c b/lib/parameter.c
index bf9e83152b77..39a245242337 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -153,7 +153,7 @@ static int __dev_add_param(struct param_d *param, struct device *dev,
 	if (get_param_by_name(dev, name))
 		return -EEXIST;
 
-	param->name = strdup(name);
+	param->name = strdup_const(name);
 	if (!param->name)
 		return -ENOMEM;
 
@@ -1014,7 +1014,7 @@ void dev_remove_param(struct param_d *p)
 {
 	p->set(p->dev, p, NULL);
 	list_del(&p->list);
-	free(p->name);
+	free_const(p->name);
 	free(p);
 }
 
@@ -1030,7 +1030,7 @@ void dev_remove_parameters(struct device *dev)
 	list_for_each_entry_safe(p, n, &dev->parameters, list) {
 		p->set(dev, p, NULL);
 		list_del(&p->list);
-		free(p->name);
+		free_const(p->name);
 		free(p);
 	}
 }
diff --git a/lib/stringlist.c b/lib/stringlist.c
index bb2ba54a6c80..908fa3683c36 100644
--- a/lib/stringlist.c
+++ b/lib/stringlist.c
@@ -21,7 +21,7 @@ int string_list_add(struct string_list *sl, const char *str)
 	struct string_list *new;
 
 	new = xmalloc(sizeof(*new));
-	new->str = xstrdup(str);
+	new->str = xstrdup_const(str);
 
 	list_add_tail(&new->list, &sl->list);
 
@@ -56,7 +56,7 @@ int string_list_add_sorted(struct string_list *sl, const char *str)
 	struct string_list *new;
 
 	new = xmalloc(sizeof(*new));
-	new->str = xstrdup(str);
+	new->str = xstrdup_const(str);
 
 	list_add_sort(&new->list, &sl->list, string_list_compare);
 
@@ -79,7 +79,7 @@ int string_list_add_sort_uniq(struct string_list *sl, const char *str)
 	}
 
 	new = xmalloc(sizeof(*new));
-	new->str = xstrdup(str);
+	new->str = xstrdup_const(str);
 
 	list_add_tail(&new->list, &entry->list);
 
diff --git a/net/eth.c b/net/eth.c
index 7229530c055b..e4025753518c 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -489,7 +489,7 @@ int eth_register(struct eth_device *edev)
 
 	if (IS_ENABLED(CONFIG_OFDEVICE) && edev->parent &&
 			edev->parent->of_node)
-		edev->nodepath = xstrdup(edev->parent->of_node->full_name);
+		edev->nodepath = xstrdup_const(edev->parent->of_node->full_name);
 
 	return 0;
 }
@@ -537,7 +537,7 @@ void eth_unregister(struct eth_device *edev)
 	}
 
 	if (IS_ENABLED(CONFIG_OFDEVICE))
-		free(edev->nodepath);
+		free_const(edev->nodepath);
 
 	class_remove_device(&eth_class, &edev->dev);
 
diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index dccc3c3fe79b..ce1c9b48476c 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -469,7 +469,7 @@ our $logFunctions = qr{(?x:
 our $allocFunctions = qr{(?x:
 	(?:(?:devm_)?
 		(?:kv|k|v)[czm]alloc(?:_node|_array)? |
-		kstrdup(?:_const)? |
+		[kx]?strdup(?:_const)? |
 		kmemdup(?:_nul)?) |
 	(?:\w+)?alloc_skb(?:ip_align)? |
 				# dev_alloc_skb/netdev_alloc_skb, et al
-- 
2.39.5



