Delivery-date: Mon, 09 Feb 2026 10:09:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNHC-00AV8z-20
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 10:09:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNHB-0005Jm-An
	for lore@pengutronix.de; Mon, 09 Feb 2026 10:09:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QKojLPF4NEyZ7ACn5uCP+yYIahxJ2Ewk3NAnad8ioA4=; b=pi0sc9uOd99g1ZnmPYuG1jwB3w
	D427z6Sq8JLzYtDmGPJZI5pd3/tq3VDzaCHl+VngS1nmXR/q9n6kOfKyMlLXlSTy4lQMK9QKJ6AJ7
	jjeCtzZN8UELRF0jGZSU2vNYwDyVWOZ0x0FsN0yjx5snycxuOUgCje5942FMfL2Z1Pa4l2u8+67I0
	sevjOHx/Z2854hE7NE9LXnVE5bzCNbkh9qD7WMXpv4azJnSU+Vux6pZfLlQ5KDb+r0xUNKxq3uSZq
	VeTAVSjYRBj3FVKD66Aj9sPqjxQhg9WobZhNvMZ7C0nGyv+xc2kUVthxAqFLh/behL8xi5j5W9Nyd
	ejqzZCDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNGl-0000000F5oA-1EcV;
	Mon, 09 Feb 2026 09:09:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNGg-0000000F5kh-1msL
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 09:09:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vpNGd-0004wQ-HO; Mon, 09 Feb 2026 10:09:15 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  9 Feb 2026 10:08:53 +0100
Message-ID: <20260209090911.3561875-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209090911.3561875-1-a.fatoum@barebox.org>
References: <20260209090911.3561875-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_010918_466243_8350091F 
X-CRM114-Status: GOOD (  15.44  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] boot: give struct bootentry a path member
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Both bootloader spec entries and boot spec maintain a path to the file
the struct bootentry was generated from. Add this member to the struct
bootentry directly to allow referencing it from the boot command in a
follow-up commit.

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/blspec.c | 12 ++++--------
 common/boot.c   | 17 +++++++----------
 include/boot.h  |  1 +
 3 files changed, 12 insertions(+), 18 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index f13e44f1de71..c07e3a2d672d 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -27,7 +27,7 @@ struct blspec_entry {
 	struct device_node *node;
 	struct cdev *cdev;
 	const char *rootpath;
-	const char *configpath;
+	/* configpath is entry.path */
 	char *sortkey;
 };
 
@@ -180,7 +180,6 @@ static void blspec_entry_free(struct bootentry *be)
 	struct blspec_entry *entry = container_of(be, struct blspec_entry, entry);
 
 	of_delete_node(entry->node);
-	free_const(entry->configpath);
 	free_const(entry->rootpath);
 	free(entry->sortkey);
 	free(entry);
@@ -305,7 +304,7 @@ static int blspec_have_entry(struct bootentries *bootentries, const char *path)
 		if (!is_blspec_entry(be))
 			continue;
 		e = container_of(be, struct blspec_entry, entry);
-		if (e->configpath && !strcmp(e->configpath, path))
+		if (e->entry.path && !strcmp(e->entry.path, path))
 			return 1;
 	}
 
@@ -426,8 +425,8 @@ static int blspec_compare(struct list_head *list_a, struct list_head *list_b)
 {
 	struct bootentry *be_a = container_of(list_a, struct bootentry, list);
 	struct bootentry *be_b = container_of(list_b, struct bootentry, list);
+	const char *a_version = be_a->path, *b_version = be_b->path;
 	struct blspec_entry *a, *b;
-	const char *a_version, *b_version;
 	int r;
 
 	/* The boot entry providers are called one by one and passed an empty
@@ -439,9 +438,6 @@ static int blspec_compare(struct list_head *list_a, struct list_head *list_b)
 	a = container_of(be_a, struct blspec_entry, entry);
 	b = container_of(be_b, struct blspec_entry, entry);
 
-	a_version = a->configpath;
-	b_version = b->configpath;
-
 	if (a->sortkey && b->sortkey) {
 		const char *a_machine_id, *b_machine_id;
 
@@ -489,7 +485,7 @@ static int __blspec_scan_file(struct bootentries *bootentries, const char *root,
 
 	root = root ?: get_blspec_prefix_path(configname);
 	entry->rootpath = xstrdup_const(root);
-	entry->configpath = xstrdup_const(configname);
+	entry->entry.path = xstrdup_const(configname);
 	entry->cdev = get_cdev_by_mountpath(root);
 
 	if (!entry_is_of_compatible(entry)) {
diff --git a/common/boot.c b/common/boot.c
index 2e5294ffa2f0..a325f350a80c 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -64,6 +64,7 @@ void bootentries_free(struct bootentries *bootentries)
 		list_del(&be->list);
 		free_const(be->title);
 		free(be->description);
+		free_const(be->path);
 		free_const(be->me.display);
 		be->release(be);
 	}
@@ -81,7 +82,6 @@ void bootentries_free(struct bootentries *bootentries)
 
 struct bootentry_script {
 	struct bootentry entry;
-	const char *scriptpath;
 };
 
 /*
@@ -96,7 +96,7 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 	struct bootm_data backup = {}, data = {};
 
 	if (dryrun == 1) {
-		printf("Would run %s\n", bs->scriptpath);
+		printf("Would run %s\n", bs->entry.path);
 		return 0;
 	}
 
@@ -107,9 +107,9 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 
 	bootm_nattempts = bootm_command_attempts();
 
-	ret = run_command(bs->scriptpath);
+	ret = run_command(bs->entry.path);
 	if (ret) {
-		pr_err("Running script '%s' failed: %pe\n", bs->scriptpath, ERR_PTR(ret));
+		pr_err("Running script '%s' failed: %s\n", bs->entry.path, strerror(-ret));
 		goto out;
 	}
 
@@ -222,10 +222,7 @@ static void bootsource_action(struct menu *m, struct menu_entry *me)
 
 static void bootscript_entry_release(struct bootentry *entry)
 {
-	struct bootentry_script *bs = container_of(entry, struct bootentry_script, entry);
-
-	free_const(bs->scriptpath);
-	free(bs);
+	free(entry);
 }
 
 /*
@@ -248,8 +245,8 @@ static int bootscript_create_entry(struct bootentries *bootentries, const char *
 	bs->entry.me.type = MENU_ENTRY_NORMAL;
 	bs->entry.release = bootscript_entry_release;
 	bs->entry.boot = bootscript_boot;
-	bs->scriptpath = xstrdup_const(name);
-	bs->entry.title = xstrdup_const(kbasename(bs->scriptpath));
+	bs->entry.path = xstrdup_const(name);
+	bs->entry.title = xstrdup_const(kbasename(bs->entry.path));
 	bs->entry.description = basprintf("script: %s", name);
 	bootentries_add_entry(bootentries, &bs->entry);
 
diff --git a/include/boot.h b/include/boot.h
index fdc108b7a21d..836a180a0c7b 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -18,6 +18,7 @@ struct bootentry {
 	struct menu_entry me;
 	const char *title;
 	char *description;
+	const char *path;
 	int (*boot)(struct bootentry *entry, int verbose, int dryrun);
 	void (*release)(struct bootentry *entry);
 	struct bootm_overrides overrides;
-- 
2.47.3



