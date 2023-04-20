Delivery-date: Thu, 20 Apr 2023 22:10:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppacM-00Abd6-V8
	for lore@lore.pengutronix.de; Thu, 20 Apr 2023 22:10:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppacM-0004DA-OZ
	for lore@pengutronix.de; Thu, 20 Apr 2023 22:10:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5xsqeNXj/484MAZ4sp7RC23s4HmMurldKASGMdfTZvE=; b=kDq4D+qnr0xyTpqeYDxbJ6b5Kv
	jp6+LN6716TddrK/GSFAFkh7q0z3EOeggndjYMCYi9o8kd6CwcVrumiDG7Ic7hwpC35yIaCWsGL7K
	iM1+4NPCuXi18P00NWMw18zyNeKE8SCbjs9IgPrwN/UqssDEd2c2ZMSTz7VTyXEZChd041zoxq1cQ
	lDlnLteHxVVRMQOfkzXFZExeKADkn0c7z5QYFK4bKcGkeNBhJYTH+ttuF8giI/fg6L5Qp3PpUdQBw
	d4NRMLiVrQT2Tdhyen6RddP5kOQ54FsOtFdAToXVbAMJFfffPF5bkTMRZy/wOWgDBJeDi9ZuEJkcf
	E8Ueg/YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppab6-008vGV-33;
	Thu, 20 Apr 2023 20:09:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppab3-008vG5-13
	for barebox@lists.infradead.org;
	Thu, 20 Apr 2023 20:09:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ppaay-0003z6-MV; Thu, 20 Apr 2023 22:09:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ppaay-00Cdsx-1G; Thu, 20 Apr 2023 22:09:32 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ppaax-009Nzy-74; Thu, 20 Apr 2023 22:09:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Apr 2023 22:09:28 +0200
Message-Id: <20230420200928.2237187-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230420_130937_360641_CADCD542 
X-CRM114-Status: GOOD (  18.04  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] commands: implement of_compatible command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently, the usual way within scripts to differentiate between machines
is to compare global.model or global.hostname. Both are suboptimal,
because they may change between releases or overridden by the user.

In C code, the machine compatible is used for this purpose. Add a new
of_compatible command that makes of_machine_is_compatible/
of_device_is_compatible available to scripts. Example use:

/env/init/fixups:

  #!/bin/sh

  if of_compatible -k radxa,rock3a ; then
    of_property -df mmc0 sd-uhs-sdr104
  fi

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig         |  15 +++++
 commands/Makefile        |   1 +
 commands/of_compatible.c | 139 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 155 insertions(+)
 create mode 100644 commands/of_compatible.c

diff --git a/commands/Kconfig b/commands/Kconfig
index b9abd8565523..59e8d6fb382d 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2201,6 +2201,21 @@ config CMD_LSMOD
 	help
 	  List loaded barebox modules.
 
+config CMD_OF_COMPATIBLE
+	tristate
+	select OFTREE
+	prompt "of_compatible"
+	help
+	  Check DT node's compatible
+
+	  Usage: [-fFnk] [COMPAT]
+
+	  Options:
+          	-f dtb	work on dtb instead of internal devicetree
+          	-F	apply fixups on devicetree before compare
+          	-n node	node path or alias to compare its comptible (default is /)
+          	-k	compare $global.of.kernel.add_machine_compatible as well
+
 config CMD_OF_DIFF
 	tristate
 	select OFTREE
diff --git a/commands/Makefile b/commands/Makefile
index e5cc21f1970a..0ac84076f83d 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -82,6 +82,7 @@ obj-$(CONFIG_CMD_USB)		+= usb.o
 obj-$(CONFIG_CMD_TIME)		+= time.o
 obj-$(CONFIG_CMD_UPTIME)	+= uptime.o
 obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
+obj-$(CONFIG_CMD_OF_COMPATIBLE)	+= of_compatible.o
 obj-$(CONFIG_CMD_OF_DIFF)	+= of_diff.o
 obj-$(CONFIG_CMD_OF_PROPERTY)	+= of_property.o
 obj-$(CONFIG_CMD_OF_NODE)	+= of_node.o
