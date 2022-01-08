Delivery-date: Sat, 08 Jan 2022 18:18:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FM4-00Ecl1-UO
	for lore@lore.pengutronix.de; Sat, 08 Jan 2022 18:18:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FM2-0005Pn-V5
	for lore@pengutronix.de; Sat, 08 Jan 2022 18:18:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hl8w2W5TEK5sN0JaEgQFB+YYu032E4RYpMn+1LlCvG0=; b=B+1vQ75NDDIjsp
	/GW9MkP+fyEt3nzG5pREQuQl7hyDiFq4nkaWDC2OXLgn9fkrCiq35LUkp0hr8U19TdRfgZtxWnpue
	I/1rU0nZnxs4ZUL0i5VHiQMrbaYWuRlhQgFS60k7bL4yKC4iTVre6N0iQvE2OIRUQNu+p8mhnP9pB
	h70u0SfDzv1pgzD4Vu9RBdlQ3O23B1Av5ANRPrPbLEo52WBfWhULC/BfQCLW2CyIgp5KYkhTHT+K5
	QsYUgE9xrBYeGpUsP7HD7pV2BV96dmOE6tb99Ae2XZIv7hOZazuGemPtLbaOzZZtRD/dTggQgaZ57
	ymhhavNOWv025S8p1BKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6FKm-006kYE-L0; Sat, 08 Jan 2022 17:16:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6FK4-006k5z-QC
 for barebox@lists.infradead.org; Sat, 08 Jan 2022 17:16:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FJv-0004Nr-HB; Sat, 08 Jan 2022 18:15:59 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FJu-002T5c-U6; Sat, 08 Jan 2022 18:15:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat,  8 Jan 2022 18:15:55 +0100
Message-Id: <20220108171555.588426-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220108171555.588426-1-a.fatoum@pengutronix.de>
References: <20220108171555.588426-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220108_091609_063308_A1F30599 
X-CRM114-Status: GOOD (  25.09  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] commands: add new tutorial command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have a web demo at http://barebox.org/jsbarebox and it would
be nice to have a tutorial there. Add a new tutorial command that
cycles through a number of tips.

Tutorial will follow later.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig    |   7 ++
 commands/Makefile   |   1 +
 commands/tutorial.c | 160 ++++++++++++++++++++++++++++++++++++++++++++
 common/complete.c   |  21 ++++--
 include/complete.h  |   1 +
 5 files changed, 184 insertions(+), 6 deletions(-)
 create mode 100644 commands/tutorial.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 9abd97271952..87583db31f90 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -23,6 +23,13 @@ menu "Commands"
 
 menu "Information"
 
+config CMD_TUTORIAL
+	bool "barebox tutorial (next command)"
+	default SANDBOX
+	help
+	  Help navigate a barebox tutorial available
+	  in /env/data/tutorial/
+
 config CMD_AT91CLK
 	bool "at91clk"
 	default y
diff --git a/commands/Makefile b/commands/Makefile
index 875826743ffe..db78d0b877f6 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -135,5 +135,6 @@ obj-$(CONFIG_CMD_IP_ROUTE_GET)  += ip-route-get.o
 obj-$(CONFIG_CMD_BTHREAD)	+= bthread.o
 obj-$(CONFIG_CMD_UBSAN)		+= ubsan.o
 obj-$(CONFIG_CMD_SELFTEST)	+= selftest.o
