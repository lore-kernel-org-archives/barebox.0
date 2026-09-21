Delivery-date: Mon, 21 Sep 2026 12:20:25 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x8b8L-004eG5-0v
	for lore@lore.pengutronix.de;
	Mon, 21 Sep 2026 12:20:25 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BA4F4200800
	for <lore@pengutronix.de>; Mon, 21 Sep 2026 12:20:24 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="B8aCBtd/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qwq+rBpKSHyNceHbkC9decnLGYy/SYVKzFS/CYCZylY=; b=B8aCBtd/cHrJWZwYG5IlN1PVjP
	gMrxxhAmm1iwRMMQn+Vk8izWwE3IwZVLHQG4KwNiZfb2qeu6UUtAq0ZMxmNDDogsonBdx3unLf4p3
	AsRyWZ9t70jCS5ty3I0NgVixiIxMXYlGWYsQ43Yg8UwiVikQ+KtY9+vIyBCkLmZQ3vgT6igju1spT
	I5Qpe2uecLSTChM4mzrJ0lMqqo93Y7TrTGYfKWpOFF87bxiiOzmvF6Kho4WUWrrpDpwR9Xbe8x6OS
	0kb2u9eDfpLjyduAabMS0Fla9PUlldmbEhNYG8cfAOhL+HW2PFPZ22qFAUJG3vw4E8mmCZX9LOe+K
	iGZauY/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8b7r-00000001fPO-1mtK;
	Mon, 21 Sep 2026 10:19:55 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8b7n-00000001fOm-3ZSw
	for barebox@lists.infradead.org;
	Mon, 21 Sep 2026 10:19:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DD306200800;
	Mon, 21 Sep 2026 12:19:49 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8b7l-0022uR-2f;
	Mon, 21 Sep 2026 12:19:49 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8b7m-00000004FaA-11Bj;
	Mon, 21 Sep 2026 12:19:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] semihosting: add semihosting_exit() and an smhexit command