diff --git a/commands/of_compatible.c b/commands/of_compatible.c
new file mode 100644
index 000000000000..e4684f23b71d
--- /dev/null
+++ b/commands/of_compatible.c
@@ -0,0 +1,139 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: © 2023 Ahmad Fatoum <a.fatoum@pengutronix.de>
+
+#include <common.h>
+#include <libfile.h>
+#include <fdt.h>
+#include <of.h>
+#include <command.h>
+#include <complete.h>
+#include <errno.h>
+#include <getopt.h>
+
+static int do_of_compatible(int argc, char *argv[])
+{
+	int opt;
+	int ret = 0;
+	bool fix = false, kernel_compat = false;
+	struct device_node *root = NULL, *node, *of_free = NULL;
+	char *dtbfile = NULL;
+	const char *compat, *nodename = "/";
+
+	while ((opt = getopt(argc, argv, "f:n:Fk")) > 0) {
+		switch (opt) {
+		case 'f':
+			dtbfile = optarg;
+			break;
+		case 'n':
+			nodename = optarg;
+			break;
+		case 'F':
+			fix = true;
+			break;
+		case 'k':
+			kernel_compat = true;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (argc - optind != 1)
+		return COMMAND_ERROR_USAGE;
+
+	compat = argv[optind];
+
+	if (dtbfile) {
+		size_t size;
+		void *fdt;
+
+		fdt = read_file(dtbfile, &size);
+		if (!fdt) {
+			printf("unable to read %s: %s\n", dtbfile, strerror(errno));
+			return -errno;
+		}
+
+		root = of_unflatten_dtb(fdt, size);
+
+		free(fdt);
+
+		if (IS_ERR(root)) {
+			ret = PTR_ERR(root);
+			goto out;
+		}
+
+		of_free = root;
+	} else {
+		root = of_get_root_node();
+
+		if (fix) {
+			/* create a copy of internal devicetree */
+			void *fdt;
+			fdt = of_flatten_dtb(root);
+			root = of_unflatten_dtb(fdt, fdt_totalsize(fdt));
+
+			free(fdt);
+
+			if (IS_ERR(root)) {
+				ret = PTR_ERR(root);
+				goto out;
+			}
+
+			of_free = root;
+		}
+	}
+
+	if (fix) {
+		ret = of_fix_tree(root);
+		if (ret)
+			goto out;
+	}
+
+	node = of_find_node_by_path_or_alias(root, nodename);
+	if (!node) {
+		printf("Cannot find nodepath %s\n", nodename);
+		ret = -ENOENT;
+		goto out;
+	}
+
+	if (kernel_compat) {
+		const char *compat_override;
+
+		if (node->parent) {
+			printf("-k only valid for root node\n");
+			ret = COMMAND_ERROR_USAGE;
+			goto out;
+		}
+
+		compat_override = barebox_get_of_machine_compatible() ?: "";
+		if (strcmp(compat_override, compat) == 0) {
+			ret = 0;
+			goto out;
+		}
+	}
+
+	ret = !of_device_is_compatible(node, compat);
+
+out:
+	if (of_free)
+		of_delete_node(of_free);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(of_compatible)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT  ("-f dtb",  "work on dtb instead of internal devicetree")
+BAREBOX_CMD_HELP_OPT  ("-F",      "apply fixups on devicetree before compare")
+BAREBOX_CMD_HELP_OPT  ("-n NODE", "node path or alias to compare its compatible (default is /)")
+BAREBOX_CMD_HELP_OPT  ("-k",      "compare $global.of.kernel.add_machine_compatible as well")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(of_compatible)
+	.cmd		= do_of_compatible,
+	BAREBOX_CMD_DESC("Check DT node's compatible")
+	BAREBOX_CMD_OPTS("[-fFnk] [COMPAT]")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+	BAREBOX_CMD_HELP(cmd_of_compatible_help)
+BAREBOX_CMD_END
-- 
2.39.2