+obj-$(CONFIG_CMD_TUTORIAL)	+= tutorial.o
 
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/tutorial.c b/commands/tutorial.c
new file mode 100644
index 000000000000..81e2f93716cd
--- /dev/null
+++ b/commands/tutorial.c
@@ -0,0 +1,160 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: (c) 2021 Ahmad Fatoum
+
+#include <common.h>
+#include <command.h>
+#include <unistd.h>
+#include <fcntl.h>
+#include <complete.h>
+#include <sys/stat.h>
+#include <glob.h>
+#include <getopt.h>
+#include <magicvar.h>
+#include <globalvar.h>
+
+static int next_step;
+BAREBOX_MAGICVAR(global.tutorial.step, "Next tutorial step.");
+
+#define BUFSIZE 1024
+
+static glob_t steps;
+
+static int register_tutorial_vars(void)
+{
+	char *oldcwd;
+	int ret = 0;
+
+	oldcwd = pushd("/env/data/tutorial");
+	if (!oldcwd)
+		return 0;
+
+	ret = glob("*", 0, NULL, &steps);
+	if (ret)
+		goto out;
+
+	ret = globalvar_add_simple_enum("tutorial.step", &next_step,
+					(const char **)steps.gl_pathv, steps.gl_pathc);
+
+out:
+	popd(oldcwd);
+	return ret;
+
+}
+postenvironment_initcall(register_tutorial_vars);
+
+static int print_tutorial_step(const char *step)
+{
+	bool highlight = false;
+	int fd, ret, i;
+	char *buf;
+
+	fd = open(step, O_RDONLY);
+	if (fd < 0) {
+		printf("could not open /env/data/tutorial/%s\n", step);
+		return -errno;
+	}
+
+	buf = malloc(BUFSIZE);
+	if (!buf) {
+		ret = -ENOMEM;
+		goto out;
+	}
+
+	printf("%s\n", step);
+
+	while((ret = read(fd, buf, BUFSIZE)) > 0) {
+		for(i = 0; i < ret; i++) {
+			if (buf[i] != '`') {
+				putchar(buf[i]);
+				continue;
+			}
+
+			puts(highlight ? "\e[0m" : "\e[1;31m");
+			highlight = !highlight;
+		}
+	}
+
+	free(buf);
+out:
+	close(fd);
+
+	return ret;
+}
+
+static int do_tutorial_next(int argc, char *argv[])
+{
+	int opt, i;
+	char *step = NULL;
+	char *oldcwd;
+	ssize_t ret = 0;
+	bool is_prev = *argv[0] == 'p';
+
+	while ((opt = getopt(argc, argv, "rh")) > 0) {
+		switch (opt) {
+		case 'r':
+			if (steps.gl_pathc) {
+				globalvar_remove("tutorial.step");
+				next_step = 0;
+				globfree(&steps);
+				steps.gl_pathc = 0;
+			}
+			ret = register_tutorial_vars();
+			if (ret == 0 && steps.gl_pathc == 0)
+				ret = -ENOENT;
+			if (ret)
+				printf("could not load /env/data/tutorial/\n");
+			return ret;
+		case 'h':
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optind > argc + 1)
+		return COMMAND_ERROR_USAGE;
+
+	oldcwd = pushd("/env/data/tutorial");
+	if (!oldcwd)
+		return ret;
+
+	if (is_prev)
+		next_step = next_step > 0 ? next_step - 1 : 0;
+
+	if (optind == argc) {
+		step = steps.gl_pathv[next_step];
+		ret = print_tutorial_step(step);
+		if (ret == 0 && !is_prev)
+			next_step = (next_step + 1) % steps.gl_pathc;
+	} else {
+		for (i = optind; i < argc; i++) {
+			step = strdup(argv[i]);
+			ret = print_tutorial_step(step);
+			if (ret)
+				break;
+		}
+	}
+
+	popd(oldcwd);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(next)
+BAREBOX_CMD_HELP_TEXT("Help navigate the barebox tutorial")
+BAREBOX_CMD_HELP_TEXT("Without a parameter, the next or previous tutorial step is printed")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-h\t", "show usage text")
+BAREBOX_CMD_HELP_OPT("-r\t", "rewind and reload tutorial")
+BAREBOX_CMD_HELP_END
+
+static __maybe_unused const char *const prev_alias[] = { "prev", NULL};
+
+BAREBOX_CMD_START(next)
+	.cmd		= do_tutorial_next,
+	.aliases	= prev_alias,
+	BAREBOX_CMD_DESC("print next tip for barebox tutorial")
+	BAREBOX_CMD_OPTS("[-hr] [STEP]")
+	BAREBOX_CMD_HELP(cmd_next_help)
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_COMPLETE(tutorial_complete)
+BAREBOX_CMD_END
diff --git a/common/complete.c b/common/complete.c
index e504b7560668..17c0ddb04a02 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -14,17 +14,18 @@
 #include <command.h>
 #include <environment.h>
 
-static int file_complete(struct string_list *sl, char *instr, int exec)
+static int file_complete(struct string_list *sl, char *instr,
+			 const char *dirn, int exec)
 {
 	char *path = strdup(instr);
 	struct stat s;
 	DIR *dir;
 	struct dirent *d;
 	char tmp[PATH_MAX];
-	char *base, *dirn;
+	char *base;
 
 	base = basename(instr);
-	dirn = dirname(path);
+	dirn = dirn ?: dirname(path);
 
 	dir = opendir(dirn);
 	if (!dir)
@@ -250,7 +251,15 @@ EXPORT_SYMBOL(devicetree_complete);
 int devicetree_file_complete(struct string_list *sl, char *instr)
 {
 	devicetree_complete(sl, instr);
-	file_complete(sl, instr, 0);
+	file_complete(sl, instr, NULL, 0);
+
+	return 0;
+}
+EXPORT_SYMBOL(devicetree_file_complete);
+
+int tutorial_complete(struct string_list *sl, char *instr)
+{
+	file_complete(sl, instr, "/env/data/tutorial", 0);
 
 	return 0;
 }
@@ -392,11 +401,11 @@ int complete(char *instr, char **outstr)
 	if (!instr) {
 		instr = t;
 		if (t && (t[0] == '/' || !strncmp(t, "./", 2))) {
-			file_complete(&sl, t, 1);
+			file_complete(&sl, t, NULL, 1);
 			instr = t;
 		} else if ((t = strrchr(t, ' '))) {
 			t++;
-			file_complete(&sl, t, 0);
+			file_complete(&sl, t, NULL, 0);
 			instr = t;
 		} else {
 			command_complete(&sl, instr);
diff --git a/include/complete.h b/include/complete.h
index 75a92fc86aa0..b0e675b5599f 100644
--- a/include/complete.h
+++ b/include/complete.h
@@ -23,5 +23,6 @@ int devicetree_nodepath_complete(struct string_list *sl, char *instr);
 int devicetree_complete(struct string_list *sl, char *instr);
 int devicetree_file_complete(struct string_list *sl, char *instr);
 int env_param_noeval_complete(struct string_list *sl, char *instr);
+int tutorial_complete(struct string_list *sl, char *instr);
 
 #endif /* __COMPLETE_ */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

