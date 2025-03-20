Delivery-date: Thu, 20 Mar 2025 06:21:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8LT-001l8V-09
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:21:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8LR-00049j-O9
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:21:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Go76qk9gbgaNxOmeQNckbE6DIOTeoqqCSa/bOSl0Wis=; b=X14vjz5/8jCXum7dqvBkRIC/WC
	gfz369nQMIZAW9dV9q7TIw895JBe/7bbTrxgnlPCqtryDDcUeGUCoHBljPp+mm6toD2q2oAIo1nqs
	aXp1MA7/Nn+VbsWaTELrO3m1lubFbs8RVeBlRhj2nZxuCQ334h8wpA9ovMjmeuP0VPiAilIldsfqk
	E3rsuBoMWfFbF7Tf4ERpE5Dq9oM3IzFGLpFFXqJNznJWFBE2oFWT3dmbY4wQ9TNIKOYhENrrnH23Z
	di77VaK26JNSQVE2dnaqGk8bGxqVgrX1ygie/xSsUQFB0bqdhu+yZn50sEZFcWM1biieo0Uv2XL7j
	9ot5ol3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8L4-0000000BCvx-0Age;
	Thu, 20 Mar 2025 05:21:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8L0-0000000BCtP-0WHy
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:21:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Ky-0003mY-OI; Thu, 20 Mar 2025 06:21:00 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Ky-000hvr-0O;
	Thu, 20 Mar 2025 06:21:00 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Ky-007GdX-1T;
	Thu, 20 Mar 2025 06:21:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 06:20:59 +0100
Message-Id: <20250320052059.1732184-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250320052059.1732184-1-a.fatoum@pengutronix.de>
References: <20250320052059.1732184-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_222102_167622_651F5DBA 
X-CRM114-Status: GOOD (  19.47  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/3] commands: add varinfo command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Tab completion is very helpful, but it's not sufficient for enum-typed
global variables. To know what the permissible values are, devinfo
global must be consulted, which can have a lot of output.

As alternative, let's add a varinfo command that can be used together
with parameter tab completion and that will just print out the
parameters that start with the specified string.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - lookup shell environment variables by prefix as well (Sascha)
  - completio without trailing equal sign (Sascha)
---
 commands/Kconfig   | 12 ++++++
 commands/Makefile  |  1 +
 commands/varinfo.c | 91 ++++++++++++++++++++++++++++++++++++++++++++++
 common/complete.c  |  6 +++
 include/complete.h |  1 +
 5 files changed, 111 insertions(+)
 create mode 100644 commands/varinfo.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 8c05b8eff606..4cce4b24cc98 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -286,6 +286,18 @@ config CMD_LSPCI
 	help
 	  The lspci command allows to list all PCI devices.
 
+config CMD_VARINFO
+	tristate
+	prompt "varinfo"
+	help
+	  Show information about variables
+
+	  varinfo VAR
+
+	  Shows information about the variable in its argument. This doesn't
+	  provide more information that what's available with devinfo, but
+	  it can be useful for devices with many parameters (e.g. global).
+
 config CMD_VERSION
 	tristate
 	default y
diff --git a/commands/Makefile b/commands/Makefile
index 36ef59b38759..f97b77c7cc16 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -59,6 +59,7 @@ obj-$(CONFIG_CMD_MEMTEST)	+= memtest.o
 obj-$(CONFIG_CMD_MEMTESTER)	+= memtester/
 obj-$(CONFIG_CMD_TRUE)		+= true.o
 obj-$(CONFIG_CMD_FALSE)		+= false.o
+obj-$(CONFIG_CMD_VARINFO)	+= varinfo.o
 obj-$(CONFIG_CMD_VERSION)	+= version.o
 obj-$(CONFIG_CMD_HELP)		+= help.o
 obj-$(CONFIG_CMD_LSMOD)		+= lsmod.o
diff --git a/commands/varinfo.c b/commands/varinfo.c
new file mode 100644
index 000000000000..5965c60159ca
--- /dev/null
+++ b/commands/varinfo.c
@@ -0,0 +1,91 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <command.h>
+#include <common.h>
+#include <complete.h>
+#include <driver.h>
+#include <environment.h>
+#include <fnmatch.h>
+
+struct iter_ctx {
+	const char *prefix;
+	bool found;
+};
+
+static int printenv_by_prefix(struct variable_d *v, void *data)
+{
+	struct iter_ctx *ctx = data;
+
+	if (strstarts(var_name(v), ctx->prefix)) {
+		printf("%s: %s (environment variable)\n", var_name(v), var_val(v));
+		ctx->found = true;
+	}
+
+	return 0;
+}
+
+static int do_varinfo(int argc, char *argv[])
+{
+	struct device *dev;
+	struct param_d *param;
+	const char *prefix = NULL;
+	char *arg, *dot;
+	bool found = false;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	arg = argv[1];
+
+	dot = strchr(arg, '.');
+	if (dot) {
+		*dot = '\0';
+		if (dot[1])
+			prefix = &dot[1];
+	} else {
+		struct iter_ctx ctx = { arg };
+
+		envvar_for_each(printenv_by_prefix, &ctx);
+		if (!ctx.found)
+			goto not_found;
+
+		return 0;
+	}
+
+	dev = get_device_by_name(arg);
+	if (!dev)
+		return -ENODEV;
+
+	list_for_each_entry(param, &dev->parameters, list) {
+		if (prefix && !strstarts(param->name, prefix))
+			continue;
+
+		printf("%s: %s (type: %s)", param->name,
+		       dev_get_param(dev, param->name), get_param_type(param));
+		if (param->info)
+			param->info(param);
+		printf("\n");
+		found = true;
+	}
+
+	if (!found)
+		goto not_found;
+
+	return 0;
+not_found:
+	printf("%s: no matching variable found\n", arg);
+	return 1;
+}
+
+BAREBOX_CMD_HELP_START(varinfo)
+BAREBOX_CMD_HELP_TEXT("shows information about the variable in its argument")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(varinfo)
+	.cmd		= do_varinfo,
+	BAREBOX_CMD_DESC("show information about variables")
+	BAREBOX_CMD_OPTS("VAR")
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_HELP(cmd_varinfo_help)
+	BAREBOX_CMD_COMPLETE(env_param_plain_complete)
+BAREBOX_CMD_END
diff --git a/common/complete.c b/common/complete.c
index 6061c8ba6ecb..6cb674a0cc9c 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -366,6 +366,12 @@ int env_param_noeval_complete(struct string_list *sl, char *instr)
 }
 EXPORT_SYMBOL(env_param_noeval_complete);
 
+int env_param_plain_complete(struct string_list *sl, char *instr)
+{
+	return env_param_complete(sl, instr, 0);
+}
+EXPORT_SYMBOL(env_param_plain_complete);
+
 static int tab_pressed = 0;
 
 void complete_reset(void)
diff --git a/include/complete.h b/include/complete.h
index 2068760ac235..21d3c0430f64 100644
--- a/include/complete.h
+++ b/include/complete.h
@@ -24,6 +24,7 @@ int devicetree_nodepath_complete(struct string_list *sl, char *instr);
 int devicetree_complete(struct string_list *sl, char *instr);
 int devicetree_file_complete(struct string_list *sl, char *instr);
 int env_param_noeval_complete(struct string_list *sl, char *instr);
+int env_param_plain_complete(struct string_list *sl, char *instr);
 int tutorial_complete(struct string_list *sl, char *instr);
 
 #endif /* __COMPLETE_ */
-- 
2.39.5



