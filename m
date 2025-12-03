Delivery-date: Wed, 03 Dec 2025 13:10:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQlgj-007VTZ-2Z
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 13:10:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQlgj-0000tJ-3J
	for lore@pengutronix.de; Wed, 03 Dec 2025 13:10:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=a/9xhGiFthDqnQoaGDWoMuTAMFipcEqkvz4SAODEWcs=; b=NMRIOuDLrftjgpkd4GUz3CsJi0
	ds59G3eI82fvCz60KlTQ42WaRUwKf/EbVoJK4YSgtlRVr4N/WJWaw/pcH9XZWV7qSngbsEfgEWK/N
	/zYzSAkXr0vvRKMT3Ry5q9d8i3ivFlVSxFFECOZ7CVLVb1trSpopMb7nffLXBiQobST3/SdNyi6PI
	uKSeEa4WgjRfQRyBHIfd9l10OK4BRXb8WeEaLB4nI72XJ73S+xbBAzDRLQm67n7Q9A4YVtB1RAGpW
	AwYirpqNpxSbiacvMxK0IQh0ki7588Z4o3fy/K/M6Q3zVjQmbcUVZlfbm9ZyETHFoCAQKM3b3Tcif
	rxttcFbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQlgF-00000006XW7-48bd;
	Wed, 03 Dec 2025 12:09:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQlgC-00000006XVe-3v1z
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 12:09:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQlgB-0000kC-73; Wed, 03 Dec 2025 13:09:55 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQlgB-003m8G-03;
	Wed, 03 Dec 2025 13:09:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQlgA-00000001KwE-3rIT;
	Wed, 03 Dec 2025 13:09:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Dec 2025 13:09:52 +0100
Message-ID: <20251203120953.318785-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_040957_246375_9C66125F 
X-CRM114-Status: GOOD (  17.84  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] commands: implement new safemode command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox has extensive support for manipulating the device tree it passes
to Linux, which can be useful during bringup.

Let's collect some of this functionality into a safemode command in an
attempt to gather that knowledge at one place.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig       |   7 +++
 commands/Makefile      |   1 +
 commands/safemode.c    | 109 +++++++++++++++++++++++++++++++++++++++++
 drivers/mci/mci-core.c |   6 +--
 include/mci.h          |   5 ++
 5 files changed, 123 insertions(+), 5 deletions(-)
 create mode 100644 commands/safemode.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 6bfc1499afdb..af3b65f35547 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -226,6 +226,13 @@ config CMD_MEMINFO
 	  system bytes     =     282616
 	  in use bytes     =     274752
 
+config CMD_SAFEMODE
+	tristate
+	prompt "safemode"
+	select CMD_OF_PROPERTY
+	help
+	  Apply safe-mode defaults for next kernel boot.
+
 config CMD_CHECKLEAK
 	tristate
 	prompt "checkleak"
diff --git a/commands/Makefile b/commands/Makefile
index e7d65163ad80..657fb426ba3e 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -17,6 +17,7 @@ obj-$(CONFIG_CMD_MW)		+= mw.o
 obj-$(CONFIG_CMD_MEMCMP)	+= memcmp.o
 obj-$(CONFIG_CMD_MEMCPY)	+= memcpy.o
 obj-$(CONFIG_CMD_MEMSET)	+= memset.o
+obj-$(CONFIG_CMD_SAFEMODE)	+= safemode.o
 obj-$(CONFIG_CMD_EDIT)		+= edit.o
 obj-$(CONFIG_CMD_ETHLOG)	+= ethlog.o
 obj-$(CONFIG_CMD_EXEC)		+= exec.o
