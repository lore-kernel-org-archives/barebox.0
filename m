Delivery-date: Mon, 09 Feb 2026 10:09:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNHB-00AV8e-1W
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 10:09:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNHA-0005Jc-8p
	for lore@pengutronix.de; Mon, 09 Feb 2026 10:09:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lHuyA8J7yJnKgHs9AxoYx4QwuHGFnO1GkFFosWCAFTI=; b=glNV02Yrpn1h7OidTklJdeYNiz
	4BYo9CKi4MUifk19fY55FjwNUqfL9b5lYqoKVyoMUuHG9rvaQAMMi1v8Md0FuWaXHxB07KDbLIX2z
	F8B8lEzyOnzVTw+yQriUAqE4cA3QPwl8+FTcMXKcHgCvrTFQInT+lGfd/Muhml/EB7K/V/EAFeD9V
	x4tqiTq64Umhmfjl6EhGM0sLz+Lyyzt0PY0X+i9jT+ypaMaSPUgjH3L2qCUwgKa8CWqJQ7FZxa+SE
	wrq4yZEYi7X45VlfurGgE2K7n6PV2KxpY8AZv1Yur7vvAOhCX5u07TDJguU/1/PVwqcvJ5KzaoOJn
	SyXP2WAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNGl-0000000F5op-2Wio;
	Mon, 09 Feb 2026 09:09:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNGg-0000000F5kk-3r4n
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 09:09:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vpNGd-0004wQ-Uc; Mon, 09 Feb 2026 10:09:16 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  9 Feb 2026 10:08:54 +0100
Message-ID: <20260209090911.3561875-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209090911.3561875-1-a.fatoum@barebox.org>
References: <20260209090911.3561875-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_010918_959565_73CB8E6A 
X-CRM114-Status: GOOD (  20.61  )
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
Subject: [PATCH 4/5] commands: boot: support file path in boot -M for default entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The boot command supports specifying a preselection by index, but this
is not so useful when the boot entries come from external media as the
order may easily change.

Add thus the ability to preselect an entry by file path as well via the
-M option. Unlike -M 1337 which would usually leads to a normal error, a
non-existent file path will just be silently ignored and the menu shown
anyway without preselection.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/boot.c   | 62 +++++++++++++++++++++++++++++++++++++----------
 include/fnmatch.h |  9 +++++++
 2 files changed, 58 insertions(+), 13 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index 9cfb7c6b0d5e..555667ee098c 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -7,6 +7,7 @@
 #include <malloc.h>
 #include <boot.h>
 #include <bootm.h>
+#include <fnmatch.h>
 #include <complete.h>
 
 #include <linux/stat.h>
@@ -55,12 +56,41 @@ static int boot_add_override(struct bootm_overrides *overrides, char *var)
 	return 0;
 }
 
+static int bootentries_get_default_menu_entry(struct bootentries *entries,
+					      char *id)
+{
+	struct bootentry *entry;
+	int ret, idx = 1;
+
+	if (!id)
+		return 0;
+
+	/* To simplify scripting, an empty string is treated as 1 */
+	if (*id == '\0')
+		return 1;
+
+	ret = kstrtouint(id, 0, &idx);
+	if (!ret)
+		return idx;
+	if (ret != -EINVAL)
+		return ret;
+
+	bootentries_for_each_entry(entries, entry) {
+		if ((IS_ENABLED(CONFIG_FNMATCH) && !fnmatch(id, entry->path, 0)) ||
+		    streq_ptr(id, entry->path))
+			return idx;
+		idx++;
+	}
+
+	return 0;
+}
+
 static int do_boot(int argc, char *argv[])
 {
 	char *freep = NULL;
 	int opt, ret = 0, do_list = 0, do_menu = 0;
 	int dryrun = 0, verbose = 0, timeout = -1;
-	unsigned default_menu_entry = 0;
+	char *default_menu_entry = NULL;
 	struct bootentries *entries;
 	struct bootentry *entry;
 	struct bootm_overrides overrides = {};
@@ -80,14 +110,7 @@ static int do_boot(int argc, char *argv[])
 			dryrun++;
 			break;
 		case 'M':
-			/* To simplify scripting, an empty string is treated as 1 */
-			if (*optarg == '\0') {
-				default_menu_entry = 1;
-			} else {
-				ret = kstrtouint(optarg, 0, &default_menu_entry);
-				if (ret)
-					return ret;
-			}
+			default_menu_entry = optarg;
 			fallthrough;
 		case 'm':
 			do_menu = 1;
@@ -152,10 +175,17 @@ static int do_boot(int argc, char *argv[])
 		goto out;
 	}
 
