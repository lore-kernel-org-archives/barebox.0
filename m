Delivery-date: Mon, 25 Nov 2024 16:15:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFaoa-000FeV-3A
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:15:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFaoa-0000Yp-Oo
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:15:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SP7mfOiYi1b330S6KojtKV10rPt3h+JMYVdGsRNLvw8=; b=a1jAdy1lJTAHH0VkTxHO3TGyoT
	at/SqmYG+HeK0+G/Lz15o8bfxEApFIOIEdCHSFtFyDtyQ9Ac3TFVo5Wuw/PzE8eY59IH30cu1BtUZ
	37Jn8E8WL57ghBX2Z9qH+U3rXn6SQRpu8FwfdY0mSC3J8U22yHCQdCU3tqTZIhB8iT7HrSVKatnXA
	IfOg5Teq36BwujUtXjmTqrsqd4qy7hrGYDxgFWEj0nszCAz0y3iXG4rVzx7wKrYLq6MPuE8BYWiaW
	4842lXJ0zabNVJOR5uRJ3tNDgGeEYEaCkebf8fF40nO35Aj2VkzInQtlchODrq3OpyF7CWBHZYMcd
	/Z5KGXCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFaoC-00000008QuA-0O8S;
	Mon, 25 Nov 2024 15:15:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFao8-00000008QtG-3doW
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:15:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFao7-0000Q0-G6; Mon, 25 Nov 2024 16:15:23 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFao6-0006NZ-1R;
	Mon, 25 Nov 2024 16:15:23 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFao6-001nzn-1d;
	Mon, 25 Nov 2024 16:15:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ysionneau@kalrayinc.com,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:15:21 +0100
Message-Id: <20241125151522.430233-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_071524_906601_0F552CAE 
X-CRM114-Status: GOOD (  18.26  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] sandbox: barebox cmdline
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For easier non-interactive use of sandbox, let's add support to execute
arbitrary commands from the command line directly.

Reviewed-by: Yann Sionneau <ysionneau@kalrayinc.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - Add Yann's R-b
---
 arch/sandbox/Kconfig     |  1 +
 arch/sandbox/os/common.c | 18 +++++++++++++++++-
 common/Kconfig           |  7 +++++++
 common/startup.c         | 13 ++++++++++++-
 include/shell.h          |  9 +++++++++
 5 files changed, 46 insertions(+), 2 deletions(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index d82027e75047..52915490ca98 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -20,6 +20,7 @@ config SANDBOX
 	select HAS_DEBUG_LL
 	select ARCH_DMA_DEFAULT_COHERENT
 	select ARCH_WANT_FRAME_POINTERS
+	select BAREBOX_CMDLINE
 	default y
 
 config ARCH_TEXT_BASE
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 3446074f99d0..14018b2a63b0 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -492,12 +492,20 @@ static int add_dtb(const char *file)
 	return -1;
 }
 
+static char *cmdline;
+
+const char *barebox_cmdline_get(void)
+{
+	return cmdline;
+}
+
 static void print_usage(const char*);
 
 static struct option long_options[] = {
 	{"help",     0, 0, 'h'},
 	{"malloc",   1, 0, 'm'},
 	{"image",    1, 0, 'i'},
+	{"command",  1, 0, 'c'},
 	{"env",      1, 0, 'e'},
 	{"dtb",      1, 0, 'd'},
 	{"stdout",   1, 0, 'O'},
@@ -508,7 +516,7 @@ static struct option long_options[] = {
 	{0, 0, 0, 0},
 };
 
-static const char optstring[] = "hm:i:e:d:O:I:B:x:y:";
+static const char optstring[] = "hm:i:c:e:d:O:I:B:x:y:";
 
 int main(int argc, char *argv[])
 {
@@ -516,6 +524,7 @@ int main(int argc, char *argv[])
 	int opt, ret, fd, fd2;
 	int malloc_size = CONFIG_MALLOC_SIZE;
 	int fdno = 0, envno = 0, option_index = 0;
+	char *new_cmdline;
 	char *aux;
 
 #ifdef CONFIG_ASAN
@@ -539,6 +548,12 @@ int main(int argc, char *argv[])
 			break;
 		case 'i':
 			break;
+		case 'c':
+			if (asprintf(&new_cmdline, "%s%s\n", cmdline ?: "", optarg) < 0)
+				exit(1);
+			free(cmdline);
+			cmdline = new_cmdline;
+			break;
 		case 'e':
 			break;
 		case 'd':
@@ -669,6 +684,7 @@ static void print_usage(const char *prgname)
 "  -i, --image=<dev>=<file>\n"
 "                       Same as above, the files will show up as\n"
 "                       /dev/<dev>\n"
+"  -c, --command=<cmd>  Run extra command after init scripts\n"
 "  -e, --env=<file>     Map a file with an environment to barebox. With this \n"
 "                       option, files are mapped as /dev/env0 ... /dev/envx\n"
 "                       and thus are used as the default environment.\n"
diff --git a/common/Kconfig b/common/Kconfig
index 498d219b4de3..9a63556378db 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -422,6 +422,13 @@ config SIMPLE_READLINE
 	default y
 	depends on !CMDLINE_EDITING
 
+config BAREBOX_CMDLINE
+	bool
+	help
+	  Support a barebox command line when running virtualized.
+	  The commands are appended onto /cmdline, which is sourced
+	  after sourcing all init scripts.
+
 config CBSIZE
 	int
 	prompt "Buffer size for input from the Console"
diff --git a/common/startup.c b/common/startup.c
index 9510824a908a..443af653d2a8 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -30,6 +30,7 @@
 #include <magicvar.h>
 #include <linux/reboot-mode.h>
 #include <asm/sections.h>
+#include <libfile.h>
 #include <uncompress.h>
 #include <globalvar.h>
 #include <console_countdown.h>
@@ -245,7 +246,7 @@ postcore_initcall(register_autoboot_vars);
 
 static int run_init(void)
 {
-	const char *bmode;
+	const char *bmode, *cmdline;
 	bool env_bin_init_exists;
 	enum autoboot_state autoboot;
 	struct stat s;
@@ -294,6 +295,16 @@ static int run_init(void)
 		globfree(&g);
 	}
 
+	cmdline = barebox_cmdline_get();
+	if (cmdline) {
+		ret = write_file("/cmdline", cmdline, strlen(cmdline));
+		if (ret)
+			return ret;
+
+		console_ctrlc_allow();
+		run_command("source /cmdline");
+	}
+
 	/* source matching script in /env/bmode/ */
 	bmode = reboot_mode_get();
 	if (bmode) {
diff --git a/include/shell.h b/include/shell.h
index 073f18102b45..b399564ff391 100644
--- a/include/shell.h
+++ b/include/shell.h
@@ -19,4 +19,13 @@ static inline char *shell_expand(char *str)
 }
 #endif
 
+#ifdef CONFIG_BAREBOX_CMDLINE
+const char *barebox_cmdline_get(void);
+#else
+static inline const char *barebox_cmdline_get(void)
+{
+	return NULL;
+}
+#endif
+
 #endif /* __SHELL_H__ */
-- 
2.39.5