diff --git a/commands/safemode.c b/commands/safemode.c
new file mode 100644
index 000000000000..9016869bc56e
--- /dev/null
+++ b/commands/safemode.c
@@ -0,0 +1,109 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <command.h>
+#include <getopt.h>
+#include <mci.h>
+#include <xfuncs.h>
+#include <stdio.h>
+#include <environment.h>
+
+#define	SAFEMODE_MMC		BIT(0)
+#define	SAFEMODE_CONSOLE	BIT(1)
+#define	SAFEMODE_BOOT		BIT(2)
+
+#define run_command_fmt(args...) ({	\
+	char *__buf = xasprintf(args);	\
+	if (verbose)			\
+		printf("%s\n", __buf);	\
+	int __ret = run_command(__buf);	\
+	free(__buf);			\
+	__ret;				\
+})
+
+static void safemode_mmc(int verbose)
+{
+	struct mci *mci;
+
+	for_each_mci(mci) {
+		const char *dev = dev_name(&mci->dev);
+
+		run_command_fmt("%s.broken_cd=1", dev);
+		run_command_fmt("of_property -fs %s max-frequency '<52000000>'", dev);
+		run_command_fmt("of_property -fs %s pinctrl-names default", dev);
+	}
+}
+
+static void safemode_console(int verbose)
+{
+	run_command_fmt("global.bootm.earlycon=1");
+}
+
+static void safemode_boot(int verbose)
+{
+	if (IS_ENABLED(CONFIG_WATCHDOG))
+		run_command_fmt("global.boot.watchdog_timeout=0");
+
+	if (IS_ENABLED(CONFIG_BOOTCHOOSER) &&
+	    getenv_nonempty("global.bootchooser.targets"))
+		run_command_fmt("bootchooser -a default -p defaut");
+
+	if (IS_ENABLED(CONFIG_EFI_HANDOVER_PROTOCOL))
+		run_command_fmt("global.linux.efi.handover=1");
+}
+
+static int do_safemode(int argc, char *argv[])
+{
+	unsigned safemode = 0;
+	int opt, verbose = 0;
+
+	while((opt = getopt(argc, argv, "mcbv")) > 0) {
+		switch(opt) {
+		case 'm':
+			safemode |= SAFEMODE_MMC;
+			break;
+		case 'c':
+			safemode |= SAFEMODE_CONSOLE;
+			break;
+		case 'b':
+			safemode |= SAFEMODE_BOOT;
+			break;
+		case 'v':
+			verbose++;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (argc != optind)
+		return COMMAND_ERROR_USAGE;
+
+	if (!safemode)
+		safemode = ~0;
+
+	if (safemode & SAFEMODE_MMC)
+		safemode_mmc(verbose);
+	if (safemode & SAFEMODE_CONSOLE)
+		safemode_console(verbose);
+	if (safemode & SAFEMODE_BOOT)
+		safemode_boot(verbose);
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(safemode)
+BAREBOX_CMD_HELP_TEXT("Apply safe-mode defaults for next kernel boot.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-m",  "safe mmc settings")
+BAREBOX_CMD_HELP_OPT ("-c",  "safe console settings")
+BAREBOX_CMD_HELP_OPT ("-b",  "safe boot defaults")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(safemode)
+	.cmd		= do_safemode,
+	BAREBOX_CMD_DESC("enable safe mode")
+	BAREBOX_CMD_OPTS("[-mcb]")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_safemode_help)
+BAREBOX_CMD_END
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 57825bc849a1..ef676deb7c7f 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -40,11 +40,7 @@ static inline u32 unstuff_bits(const u32 *resp, int start, int size)
 	return __res & __mask;
 }
 
-static DEFINE_DEV_CLASS(mmc_class, "mmc");
-
-#define for_each_mci(mci) \
-	class_for_each_container_of_device(&mmc_class, mci, dev)
-
+DEFINE_DEV_CLASS(mmc_class, "mmc");
 
 /**
  * @file
diff --git a/include/mci.h b/include/mci.h
index 3db33f914236..3f2b63598568 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -798,4 +798,9 @@ static inline bool mmc_card_hs200(struct mci *mci)
 	return mci->host->ios.timing == MMC_TIMING_MMC_HS200;
 }
 
+extern struct class mmc_class;
+
+#define for_each_mci(mci) \
+	class_for_each_container_of_device(&mmc_class, mci, dev)
+
 #endif /* _MCI_H_ */
-- 
2.47.3



