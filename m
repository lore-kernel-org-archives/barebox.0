Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2wNr-0001gl-H3
 for barebox@lists.infradead.org; Thu, 11 Jun 2015 06:54:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Jun 2015 08:54:08 +0200
Message-Id: <1434005650-28131-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434005650-28131-1-git-send-email-s.hauer@pengutronix.de>
References: <1434005650-28131-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] barebox remote control
To: Barebox List <barebox@lists.infradead.org>

This adds the ability to control barebox over serial lines. The regular
console is designed for human input and is unsuitable for controlling
barebox from scripts since characters can be lost on both ends, the data
stream contains escape sequences and the prompt cannot be easily matched
upon.
This approach is based on the RATP protocol. RATP packages start with a
binary 0x01 which does not occur in normal console data. Whenever a
0x01 character is detected in the console barebox goes into RATP mode.
The RATP packets contain a simple structure with a command/respone
type and data for that type. Currently defined types are:

BB_RATP_TYPE_COMMAND (host->barebox):
	Execute a command in the shell
BB_RATP_TYPE_COMMAND_RETURN (barebox->host)
	Sends return value of the command back to the host, also means
	barebox is ready for the next command
BB_RATP_TYPE_CONSOLEMSG (barebox->host)
	Console message from barebox

Planned but not yet implemented are:

BB_RATP_TYPE_PING (host->barebox)
BB_RATP_TYPE_PONG (barebox->host)
	For testing purposes
BB_RATP_TYPE_GETENV (host->barebox)
BB_RATP_TYPE_GETENV_RETURN (barebox->host)
	Get values of environment variables

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c     |   5 ++
 common/ratp.c     | 257 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 common/startup.c  |   6 ++
 crypto/Kconfig    |   1 +
 include/console.h |   3 +
 lib/readline.c    |   3 +
 6 files changed, 275 insertions(+)
 create mode 100644 common/ratp.c

diff --git a/common/hush.c b/common/hush.c
index ffd2513..234064b 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -435,6 +435,8 @@ static char *getprompt(void)
 	return prompt;
 }
 
