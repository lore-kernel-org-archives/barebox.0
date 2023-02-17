Delivery-date: Fri, 17 Feb 2023 21:33:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT7Px-00AOKT-1N
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 21:33:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT7Pv-0008H4-6d
	for lore@pengutronix.de; Fri, 17 Feb 2023 21:33:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KzcZZov5sFWXrewkXzo+/inIyhSpX0dWdpp5lSV4B0M=; b=EvEEmVsM4JR4u9MUDDudtiowJK
	UFYbBtgc0kT/ctLj4KG04o31sNIzRDI4HhNsCRVrFzCiWUlcIcjR35rEFVg019jK+ehrf5f7hCLE3
	bSebKGaLCGXjdhOwnaoe2M7j/bYUN/AiGsKj25aPIvF0lngJRaz6S55wYQuWxYwcQKwNmACny6j8o
	9WF5XNRimtWBvosDUeSagofcHgI0rOqyfwAq50BsG0x4pJY/sOCHKhJy5lbcq46OJK1tfFWGbObaS
	ds1qqJ/OoIipcBm+jHrf01L9AlwT98Iw1LZrgQoAO0o53tH/fR943UTJykoJYYK05ajjA9kd0VemC
	kicI59Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT7Oh-00Fdb4-5L; Fri, 17 Feb 2023 20:31:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT7Ob-00FdaI-Dv
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 20:31:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT7OZ-0008Cq-HS; Fri, 17 Feb 2023 21:31:51 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT7OX-005fAX-F1; Fri, 17 Feb 2023 21:31:50 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT7OX-00CB0l-I5; Fri, 17 Feb 2023 21:31:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 21:31:48 +0100
Message-Id: <20230217203148.2902038-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_123153_687084_7E456D6D 
X-CRM114-Status: GOOD (  25.26  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: add new of_fixup command to list and disable DT fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For debugging, it can be useful to disable a fixup to rule out it causing
issues. For platforms supporting kallsyms, we can readily allow enabling
and disabling fixups by name, so let's add a command that does just that.

Suggested-by: Daniel Brát <danek.brat@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig    | 15 ++++++++
 commands/Makefile   |  1 +
 commands/of_fixup.c | 86 +++++++++++++++++++++++++++++++++++++++++++++
 common/kallsyms.c   |  8 ++---
 common/oftree.c     | 17 +++++----
 drivers/of/Kconfig  |  6 ++++
 include/kallsyms.h  |  4 +++
 include/of.h        | 10 ++++++
 8 files changed, 137 insertions(+), 10 deletions(-)
 create mode 100644 commands/of_fixup.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 7d01dddd3474..fc0df5550418 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2266,6 +2266,21 @@ config CMD_OF_DISPLAY_TIMINGS
 		  -s path	select display-timings and register oftree fixup
 		  -f dtb	work on dtb. Has no effect on -s option
 
+config CMD_OF_FIXUP
+	tristate
+	select OFTREE
+	select OF_FIXUP_TOGGLE
+	depends on KALLSYMS
+	prompt "of_fixup"
+	help
+	  List and enable/disable fixups
+
+	  Usage: of_fixup [-de] [fixups...]
+
+	  Options:
+		-d		disable fixup
+	  	-e		re-enable fixup
+
 config CMD_OF_FIXUP_STATUS
 	tristate
 	select OFTREE
diff --git a/commands/Makefile b/commands/Makefile
index c0b0a22b08c1..e5cc21f1970a 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -87,6 +87,7 @@ obj-$(CONFIG_CMD_OF_PROPERTY)	+= of_property.o
 obj-$(CONFIG_CMD_OF_NODE)	+= of_node.o
 obj-$(CONFIG_CMD_OF_DUMP)	+= of_dump.o
 obj-$(CONFIG_CMD_OF_DISPLAY_TIMINGS)	+= of_display_timings.o
+obj-$(CONFIG_CMD_OF_FIXUP)	+= of_fixup.o
 obj-$(CONFIG_CMD_OF_FIXUP_STATUS)	+= of_fixup_status.o
 obj-$(CONFIG_CMD_OF_OVERLAY)	+= of_overlay.o
 obj-$(CONFIG_CMD_MAGICVAR)	+= magicvar.o
diff --git a/commands/of_fixup.c b/commands/of_fixup.c
new file mode 100644
index 000000000000..e323b38a93ef
--- /dev/null
+++ b/commands/of_fixup.c
@@ -0,0 +1,86 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+/*
+ * of_fixup.c - List and remove OF fixups
+ */
+
+#include <common.h>
+#include <kallsyms.h>
+#include <of.h>
+#include <command.h>
+#include <malloc.h>
+#include <complete.h>
+#include <getopt.h>
+#include <string.h>
+
+static int do_of_fixup(int argc, char *argv[])
+{
+	struct of_fixup *of_fixup;
+	int opt, enable = -1;
+
+	while ((opt = getopt(argc, argv, "ed")) > 0) {
+		switch (opt) {
+		case 'e':
+			enable = 1;
+			break;
+		case 'd':
+			enable = 0;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	argv += optind;
+	argc -= optind;
+
+	if ((enable < 0 && argc > 0) || (enable >= 0 && argc == 0))
+		return COMMAND_ERROR_USAGE;
+
+	list_for_each_entry(of_fixup, &of_fixup_list, list) {
+		int i;
+		ulong addr = (ulong)of_fixup->fixup;
+		char sym[KSYM_SYMBOL_LEN];
+		const char *name;
+
+		name = kallsyms_lookup(addr, NULL, NULL, NULL, sym);
+		if (!name) {
+			sprintf(sym, "<0x%lx>", addr);
+			name = sym;
+		}
+
+		if (enable == -1) {
+			printf("%s(0x%p)%s\n", name, of_fixup->context,
+			       of_fixup->disabled ? " [DISABELD]" : "");
+			continue;
+		}
+
+		for (i = 0; i < argc; i++) {
+			if (strcmp(name, argv[i]) != 0)
+				continue;
+
+			of_fixup->disabled = !enable;
+		}
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(of_fixup)
+BAREBOX_CMD_HELP_TEXT("Disable or re-enable an already registered fixup for the device tree.")
+BAREBOX_CMD_HELP_TEXT("Call without arguments to list all fixups")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-d",  "disable fixup")
+BAREBOX_CMD_HELP_OPT("-e",  "re-enable fixup")
+BAREBOX_CMD_HELP_OPT("fixups",  "List of fixups to enable or disable")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(of_fixup)
+	.cmd	= do_of_fixup,
+	BAREBOX_CMD_DESC("list and enable/disable fixups")
+	BAREBOX_CMD_OPTS("[-de] [fixups...]")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+	BAREBOX_CMD_HELP(cmd_of_fixup_help)
+BAREBOX_CMD_END
diff --git a/common/kallsyms.c b/common/kallsyms.c
index a9b2b9368992..3c5904f8a833 100644
--- a/common/kallsyms.c
+++ b/common/kallsyms.c
@@ -165,10 +165,10 @@ static unsigned long get_symbol_pos(unsigned long addr,
  *   It resides in a module.
  * - We also guarantee that modname will be valid until rescheduled.
  */
-static const char *kallsyms_lookup(unsigned long addr,
-				   unsigned long *symbolsize,
-				   unsigned long *offset,
-				   char **modname, char *namebuf)
+const char *kallsyms_lookup(unsigned long addr,
+			    unsigned long *symbolsize,
+			    unsigned long *offset,
+			    char **modname, char *namebuf)
 {
 	namebuf[KSYM_NAME_LEN - 1] = 0;
 	namebuf[0] = 0;
diff --git a/common/oftree.c b/common/oftree.c
index 4beadc5aaa89..86a1ba96150e 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -350,13 +350,15 @@ int of_register_set_status_fixup(const char *path, bool status)
 	return of_register_fixup(of_fixup_status, (void *)data);
 }
 
-struct of_fixup {
-	int (*fixup)(struct device_node *, void *);
-	void *context;
-	struct list_head list;
-};
+LIST_HEAD(of_fixup_list);
 
-static LIST_HEAD(of_fixup_list);
+static inline bool of_fixup_disabled(struct of_fixup *fixup)
+{
+    if (!IS_ENABLED(CONFIG_OF_FIXUP_TOGGLE))
+	    return false;
+
+    return fixup->disabled;
+}
 
 int of_register_fixup(int (*fixup)(struct device_node *, void *), void *context)
 {
@@ -401,6 +403,9 @@ int of_fix_tree(struct device_node *node)
 	of_overlay_load_firmware_clear();
 
 	list_for_each_entry(of_fixup, &of_fixup_list, list) {
+		if (of_fixup_disabled(of_fixup))
+			continue;
+
 		ret = of_fixup->fixup(node, of_fixup->context);
 		if (ret)
 			pr_warn("Failed to fixup node in %pS: %s\n",
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 4dc40b27f442..1269cf8a459b 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -3,6 +3,12 @@ config OFTREE
 	select DTC
 	bool
 
+config OF_FIXUP_TOGGLE
+	bool
+	help
+	  This is selected when some device tree fixups may be selectively
+	  disabled.
+
 config OFTREE_MEM_GENERIC
 	depends on OFTREE
 	depends on PPC || ARM || EFI_BOOTUP || OPENRISC || SANDBOX || RISCV || KVX
diff --git a/include/kallsyms.h b/include/kallsyms.h
index e0b3ff7cd503..f61efc9e0c42 100644
--- a/include/kallsyms.h
+++ b/include/kallsyms.h
@@ -6,6 +6,10 @@
 #define KSYM_SYMBOL_LEN (sizeof("%s+%#lx/%#lx [%s]") + (KSYM_NAME_LEN - 1) + \
 		2*(BITS_PER_LONG*3/10) + (MODULE_NAME_LEN - 1) + 1)
 unsigned long kallsyms_lookup_name(const char *name);
+const char *kallsyms_lookup(unsigned long addr,
+			    unsigned long *symbolsize,
+			    unsigned long *offset,
+			    char **modname, char *namebuf);
 
 /* Look up a kernel symbol and return it in a text buffer. */
 int sprint_symbol(char *buffer, unsigned long address);
diff --git a/include/of.h b/include/of.h
index 7ee1304b932b..282c11ee8c49 100644
--- a/include/of.h
+++ b/include/of.h
@@ -328,6 +328,16 @@ int of_find_path_by_node(struct device_node *node, char **outpath, unsigned flag
 struct device_node *of_find_node_by_devpath(struct device_node *root, const char *path);
 int of_register_fixup(int (*fixup)(struct device_node *, void *), void *context);
 int of_unregister_fixup(int (*fixup)(struct device_node *, void *), void *context);
+
+struct of_fixup {
+	int (*fixup)(struct device_node *, void *);
+	void *context;
+	struct list_head list;
+	bool disabled;
+};
+
+extern struct list_head of_fixup_list;
+
 int of_register_set_status_fixup(const char *node, bool status);
 struct device_node *of_find_node_by_alias(struct device_node *root,
 		const char *alias);
-- 
2.30.2



