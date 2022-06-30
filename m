Delivery-date: Thu, 30 Jun 2022 14:42:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6tUk-0020ve-MC
	for lore@lore.pengutronix.de; Thu, 30 Jun 2022 14:42:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6tUm-00084z-L7
	for lore@pengutronix.de; Thu, 30 Jun 2022 14:42:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BEhd2L5rkrSvOmcpr7otuWUGOuKmdNYL02c7MsjBM0s=; b=bPqVp1Sm94bLcNqDGJaNvQVsd8
	j/3fqQXF1Z1cyLs4zrQPsFEhEhwMVKzuKjS1r/BROWhIVOnSzVAtSypcwZcMZ6VckOp3vT38a/Fm1
	llS+hsz3FCNELKokBs5mX+C+WpPJDERUp83VxR5jhpPh2e1zbO+GkL0aVeJDrrq8qLARYSsDNGqyA
	uVq1qoNYqKZVx5yN6GK2IBnQFVWQDJnOE5OPzWaYN+zuLOr1wjOTWaanNrlwjuGM2xf7xoJm4AYRy
	fwN5peNSoFGbqKBeLG6NHMNVQ3SJAR6Mt2bK2ADOf3t5opAtBriANYEA98GFJZ7Lh/M5nDtoag3j0
	B6WIJLaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6tTV-00H7J8-Op; Thu, 30 Jun 2022 12:40:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6tTM-00H7Fk-2y
	for barebox@lists.infradead.org; Thu, 30 Jun 2022 12:40:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o6tTK-0007fv-TL; Thu, 30 Jun 2022 14:40:38 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o6tTF-003ar3-Uj; Thu, 30 Jun 2022 14:40:37 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o6tTI-00Grhq-M6; Thu, 30 Jun 2022 14:40:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: has@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 30 Jun 2022 14:40:34 +0200
Message-Id: <20220630124035.4019644-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220630124035.4019644-1-a.fatoum@pengutronix.de>
References: <20220630124035.4019644-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_054040_135375_E1AEFAB7 
X-CRM114-Status: GOOD (  19.23  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] commands: implement devlookup to find device behind device file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For OF-enabled platforms with aliases, device file naming is pretty much
solved: If there is mmc2 = &something, then we have a mmc2 device and
a /dev/mmc2 device file. For other platforms like x86, EFI-provided
devices are harder to get ahold of. Add a command to make this
straight-forward to do in scripts. The main use of this is probably to
access parameters like nt_signature or guid:

  devloop /dev/disk0 guid

This would print to console, but we have no output capture yet, so add
an optional -v VARIABLE parameter as well to allow easy use from
scripts.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig     | 13 ++++++++
 commands/Makefile    |  1 +
 commands/devlookup.c | 73 ++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 87 insertions(+)
 create mode 100644 commands/devlookup.c

diff --git a/commands/Kconfig b/commands/Kconfig
index fb4dcefed8bf..5bab78fd1ce7 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -75,6 +75,19 @@ config CMD_DEVINFO
 	  If called with a device path being the argument, devinfo shows more
 	  default information about this device and its parameters.
 
+config CMD_DEVLOOKUP
+	tristate
+	prompt "devlookup"
+	help
+	  Look up device behind device file and its parameters
+
+	  devlookup [-v VAR] /dev/DEVICE [parameter]
+
+          Detects the device behind a device file and outputs it,
+          unless a second argument is given. In that case the device
+          parameter with that name is looked up. Specifying -v VARIABLE
+          will write output to VARIABLE instead of printing it.
+
 config CMD_DEVUNBIND
 	tristate
 	prompt "devunbind"
diff --git a/commands/Makefile b/commands/Makefile
index 6c3a7a1dabcd..b43da1a80173 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -110,6 +110,7 @@ obj-$(CONFIG_CMD_DETECT)	+= detect.o
 obj-$(CONFIG_CMD_BOOT)		+= boot.o
 obj-$(CONFIG_CMD_DEVINFO)	+= devinfo.o
 obj-$(CONFIG_CMD_DEVUNBIND)	+= devunbind.o
+obj-$(CONFIG_CMD_DEVLOOKUP)	+= devlookup.o
 obj-$(CONFIG_CMD_DRVINFO)	+= drvinfo.o
 obj-$(CONFIG_CMD_READF)		+= readf.o
 obj-$(CONFIG_CMD_MENUTREE)	+= menutree.o
diff --git a/commands/devlookup.c b/commands/devlookup.c
new file mode 100644
index 000000000000..9599df7b10bc
--- /dev/null
+++ b/commands/devlookup.c
@@ -0,0 +1,73 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <getopt.h>
+#include <malloc.h>
+#include <linux/stat.h>
+#include <linux/ctype.h>
+#include <environment.h>
+
+static int report(const char *variable, const char *val)
+{
+	if (variable)
+		return setenv(variable, val);
+
+	if (!val)
+		return -errno;
+
+	printf("%s\n", val);
+	return 0;
+}
+
+static int do_devlookup(int argc, char *argv[])
+{
+	const char *variable = NULL, *devicefile, *paramname;
+	struct cdev *cdev;
+	int opt;
+
+	while ((opt = getopt(argc, argv, "v:")) > 0) {
+		switch(opt) {
+		case 'v':
+			variable = optarg;
+			break;
+		}
+	}
+
+	if (argc - optind == 0 || argc - optind > 2)
+		return COMMAND_ERROR_USAGE;
+
+	devicefile = argv[optind];
+	paramname  = argv[optind+1];
+
+	if (!strstarts(devicefile, "/dev/"))
+		return COMMAND_ERROR_USAGE;
+
+	devicefile += sizeof "/dev/" - 1;
+
+	cdev = cdev_by_name(devicefile);
+	if (!cdev)
+		return -ENOENT;
+
+	if (paramname)
+		return report(variable, dev_get_param(cdev->dev, paramname));
+
+	return report(variable, dev_name(cdev->dev));
+}
+
+BAREBOX_CMD_HELP_START(devlookup)
+BAREBOX_CMD_HELP_TEXT("Detects the device behind a device file and outputs it,")
+BAREBOX_CMD_HELP_TEXT("unless a second argument is given. In that case the device")
+BAREBOX_CMD_HELP_TEXT("parameter with that name is looked up. Specifying -v VARIABLE")
+BAREBOX_CMD_HELP_TEXT("will write output to VARIABLE instead of printing it")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(devlookup)
+	.cmd		= do_devlookup,
+	BAREBOX_CMD_DESC("look up device behind device file and its parameters")
+	BAREBOX_CMD_OPTS("[-v VAR] /dev/DEVICE [parameter]")
+	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
+	BAREBOX_CMD_HELP(cmd_devlookup_help)
+BAREBOX_CMD_END
+
-- 
2.30.2



