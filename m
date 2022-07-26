Delivery-date: Tue, 26 Jul 2022 07:44:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oGDMQ-004FST-5R
	for lore@lore.pengutronix.de; Tue, 26 Jul 2022 07:44:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oGDMO-00069X-0i
	for lore@pengutronix.de; Tue, 26 Jul 2022 07:44:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PDEKGHs3f1ll6uFJGnyO4bwRwoVS+Aa2a1PC9s0w7TY=; b=hRoP+DdT/8eG6DDSt4QCMBZF4w
	2WPJ7sWf8R1LOTI2oD4dHc2mbgNEZLiV3ebs45eYqDIB8csP2IIafYvCvpIY4shjm9tPhUOUZ4nap
	V4xWBVIwcO8IMtpvub01RU1Ok7gsqgHDzFFVVxVTWOqH4jbpHmSj+ScheUDbl3/e30i3dXBn8ziUU
	SzeRHuGLLRKzif6c0OCFvm4pSwiIFl9/GU3YzHkRalPlxbuOQJNBFxwFinTTU6Zhjpmr8PtG/tfyn
	PyEmWWd5cl0v7W+sfvApkPA1dpfohf2Vun0CyBDEg3mTUVg63gkU3QOjFFA7h9HegxQ/M0+eQdlce
	Fy1/RXGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGDKS-008Fcw-79; Tue, 26 Jul 2022 05:42:00 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGDKM-008FKZ-O6
	for barebox@lists.infradead.org; Tue, 26 Jul 2022 05:41:56 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id B0CD11BF206;
	Tue, 26 Jul 2022 05:41:41 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 26 Jul 2022 07:41:36 +0200
Message-Id: <20220726054136.267069-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220725_224155_099023_871806EE 
X-CRM114-Status: GOOD (  16.02  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: boot: support preselecting boot entry in menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

boot -m -t 3 already opens a boot menu with a countdown of 3 seconds
before selecting the first element. So far, only way to influence
preselection was shifting around boot entries, so they are iterated over
differently. Add a new -M option that works analogously to -m, but
takes an integer index of the boot menu entry to preselect. This allows
simple customizable interactive boots:

    #!/bin/sh
    boot -M "$nv.bootmenu_default" -t 3 mmc0.0

With mmc0.0 containing multiple bootloader spec files that would be iterated
over in lexical order. The index is 1-based like the index displayed in
the boot menu.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
For lexically ordered bootspec files, following series is required:
https://lore.barebox.org/barebox/20220724184807.2123459-1-a.fatoum@pengutronix.de/T/#t
---
 commands/boot.c | 18 +++++++++++++++---
 common/boot.c   | 10 +++++++++-
 include/boot.h  |  2 +-
 3 files changed, 25 insertions(+), 5 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index 18f4e36ec733..485559bc46b8 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -28,13 +28,14 @@ static int do_boot(int argc, char *argv[])
 	char *freep = NULL;
 	int opt, ret = 0, do_list = 0, do_menu = 0;
 	int dryrun = 0, verbose = 0, timeout = -1;
+	unsigned default_menu_entry = 0;
 	struct bootentries *entries;
 	struct bootentry *entry;
 	void *handle;
 	const char *name;
 	char *(*next)(void *);
 
-	while ((opt = getopt(argc, argv, "vldmt:w:")) > 0) {
+	while ((opt = getopt(argc, argv, "vldmM:t:w:")) > 0) {
 		switch (opt) {
 		case 'v':
 			verbose++;
@@ -45,6 +46,16 @@ static int do_boot(int argc, char *argv[])
 		case 'd':
 			dryrun = 1;
 			break;
+		case 'M':
+			/* To simplify scripting, an empty string is treated as 1 */
+			if (*optarg == '\0') {
+				default_menu_entry = 1;
+			} else {
+				ret = kstrtouint(optarg, 0, &default_menu_entry);
+				if (ret)
+					return ret;
+			}
+			fallthrough;
 		case 'm':
 			do_menu = 1;
 			break;
@@ -104,7 +115,7 @@ static int do_boot(int argc, char *argv[])
 	if (do_list)
 		bootsources_list(entries);
 	else if (do_menu)
-		bootsources_menu(entries, timeout);
+		bootsources_menu(entries, default_menu_entry, timeout);
 
 	ret = 0;
 out:
@@ -136,6 +147,7 @@ BAREBOX_CMD_HELP_OPT ("-v","Increase verbosity")
 BAREBOX_CMD_HELP_OPT ("-d","Dryrun. See what happens but do no actually boot")
 BAREBOX_CMD_HELP_OPT ("-l","List available boot sources")
 BAREBOX_CMD_HELP_OPT ("-m","Show a menu with boot options")
+BAREBOX_CMD_HELP_OPT ("-M INDEX","Show a menu with boot options with entry INDEX preselected")
 BAREBOX_CMD_HELP_OPT ("-w SECS","Start watchdog with timeout SECS before booting")
 BAREBOX_CMD_HELP_OPT ("-t SECS","specify timeout in SECS")
 BAREBOX_CMD_HELP_END
@@ -143,7 +155,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(boot)
 	.cmd	= do_boot,
 	BAREBOX_CMD_DESC("boot from script, device, ...")
-	BAREBOX_CMD_OPTS("[-vdlmwt] [BOOTSRC...]")
+	BAREBOX_CMD_OPTS("[-vdlmMwt] [BOOTSRC...]")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_boot_help)
 BAREBOX_CMD_END
diff --git a/common/boot.c b/common/boot.c
index 8220b8d3fbd7..52b03eb64d2e 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -313,10 +313,12 @@ int bootentry_create_from_name(struct bootentries *bootentries,
 /*
  * bootsources_menu - show a menu from an array of names
  */
-void bootsources_menu(struct bootentries *bootentries, int timeout)
+void bootsources_menu(struct bootentries *bootentries,
+		      unsigned default_entry, int timeout)
 {
 	struct bootentry *entry;
 	struct menu_entry *back_entry;
+	int i = 1;
 
 	if (!IS_ENABLED(CONFIG_MENU)) {
 		pr_warn("no menu support available\n");
@@ -328,6 +330,9 @@ void bootsources_menu(struct bootentries *bootentries, int timeout)
 			entry->me.display = xstrdup(entry->title);
 		entry->me.action = bootsource_action;
 		menu_add_entry(bootentries->menu, &entry->me);
+
+		if (i++ == default_entry)
+			bootentries->menu->selected = &entry->me;
 	}
 
 	back_entry = xzalloc(sizeof(*back_entry));
@@ -336,6 +341,9 @@ void bootsources_menu(struct bootentries *bootentries, int timeout)
 	back_entry->non_re_ent = 1;
 	menu_add_entry(bootentries->menu, back_entry);
 
+	if (i == default_entry)
+		bootentries->menu->selected = back_entry;
+
 	if (timeout >= 0)
 		bootentries->menu->auto_select = timeout;
 
diff --git a/include/boot.h b/include/boot.h
index 3d5dd1cb6e2c..c9e8c0fd0d87 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -50,7 +50,7 @@ struct bootentries *bootentries_alloc(void);
 void bootentries_free(struct bootentries *bootentries);
 int bootentry_create_from_name(struct bootentries *bootentries,
 				      const char *name);
-void bootsources_menu(struct bootentries *bootentries, int timeout);
+void bootsources_menu(struct bootentries *bootentries, unsigned default_entry, int timeout);
 void bootsources_list(struct bootentries *bootentries);
 int boot_entry(struct bootentry *be, int verbose, int dryrun);
 
-- 
2.34.1



