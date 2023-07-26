Delivery-date: Wed, 26 Jul 2023 14:53:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOe1V-00ArvS-6Z
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 14:53:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOe1S-0007W4-Jj
	for lore@pengutronix.de; Wed, 26 Jul 2023 14:53:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zkcem+yJxGG3qzb40XqLYXiyRwXW3VeDuPk4HXBnldE=; b=BTHmdeYcHr60r7Ff9ay7610Qf8
	WXJQVTH71rlIhi3DYR2csPRso9D2S19f6T09xuWLp74YcsUTDk2gOssfxhb+jdW1shL+Ny7bKvzzk
	hU5wPh4LCajVnrSLJls94q1EfMwgH83RhAep3a48WogZQsyuyEX2pu7Ve0hDuc2ew3PFaUhIIu6cA
	uOkUixFiHACefgcV+zqOcHPtMRnHpbTBxTWqHv7cybnPEhYPEV32ggoxDZEJw2/xg7XaDyQZaOfSn
	3K06vk0Y6smDbJX751ISrWURuoG8hkQdBNNs2yf54bpoSpJe4Q9LGwg1GgI5ZVwqnFAWxt/ZtpcYa
	CQUrNpKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOe0K-00ARZU-27;
	Wed, 26 Jul 2023 12:52:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOe0G-00ARYH-1y
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 12:52:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qOe0E-0007Pv-Ud; Wed, 26 Jul 2023 14:52:30 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qOe0E-002EyD-A7; Wed, 26 Jul 2023 14:52:30 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qOe0E-00FYO5-03;
	Wed, 26 Jul 2023 14:52:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Jul 2023 14:52:23 +0200
Message-Id: <20230726125222.3706933-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_055232_653456_50115FA4 
X-CRM114-Status: GOOD (  20.59  )
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
Subject: [PATCH v2] commands: go: support passing integer arguments instead of argc/argv
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
v1 -> v2:
  - don't ignore kstrtoul errors (Sascha)
---
 commands/Kconfig |  5 ++++-
 commands/go.c    | 57 ++++++++++++++++++++++++++++++++++++++++++------
 2 files changed, 54 insertions(+), 8 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index d6db312ced42..88e9158417e5 100644
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
index 0c0b4cb15e4d..28463ac8e341 100644
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
 
@@ -42,9 +65,26 @@ static int do_go(int argc, char *argv[])
 
 	func = addr;
 
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
+		for (i = 0; i < argc; i++) {
+			rcode = kstrtoul(argv[i], 0, &arg[i]);
+			if (rcode)
+				goto out;
+		}
+	}
+
 	shutdown_barebox();
 
-	func(argc - 1, &argv[1]);
+	func(arg[0], arg[1], arg[2], arg[3]);
 
 	/*
 	 * The application returned. Since we have shutdown barebox and
@@ -64,12 +104,15 @@ BAREBOX_CMD_HELP_TEXT("Start application at ADDR passing ARG as arguments.")
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



