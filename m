Delivery-date: Fri, 21 Jul 2023 13:11:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qMo2k-005PRh-JL
	for lore@lore.pengutronix.de; Fri, 21 Jul 2023 13:11:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qMo2i-000290-7P
	for lore@pengutronix.de; Fri, 21 Jul 2023 13:11:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dJhBkwc7qSPrSzQrpntnVKTiLIfw9tdI6l1ixZ5PMjY=; b=veRvv2H5ceJIUtJpGsQt/VD9S2
	z5KDIDqzwTwq3ySMh+T8a2cG7ct0+JTxNZFUi2sStSS+klMPK9yYyb00gTbcv990c1e81zAEykoee
	MATVMUhVCwwWk8sgt12m7x/YnlFe/KZrGy1+46CIw1oqeuz0J3IUQ0ejh7f/QAKkadVZ6DNDCoVf7
	2KzIk9GquIICfoXS03CF5TbhuDhOBaE+St2ASbGrFL7N7UGJuFT4sFzhBqdzJVyBP0jgfFanPkk/x
	geEU3ZcdbFxhvW8czMr9Guz39Rc5gtoekRgdf9eWe1+Sf45V370JTjEXN8jlwL5+L0GaNhH370cgY
	cdciuIhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMo1W-00Dt5j-2d;
	Fri, 21 Jul 2023 11:10:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMo1T-00Dt4F-1p
	for barebox@lists.infradead.org;
	Fri, 21 Jul 2023 11:10:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qMo1S-0001Yi-0X; Fri, 21 Jul 2023 13:10:10 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qMo1R-0012r1-CK; Fri, 21 Jul 2023 13:10:09 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qMo1Q-00FWRW-31;
	Fri, 21 Jul 2023 13:10:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 21 Jul 2023 13:10:07 +0200
Message-Id: <20230721111007.3699613-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_041011_606557_50765E7A 
X-CRM114-Status: GOOD (  19.95  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] commands: go: support passing integer arguments instead of argc/argv
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The go command accepts extra arguments, which are passed through to the
application using two parameters: argc to hold the number of arguments
and argv as a NULL pointer terminated array of pointers to
nul-terminated strings.

As the go command is meant to invoke bare metal applications, it is
useful to be able to pass arguments parsed to integers using the
default calling convention, so add a new -i argument. The old behavior
remains the default and a new -s arguments makes it explicit for
symmetry.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig |  5 ++++-
 commands/go.c    | 54 +++++++++++++++++++++++++++++++++++++++++-------
 2 files changed, 51 insertions(+), 8 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 7ca7b56fa54e..987cc286fc73 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -461,12 +461,15 @@ config CMD_GO
 	help
 	  Start application at address or file
 
-	  Usage: go ADDR [ARG...]
+	  Usage: go [-si] ADDR [ARG...]
 
 	  Start application at ADDR passing ARG as arguments.
 
 	  If addr does not start with a digit it is interpreted as a filename
 	  in which case the file is memmapped and executed
+	  Options:
+		  -s	pass all arguments as strings referenced by argc, argv arguments (default)
+		  -i	pass up to four integer arguments using default calling convention
 
 config CMD_LOADB
 	depends on CONSOLE_FULL
diff --git a/commands/go.c b/commands/go.c
index 0c0b4cb15e4d..c0c0f5a0c562 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -8,21 +8,44 @@
 #include <complete.h>
 #include <fs.h>
 #include <fcntl.h>
+#include <getopt.h>
 #include <linux/ctype.h>
 #include <errno.h>
 
+#define INT_ARGS_MAX	4
+
 static int do_go(int argc, char *argv[])
 {
 	void	*addr;
 	int     rcode = 1;
 	int	fd = -1;
-	int	(*func)(int argc, char *argv[]);
+	void	(*func)(ulong r0, ulong r1, ulong r2, ulong r3);
+	int	opt;
+	ulong	arg[INT_ARGS_MAX] = {};
+	bool	pass_argv = true;
 
-	if (argc < 2)
+	while ((opt = getopt(argc, argv, "+si")) > 0) {
+		switch (opt) {
+		case 's':
+			pass_argv = true;
+			break;
+		case 'i':
+			pass_argv = false;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	/* skip options */
+	argv += optind;
+	argc -= optind;
+
+	if (argc == 0 || (!pass_argv && argc - 1 > INT_ARGS_MAX))
 		return COMMAND_ERROR_USAGE;
 
-	if (!isdigit(*argv[1])) {
-		fd = open(argv[1], O_RDONLY);
+	if (!isdigit(*argv[0])) {
+		fd = open(argv[0], O_RDONLY);
 		if (fd < 0) {
 			perror("open");
 			goto out;
@@ -34,7 +57,7 @@ static int do_go(int argc, char *argv[])
 			goto out;
 		}
 	} else
-		addr = (void *)simple_strtoul(argv[1], NULL, 16);
+		addr = (void *)simple_strtoul(argv[0], NULL, 16);
 
 	printf("## Starting application at 0x%p ...\n", addr);
 
@@ -44,7 +67,21 @@ static int do_go(int argc, char *argv[])
 
 	shutdown_barebox();
 
-	func(argc - 1, &argv[1]);
+	if (pass_argv) {
+		arg[0] = argc;
+		arg[1] = (ulong)argv;
+	} else {
+		int i;
+
+		/* skip argv[0] */
+		argc--;
+		argv++;
+
+		for (i = 0; i < argc; i++)
+			kstrtoul(argv[i], 0, &arg[i]);
+	}
+
+	func(arg[0], arg[1], arg[2], arg[3]);
 
 	/*
 	 * The application returned. Since we have shutdown barebox and
@@ -64,12 +101,15 @@ BAREBOX_CMD_HELP_TEXT("Start application at ADDR passing ARG as arguments.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("If addr does not start with a digit it is interpreted as a filename")
 BAREBOX_CMD_HELP_TEXT("in which case the file is memmapped and executed")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-s", "pass all arguments as strings referenced by argc, argv arguments (default)")
+BAREBOX_CMD_HELP_OPT("-i", "pass up to four integer arguments using default calling convention")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(go)
 	.cmd		= do_go,
 	BAREBOX_CMD_DESC("start application at address or file")
-	BAREBOX_CMD_OPTS("ADDR [ARG...]")
+	BAREBOX_CMD_OPTS("[-si] ADDR [ARG...]")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_go_help)
 	BAREBOX_CMD_COMPLETE(command_var_complete)
-- 
2.39.2