-	if (do_list)
+	if (do_list) {
 		bootsources_list(entries);
-	else if (do_menu)
-		bootsources_menu(entries, default_menu_entry, timeout);
+	} else if (do_menu) {
+		int idx;
+
+		idx = bootentries_get_default_menu_entry(entries, default_menu_entry);
+		if (idx < 0)
+			return idx;
+
+		bootsources_menu(entries, idx, timeout);
+	}
 
 	ret = 0;
 out:
@@ -189,6 +219,12 @@ BAREBOX_CMD_HELP_TEXT("- \"storage.removable\": boot from removable media")
 BAREBOX_CMD_HELP_TEXT("- \"storage.builtin\": boot from non-removable media")
 BAREBOX_CMD_HELP_TEXT("- \"storage\": boot from any available media")
 #endif
+BAREBOX_CMD_HELP_TEXT("DEFAULT can be:")
+BAREBOX_CMD_HELP_TEXT("- the numeric index of the menu entry to choose")
+BAREBOX_CMD_HELP_TEXT("- the path to the file backing the entry (e.g. bootspec config file)")
+#ifdef CONFIG_FNMATCH
+BAREBOX_CMD_HELP_TEXT("  with wildcards allowed")
+#endif
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Multiple bootsources may be given which are probed in order until")
 BAREBOX_CMD_HELP_TEXT("one succeeds.")
@@ -198,7 +234,7 @@ BAREBOX_CMD_HELP_OPT ("-v","Increase verbosity")
 BAREBOX_CMD_HELP_OPT ("-d","Dryrun. See what happens but do no actually boot (pass twice to run scripts)")
 BAREBOX_CMD_HELP_OPT ("-l","List available boot sources")
 BAREBOX_CMD_HELP_OPT ("-m","Show a menu with boot options")
-BAREBOX_CMD_HELP_OPT ("-M INDEX","Show a menu with boot options with entry INDEX preselected")
+BAREBOX_CMD_HELP_OPT ("-M DEFAULT","Show a menu with boot options with entry DEFAULT preselected")
 BAREBOX_CMD_HELP_OPT ("-w SECS","Start watchdog with timeout SECS before booting")
 #ifdef CONFIG_BOOT_OVERRIDE
 BAREBOX_CMD_HELP_OPT ("-o VAR[=VAL]","override VAR (bootm.{oftree,initrd}) with VAL")
diff --git a/include/fnmatch.h b/include/fnmatch.h
index 1bc2cf87391a..b4895e8d8467 100644
--- a/include/fnmatch.h
+++ b/include/fnmatch.h
@@ -17,8 +17,17 @@
 /* Value returned by `fnmatch' if STRING does not match PATTERN.  */
 #define	FNM_NOMATCH	1
 
+#ifdef CONFIG_FNMATCH
+
 /* Match NAME against the filename pattern PATTERN,
    returning zero if it matches, FNM_NOMATCH if not.  */
 extern int fnmatch(const char *pattern, const char *name, int flags);
 
+#else
+static inline int fnmatch(const char *pattern, const char *name, int flags)
+{
+	return 0;
+}
+#endif
+
 #endif /* fnmatch.h */
-- 
2.47.3



