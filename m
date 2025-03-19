Delivery-date: Wed, 19 Mar 2025 16:44:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvbH-001Vij-0d
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 16:44:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvbD-00045r-Eq
	for lore@pengutronix.de; Wed, 19 Mar 2025 16:44:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0RmeC47peZus5X92AWBPLRiJilsS824IV6K9lE+oA/M=; b=4DdJQyt9iydizwbjbWrl2dbLXB
	584m3rp4JXP70ja+BUcMZkz2LfJ5m528sQBg0/t7XMfGUjUotkEqAIOeGI9B7twAuHAJbA68T0S8r
	LepQePdd+mSuHJy/adHeIJFnOJn421i1YmUbj1qWyrU2/9fUaWizpZUZzZwruNBwUlnO9H7QAFBoS
	jjcG/68X+bqwF3pBi7mjFbufJ+HMLZipqkoNPD1X7fTBec2r1skRlTjfrOWIwPjsKt0xMFy9pbtq9
	HmZ+Kz/7LaT93/AuE8sO3qYb2n1Xed4fB1CPt+hBBXp26c2yR91YiKmhLJRZYKlvs5Vd+uuKnVaWP
	KW3zAC6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvag-00000009QZW-3HG9;
	Wed, 19 Mar 2025 15:44:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvNm-00000009OA9-2Bz7
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 15:31:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNl-0000zB-9B; Wed, 19 Mar 2025 16:31:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNk-000cAl-1U;
	Wed, 19 Mar 2025 16:31:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNk-00Awy1-2V;
	Wed, 19 Mar 2025 16:31:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Mar 2025 16:31:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250319-rpmb-v2-9-a8801fb35cd4@pengutronix.de>
