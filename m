Delivery-date: Thu, 16 Jan 2025 15:11:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQaM-000caV-2D
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 15:11:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQaM-0002mW-HS
	for lore@pengutronix.de; Thu, 16 Jan 2025 15:11:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OVY0SzxK9ZQWbXnivW/UxZh3a56hqYPKloOEQFw+aGs=; b=uNYubxhFRxCmQrrvoxuo01wEE2
	vwt3/TfCatfG884Lec0tcMApQ/TbV6ufs+Ptgp4sbgz0EmVgBzWcE414/hstzm2Ra0tv7J/6ajU72
	X6iqULBzLan46Wnpq6zlR+TnLk3AZ8sc4CiyjYQlxFpUl78yViYanpM12ymXi2YCcmd8Evsb3Uvb4
	XSr9aY+VF+zgPcO0l01HYoG/OGSllKqDrtPgHO/gvsKShQtdaLGFZF1ZgrlFh3Ccw1a186EOjS3YW
	UIg63bwLbk1Tuu+y3m725H9V5wmjdQY5enKcvliKkSLDWduprLOZr44kQtLKR/NptlSaHJwNPEjad
	KmYNVCBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQZl-0000000F6jQ-2csA;
	Thu, 16 Jan 2025 14:10:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQX9-0000000F5zL-24yS
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 14:07:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQX7-00028o-7q; Thu, 16 Jan 2025 15:07:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQX7-000GZp-07;
	Thu, 16 Jan 2025 15:07:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQX7-001FV8-28;
	Thu, 16 Jan 2025 15:07:40 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 16 Jan 2025 15:07:40 +0100
Message-Id: <20250116140740.297902-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_060743_530861_2DF12948 
X-CRM114-Status: GOOD (  16.39  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: add varinfo command
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
 commands/Kconfig   | 12 ++++++++
 commands/Makefile  |  1 +
 commands/varinfo.c | 73 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 86 insertions(+)
 create mode 100644 commands/varinfo.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 7aa4101f06c0..448a6e240cad 100644
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
index 0dfa0a33a465..7ea0ab4d87f7 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -57,6 +57,7 @@ obj-$(CONFIG_CMD_MEMTEST)	+= memtest.o
 obj-$(CONFIG_CMD_MEMTESTER)	+= memtester/
 obj-$(CONFIG_CMD_TRUE)		+= true.o
 obj-$(CONFIG_CMD_FALSE)		+= false.o
+obj-$(CONFIG_CMD_VARINFO)	+= varinfo.o
 obj-$(CONFIG_CMD_VERSION)	+= version.o
 obj-$(CONFIG_CMD_HELP)		+= help.o
 obj-$(CONFIG_CMD_LSMOD)		+= lsmod.o
diff --git a/commands/varinfo.c b/commands/varinfo.c
new file mode 100644
index 000000000000..2867c47363ed
--- /dev/null
+++ b/commands/varinfo.c
@@ -0,0 +1,73 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <command.h>
+#include <common.h>
+#include <complete.h>
+#include <driver.h>
+#include <environment.h>
+#include <fnmatch.h>
+
+static int do_varinfo(int argc, char *argv[])
+{
+	struct device *dev;
+	struct param_d *param;
+	const char *prefix = NULL, *val;
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
+		val = getenv(arg);
+		if (!val)
+			goto not_found;
+
+		printf("%s: %s (environment variable)\n", arg, val);
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
+	BAREBOX_CMD_COMPLETE(env_param_noeval_complete)
+BAREBOX_CMD_END
-- 
2.39.5