Date: Mon, 21 Sep 2026 12:18:57 +0200
Message-ID: <20260921101948.1007488-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_031952_046681_5CA4C853 
X-CRM114-Status: GOOD (  20.52  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Give barebox running under an emulator or a debugger an easy
    way to report status to whatever started it via the Semihosting SYS_EXIT
   command. Only on 64-bit AArch64/RISC-V does SYS_EXIT take a parameter block
    it can carry the status in. On AArch32 that is SYS_EXIT_EXTENDED, so let's
    use the latter everywhere. On the off-chance the host does [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: k3u56h1m87m148aqyw4s8esyxki36mgk
X-Rspamd-Queue-Id: BA4F4200800
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

Give barebox running under an emulator or a debugger an easy way to
report status to whatever started it via the Semihosting SYS_EXIT
command.

Only on 64-bit AArch64/RISC-V does SYS_EXIT take a parameter block it
can carry the status in. On AArch32 that is SYS_EXIT_EXTENDED, so let's
use the latter everywhere. On the off-chance the host doesn't support
it, smhexit -p (plain) can be used instead.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
I want to make use of this for integration tests: barebox will assert
invariants at runtime and exit with this if they fail.
---
 commands/Kconfig                  |  9 ++++
 commands/Makefile                 |  1 +
 commands/smhexit.c                | 69 +++++++++++++++++++++++++++++++
 drivers/firmware/semihosting.c    | 30 +++++++++++++-
 include/asm-generic/semihosting.h |  2 +
 5 files changed, 110 insertions(+), 1 deletion(-)
 create mode 100644 commands/smhexit.c

diff --git a/commands/Kconfig b/commands/Kconfig
index c8804c8e17fe..29e574c72952 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -587,6 +587,15 @@ config CMD_RESET
 	  Options:
 		  -f	force RESET, don't call shutdown
 
+config CMD_SMHEXIT
+	tristate
+	depends on SEMIHOSTING
+	prompt "smhexit"
+	help
+	  End the semihosting session and hand the host an exit status.
+
+	  Usage: smhexit [-pf] [STATUS]
+
 config CMD_SAVES
 	tristate
 	depends on CMD_LOADS
diff --git a/commands/Makefile b/commands/Makefile
index 7f0c68a5e58e..17389465950d 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -25,6 +25,7 @@ obj-$(CONFIG_CMD_SMC)		+= smc.o
 obj-$(CONFIG_CMD_MSLEEP)	+= msleep.o
 obj-$(CONFIG_CMD_RESET)		+= reset.o
 obj-$(CONFIG_CMD_POWEROFF)	+= poweroff.o
+obj-$(CONFIG_CMD_SMHEXIT)	+= smhexit.o
 obj-$(CONFIG_CMD_GO)		+= go.o
 obj-$(CONFIG_CMD_PARTITION)	+= partition.o
 obj-$(CONFIG_CMD_LS)		+= ls.o
diff --git a/commands/smhexit.c b/commands/smhexit.c
new file mode 100644
index 000000000000..b519e9399ae0
--- /dev/null
+++ b/commands/smhexit.c
@@ -0,0 +1,69 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <barebox.h>
+#include <command.h>
+#include <complete.h>
+#include <console.h>
+#include <getopt.h>
+#include <linux/kstrtox.h>
+#include <asm/semihosting.h>
+
+static int do_smhexit(int argc, char *argv[])
+{
+	bool extended_flag = true, shutdown_flag = true;
+	int opt, status = 0;
+
+	while ((opt = getopt(argc, argv, "pf")) > 0) {
+		switch (opt) {
+		case 'p':
+			extended_flag = false;
+			break;
+		case 'f':
+			shutdown_flag = false;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	argc -= optind;
+	argv += optind;
+
+	if (argc > 1)
+		return COMMAND_ERROR_USAGE;
+
+	if (argc == 1 && kstrtoint(argv[0], 0, &status))
+		return COMMAND_ERROR_USAGE;
+
+	if (shutdown_flag)
+		shutdown_barebox();
+
+	console_flush();
+	semihosting_exit(status, extended_flag);
+
+	/* Unreachable */
+	return 1;
+}
+
+BAREBOX_CMD_HELP_START(smhexit)
+BAREBOX_CMD_HELP_TEXT("Tell the debugger or emulator barebox runs under that the session")
+BAREBOX_CMD_HELP_TEXT("is over and hand it STATUS (0 if none is given) as the exit status.")
+BAREBOX_CMD_HELP_TEXT("QEMU exits with it, so a boot driven from the outside can report")
+BAREBOX_CMD_HELP_TEXT("its outcome without anything having to read the console.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-p", "use the plain SYS_EXIT call for a host that has no")
+BAREBOX_CMD_HELP_OPT("",   "SYS_EXIT_EXTENDED. On 32-bit, this loses STATUS.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Without a host listening the trap instruction is undefined and the")
+BAREBOX_CMD_HELP_TEXT("machine stops instead.")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(smhexit)
+	.cmd		= do_smhexit,
+	BAREBOX_CMD_DESC("end the semihosting session")
+	BAREBOX_CMD_OPTS("[-pf] [STATUS]")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_smhexit_help)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+BAREBOX_CMD_END
diff --git a/drivers/firmware/semihosting.c b/drivers/firmware/semihosting.c
index 9663959aa49f..9b665dfce07b 100644
--- a/drivers/firmware/semihosting.c
+++ b/drivers/firmware/semihosting.c
@@ -37,12 +37,40 @@ enum {
 	SEMIHOSTING_SYS_ERRNO	= 0x13,
 	/* SYS_GET_CMDLINE is not implemented */
 	/* SYS_HEAPINFO is not implemented */
-	/* angel_SWIreason_ReportException is not implemented */
 	SEMIHOSTING_SYS_SYSTEM	= 0x12,
+	SEMIHOSTING_SYS_EXIT	= 0x18,
+	SEMIHOSTING_SYS_EXIT_EXTENDED = 0x20,
 };
 
+/* the reason code of angel_SWIreason_ReportException we report */
+#define ADP_STOPPED_APPLICATION_EXIT	0x20026
+
 long semihosting_trap(ulong sysnum, void *addr);
 
+/**
+ * semihosting_exit - end the semihosting session
+ * @status: exit status to report to the host
+ * @extended: use SYS_EXIT_EXTENDED instead of the plain SYS_EXIT
+ *
+ * Tell the debugger or the emulator on the other end that barebox is done
+ * and hand it @status. Does not return.
+ */
+void __noreturn semihosting_exit(int status, bool extended)
+{
+	ulong block[2] = { ADP_STOPPED_APPLICATION_EXIT, status };
+	void *arg = block;
+
+	if (!extended && !IS_ENABLED(CONFIG_64BIT))
+		arg = (void *)ADP_STOPPED_APPLICATION_EXIT;
+
+	semihosting_trap(extended ? SEMIHOSTING_SYS_EXIT_EXTENDED
+				  : SEMIHOSTING_SYS_EXIT, arg);
+
+	/* Unreachable, above command would hang if unsupported */
+	BUG();
+}
+EXPORT_SYMBOL(semihosting_exit);
+
 static long semihosting_call(ulong sysnum, void *addr)
 {
 	long ret = semihosting_trap(sysnum, addr);
diff --git a/include/asm-generic/semihosting.h b/include/asm-generic/semihosting.h
index 67031c331b97..2f745ac8042c 100644
--- a/include/asm-generic/semihosting.h
+++ b/include/asm-generic/semihosting.h
@@ -3,6 +3,7 @@
 #ifndef __ASM_GENERIC_SEMIHOSTING_H
 #define __ASM_GENERIC_SEMIHOSTING_H
 
+#include <linux/compiler.h>
 #include <linux/types.h>
 
 int semihosting_open(const char *fname, int flags);
@@ -19,5 +20,6 @@ int semihosting_remove(const char *fname);
 int semihosting_rename(const char *fname1, const char *fname2);
 int semihosting_errno(void);
 int semihosting_system(const char *command);
+void __noreturn semihosting_exit(int status, bool extended);
 
 #endif
-- 
2.47.3