References: <20250319-rpmb-v2-0-a8801fb35cd4@pengutronix.de>
In-Reply-To: <20250319-rpmb-v2-0-a8801fb35cd4@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742398260; l=5343;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=KO9eWL8DgYPCD3EV/mnz8r3oHUY6BrmsGC7eSF9OaMo=;
 b=gFWuLOGZVt/uemlREVq3217ddoVlVpZQtB867yLzQdo7M9f/WHV+qkYujeznidlsU78pQMTkq
 LO+hHR8XyHLBG3od3wKf5ww4OTSg8bwqrTEz8LAKpouRz2qnp3m6Ho5
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_083102_586614_985C3F8E 
X-CRM114-Status: GOOD (  19.85  )
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
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2 09/10] commands: add avb_pvalue command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Android Verified Boot (AVB( 2.0 spec. revision 1.1 introduces support
for named persistent values that must be tamper evident and allows AVB
to store arbitrary key-value pairs.

This patch introduces a command to access this variable store. Variables
can be read into a file or an environment variable or printed as
hexdump. Variables can be written from file content or a string from the
command line.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig      |  13 +++++
 commands/Makefile     |   1 +
 commands/avb_pvalue.c | 138 ++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 152 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index fe459fa862..48fe4f02c2 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2254,6 +2254,19 @@ config CMD_2048
 	help
 	  Console version of the game "2048" for GNU/Linux
 
+config CMD_AVB_PVALUE
+	depends on OPTEE_AVB_PERSISTENT_VALUES
+	tristate
+	prompt "avb_pvalue"
+	help
+	  The avb_pvalue command provides access to the Android Verified Boot (AVB)
+	  persistent value store.
+
+	  AVB 2.0 spec. revision 1.1 introduces support for named persistent values
+	  that must be tamper evident and allows AVB to store arbitrary key-value
+	  pairs.
+
+
 config CMD_BAREBOX_UPDATE
 	tristate
 	select BAREBOX_UPDATE
diff --git a/commands/Makefile b/commands/Makefile
index e152e4148b..7a635e8791 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -3,6 +3,7 @@
 obj-$(CONFIG_STDDEV)		+= stddev.o
 obj-$(CONFIG_CMD_DIGEST)	+= digest.o
 obj-$(CONFIG_COMPILE_HASH)	+= hashsum.o
+obj-$(CONFIG_CMD_AVB_PVALUE)	+= avb_pvalue.o
 obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
 obj-$(CONFIG_CMD_UIMAGE)	+= uimage.o
 obj-$(CONFIG_CMD_LOADB)		+= loadb.o
diff --git a/commands/avb_pvalue.c b/commands/avb_pvalue.c
new file mode 100644
index 0000000000..adc44321fb
--- /dev/null
+++ b/commands/avb_pvalue.c
@@ -0,0 +1,138 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <command.h>
+#include <getopt.h>
+#include <libfile.h>
+#include <fs.h>
+#include <xfuncs.h>
+#include <linux/sizes.h>
+#include <tee/avb.h>
+#include <linux/ctype.h>
+#include <environment.h>
+
+static int do_avb_pvalue(int argc, char *argv[])
+{
+	size_t out = 0x13;
+	void *buf = NULL;
+	int ret = 0, rc = COMMAND_ERROR;
+	int opt;
+	const char *write_varname = NULL, *read_varname = NULL;
+	void *val = NULL;
+	size_t size;
+	const char *filename = NULL;
+	const char *varname = NULL;
+	const int bufsize = SZ_8K;
+
+	while ((opt = getopt(argc, argv, "r:w:f:")) > 0) {
+		switch(opt) {
+		case 'r':
+			read_varname = optarg;
+			break;
+		case 'w':
+			write_varname = optarg;
+			break;
+		case 'f':
+			filename = optarg;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	argc -= optind;
+	argv += optind;
+
+	if (!read_varname && !write_varname)
+		return COMMAND_ERROR_USAGE;
+
+	if (read_varname && write_varname)
+		return COMMAND_ERROR_USAGE;
+
+	if (write_varname) {
+		if (argc >= 1)
+			val = argv[0];
+
+		if (filename) {
+			ret = read_file_2(filename, &size, &buf, FILESIZE_MAX);
+			if (ret) {
+				printf("Cannot read %s: %pe\n", read_varname, ERR_PTR(ret));
+				return COMMAND_ERROR;
+			}
+		} else {
+			if (!val)
+				return COMMAND_ERROR_USAGE;
+			size = strlen(val) + 1;
+			buf = xstrdup(val);
+
+		}
+		ret = avb_write_persistent_value(write_varname, size, buf);
+		if (ret) {
+			printf("Cannot write variable %s: %pe\n", read_varname, ERR_PTR(ret));
+			goto err;
+		}
+	}
+
+	if (read_varname) {
+		if (argc >= 1)
+			varname = argv[0];
+
+		buf = xzalloc(bufsize);
+
+		ret = avb_read_persistent_value(read_varname, SZ_8K, buf, &out);
+		if (ret) {
+			printf("Cannot read variable %s: %pe\n", read_varname, ERR_PTR(ret));
+			rc = COMMAND_ERROR;
+			goto err;
+		}
+
+		if (filename) {
+			ret = write_file(filename, buf, out);
+			if (ret) {
+				printf("Cannot write %s: %pe\n", filename, ERR_PTR(ret));
+				rc = COMMAND_ERROR;
+				goto err;
+			}
+		} else if (varname) {
+			unsigned char *str = buf;
+			int i;
+
+			str[bufsize - 1] = 0;
+	
+			for (i = 0; i < out; i++)
+				if (!isprint(str[i]))
+					break;
+
+			str[i] = 0;
+
+			setenv(varname, buf);
+		} else {
+			memory_display(buf, 0, out, 1, 0);
+		}
+	}
+
+	rc = 0;
+
+err:
+	free(buf);
+
+	return rc;
+}
+
+BAREBOX_CMD_HELP_START(avb_pvalue)
+BAREBOX_CMD_HELP_TEXT("This command provides access to the AVB persistent variable store.")
+BAREBOX_CMD_HELP_TEXT("usage:")
+BAREBOX_CMD_HELP_TEXT("avb_pvalue [OPTION]... [VARNAME/VALUE]")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-r <varname>",  "read variable <varname>. read value into [VARNAME] if given")
+BAREBOX_CMD_HELP_OPT ("-w <varname>",  "write variable <varname>. Set to [VALUE] if given")
+BAREBOX_CMD_HELP_OPT ("-f <file>",  "read/write value from/to file")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(avb_pvalue)
+	.cmd            = do_avb_pvalue,
+	BAREBOX_CMD_DESC("AVB persistent variable store")
+	BAREBOX_CMD_OPTS("[-rwf] [VARNAME/VALUE]")
+	BAREBOX_CMD_HELP(cmd_avb_pvalue_help)
+	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
+BAREBOX_CMD_END

-- 
2.39.5