+#include <ratp.h>
+
 static void get_user_input(struct in_str *i)
 {
 	int n;
@@ -447,6 +449,9 @@ static void get_user_input(struct in_str *i)
 		prompt = CONFIG_PROMPT_HUSH_PS2;
 
 	n = readline(prompt, console_buffer, CONFIG_CBSIZE);
+
+	barebox_console_ratp();
+
 	if (n == -1 ) {
 		i->interrupt = 1;
 		n = 0;
diff --git a/common/ratp.c b/common/ratp.c
new file mode 100644
index 0000000..611a102
--- /dev/null
+++ b/common/ratp.c
@@ -0,0 +1,257 @@
+/*
+ * Copyright (c) 2015 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+#include <common.h>
+#include <command.h>
+#include <kfifo.h>
+#include <malloc.h>
+#include <ratp.h>
+#include <byteorder.h>
+
+#define BB_RATP_TYPE_COMMAND		1
+#define BB_RATP_TYPE_COMMAND_RETURN	2
+#define BB_RATP_TYPE_CONSOLEMSG		3
+#define BB_RATP_TYPE_PING		4
+#define BB_RATP_TYPE_PONG		5
+
+struct ratp_bb {
+	uint16_t type;
+	uint16_t flags;
+	uint8_t data[];
+};
+
+struct ratp_bb_command_return {
+	uint32_t errno;
+};
+
+struct ratp_ctx {
+	struct console_device *cdev;
+	struct ratp ratp;
+	int ratp_status;
+	struct console_device ratp_console;
+};
+
+static int ratp_recv(struct ratp *r, uint8_t *data)
+{
+	struct ratp_ctx *ctx = container_of(r, struct ratp_ctx, ratp);
+	struct console_device *cdev = ctx->cdev;
+
+	if (ctrlc())
+		return -EINTR;
+
+	if (!cdev->tstc(cdev))
+		return 0;
+
+	*data = cdev->getc(cdev);
+
+	return 1;
+}
+
+static int ratp_send(struct ratp *r, void *pkt, int len)
+{
+	struct ratp_ctx *ctx = container_of(r, struct ratp_ctx, ratp);
+	struct console_device *cdev = ctx->cdev;
+	const uint8_t *buf = pkt;
+	int i;
+
+	for (i = 0; i < len; i++)
+		cdev->putc(cdev, buf[i]);
+
+	return 0;
+}
+
+static void *xmemdup_add_zero(const void *buf, int len)
+{
+	void *ret;
+
+	ret = xzalloc(len + 1);
+	*(uint8_t *)(ret + len) = 0;
+	memcpy(ret, buf, len);
+
+	return ret;
+}
+
+static int ratp_bb_send_command_return(struct ratp_ctx *ctx, uint32_t errno)
+{
+	void *buf;
+	struct ratp_bb *rbb;
+	struct ratp_bb_command_return *rbb_ret;
+	int len = sizeof(*rbb) + sizeof(*rbb_ret);
+	int ret;
+
+	buf = xzalloc(len);
+	rbb = buf;
+	rbb_ret = buf + sizeof(*rbb);
+
+	rbb->type = cpu_to_be16(BB_RATP_TYPE_COMMAND_RETURN);
+	rbb_ret->errno = cpu_to_be32(errno);
+
+	ret = ratp_send_data(&ctx->ratp, buf, len);
+
+	free(buf);
+
+	return ret;
+}
+
+static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
+{
+	const struct ratp_bb *rbb = buf;
+	int dlen = len - sizeof(struct ratp_bb);
+	char *cmd;
+	int ret = 0;
+
+	switch (be16_to_cpu(rbb->type)) {
+	case BB_RATP_TYPE_COMMAND:
+		cmd = xmemdup_add_zero(&rbb->data, dlen);
+		ret = run_command(cmd);
+		free(cmd);
+
+		ret = ratp_bb_send_command_return(ctx, ret);
+		break;
+
+	case BB_RATP_TYPE_COMMAND_RETURN:
+	case BB_RATP_TYPE_CONSOLEMSG:
+	case BB_RATP_TYPE_PONG:
+		break;
+
+	case BB_RATP_TYPE_PING:
+		break;
+	}
+
+	return ret;
+}
+
+static int ratp_console_getc(struct console_device *cdev)
+{
+	return -EINVAL;
+}
+
+static int ratp_console_tstc(struct console_device *cdev)
+{
+	return 0;
+}
+
+static int ratp_console_puts(struct console_device *cdev, const char *s)
+{
+	struct ratp_ctx *ctx = container_of(cdev, struct ratp_ctx, ratp_console);
+	int len;
+	void *buf;
+	struct ratp_bb *rbb;
+	int ret;
+
+	if (ctx->ratp_status)
+		return 0;
+
+	if (ratp_busy(&ctx->ratp))
+		return 0;
+
+	len = strlen(s);
+
+	if (len > 255)
+		len = 255;
+
+	buf = xzalloc(sizeof(struct ratp_bb) + len);
+	rbb = buf;
+	memcpy(rbb->data, s, len);
+
+	rbb->type = cpu_to_be16(BB_RATP_TYPE_CONSOLEMSG);
+
+	ret = ratp_send_data(&ctx->ratp, buf, len + sizeof(struct ratp_bb));
+	if (ret)
+		ctx->ratp_status = ret;
+
+	free(buf);
+
+	return len;
+}
+
+static void ratp_console_putc(struct console_device *cdev, char c)
+{
+	char buf[2] = { c, 0 };
+
+	ratp_console_puts(cdev, buf);
+}
+
+static int ratp_console_register(struct ratp_ctx *ctx)
+{
+	int ret;
+
+	ctx->ratp_console.tstc = ratp_console_tstc;
+	ctx->ratp_console.puts = ratp_console_puts;
+	ctx->ratp_console.putc = ratp_console_putc;
+	ctx->ratp_console.getc = ratp_console_getc;
+	ctx->ratp_console.f_active = CONSOLE_STDOUT | CONSOLE_STDERR;
+	ctx->ratp_console.devname = "ratpconsole";
+	ctx->ratp_console.devid = DEVICE_ID_SINGLE;
+
+	ret = console_register(&ctx->ratp_console);
+	if (ret) {
+		pr_err("registering failed with %s\n", strerror(-ret));
+		return ret;
+	}
+
+	return 0;
+}
+
+int barebox_ratp(struct console_device *cdev)
+{
+	void *buf = xmalloc(512);
+	int ret;
+	size_t len;
+	struct ratp_ctx *ctx;
+	struct ratp *ratp;
+
+	ctx = xzalloc(sizeof(*ctx));
+	ratp = &ctx->ratp;
+
+	ratp->send = ratp_send;
+	ratp->recv = ratp_recv;
+	ctx->cdev = cdev;
+
+	ret = ratp_establish(ratp, false, 0);
+	if (ret < 0)
+		return ret;
+
+	ret = ratp_console_register(ctx);
+	if (ret)
+		return ret;
+
+	while (1) {
+		ret = ratp_poll(ratp);
+		if (ret == -EINTR)
+			goto out;
+		if (ratp_closed(ratp))
+			goto out;
+
+		len = 512;
+		ret = ratp_recv_data(ratp, buf, &len);
+		if (ret == -EAGAIN)
+			continue;
+
+		if (ret < 0)
+			goto out;
+
+		ret = ratp_bb_dispatch(ctx, buf, len);
+		if (ret)
+			break;
+	}
+out:
+
+	console_unregister(&ctx->ratp_console);
+
+	free(ctx);
+
+	return ret;
+}
diff --git a/common/startup.c b/common/startup.c
index 6178fc5..04edff7 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -82,6 +82,8 @@ environment_initcall(load_environment);
 
 int (*barebox_main)(void);
 
+#include <ratp.h>
+
 void __noreturn start_barebox(void)
 {
 	initcall_t *initcall;
@@ -114,6 +116,10 @@ void __noreturn start_barebox(void)
 		}
 	}
 
+	printf("Checking %s\n", __func__);
+	barebox_console_ratp();
+	printf("Checked %s\n", __func__);
+
 	if (!barebox_main) {
 		pr_err("No main function! aborting.\n");
 		hang();
diff --git a/crypto/Kconfig b/crypto/Kconfig
index 24f8b41..c96268c 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -2,6 +2,7 @@ config CRC32
 	bool
 
 config CRC16
+	default y
 	bool
 
 config CRC7
diff --git a/include/console.h b/include/console.h
index 839ec17..982669c 100644
--- a/include/console.h
+++ b/include/console.h
@@ -83,4 +83,7 @@ unsigned console_get_active(struct console_device *cdev);
 int console_set_baudrate(struct console_device *cdev, unsigned baudrate);
 unsigned console_get_baudrate(struct console_device *cdev);
 
+bool barebox_console_ratp_outstanding(void);
+void barebox_console_ratp(void);
+
 #endif
diff --git a/lib/readline.c b/lib/readline.c
index 14dd311..3acf826 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -199,6 +199,9 @@ int readline(const char *prompt, char *buf, int len)
 	while (1) {
 		ichar = read_key();
 
+		if (barebox_console_ratp_outstanding())
+			return -EINTR;
+
 		if ((ichar == '\n') || (ichar == '\r')) {
 			putchar('\n');
 			break;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
