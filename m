Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x241.google.com ([2a00:1450:400c:c0c::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ehZJ8-0004sn-IC
 for barebox@lists.infradead.org; Fri, 02 Feb 2018 11:15:07 +0000
Received: by mail-wr0-x241.google.com with SMTP id f6so20554748wra.6
 for <barebox@lists.infradead.org>; Fri, 02 Feb 2018 03:14:56 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Fri,  2 Feb 2018 12:14:38 +0100
Message-Id: <20180202111442.12444-7-aleksander@aleksander.es>
In-Reply-To: <20180202111442.12444-1-aleksander@aleksander.es>
References: <20180202111442.12444-1-aleksander@aleksander.es>
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
Subject: [PATCH 06/10] ratp: implement generic command support
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

The RATP implementation now allows executing generic commands with a
binary interface: binary requests are received and binary responses
are returned.

Each command can define its own RATP request contents (e.g. to specify
command-specific options) as well as its own RATP response contents
(if any data is to be returned).

Each command is associated with a numeric unique command ID, and for
easy reference these IDs are maintained in the common ratp_bb header.
Modules may override generic implemented commands or include their own
new ones (as long as the numeric IDs introduced are unique).

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 arch/arm/lib32/barebox.lds.S              |   4 +
 arch/arm/lib64/barebox.lds.S              |   4 +
 arch/blackfin/boards/ipe337/barebox.lds.S |   5 +-
 arch/mips/lib/barebox.lds.S               |   4 +
 arch/nios2/cpu/barebox.lds.S              |   5 +-
 arch/openrisc/cpu/barebox.lds.S           |   4 +
 arch/ppc/boards/pcm030/barebox.lds.S      |   4 +
 arch/ppc/mach-mpc85xx/barebox.lds.S       |   4 +
 arch/sandbox/board/barebox.lds.S          |   5 +
 arch/x86/lib/barebox.lds.S                |   7 +
 arch/x86/mach-efi/elf_ia32_efi.lds.S      |   5 +
 arch/x86/mach-efi/elf_x86_64_efi.lds.S    |   5 +
 common/module.lds.S                       |   2 +
 common/ratp.c                             | 255 ++++++++++++++++++------------
 include/asm-generic/barebox.lds.h         |   2 +
 include/ratp_bb.h                         |  47 ++++++
 16 files changed, 258 insertions(+), 104 deletions(-)

diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index e7b87b7cd..6fadc2a35 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -85,6 +85,10 @@ SECTIONS
 	.barebox_cmd : { BAREBOX_CMDS }
 	__barebox_cmd_end = .;
 
+	__barebox_ratp_cmd_start = .;
+	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
+	__barebox_ratp_cmd_end = .;
+
 	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
 	__barebox_magicvar_end = .;
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index 240699f1a..a53b933bb 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -82,6 +82,10 @@ SECTIONS
 	.barebox_cmd : { BAREBOX_CMDS }
 	__barebox_cmd_end = .;
 
+	__barebox_ratp_cmd_start = .;
+	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
+	__barebox_ratp_cmd_end = .;
+
 	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
 	__barebox_magicvar_end = .;
diff --git a/arch/blackfin/boards/ipe337/barebox.lds.S b/arch/blackfin/boards/ipe337/barebox.lds.S
index 51a586af2..7e82a1bd7 100644
--- a/arch/blackfin/boards/ipe337/barebox.lds.S
+++ b/arch/blackfin/boards/ipe337/barebox.lds.S
@@ -68,6 +68,10 @@ SECTIONS
 	.barebox_cmd : { BAREBOX_CMDS }
 	___barebox_cmd_end = .;
 
+	___barebox_ratp_cmd_start = .;
+	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
+	___barebox_ratp_cmd_end = .;
+
 	___barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
 	___barebox_magicvar_end = .;
@@ -91,4 +95,3 @@ SECTIONS
 	___bss_stop = .;
 	_end = .;
 }
-
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index 899f62b96..660d4be85 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -55,6 +55,10 @@ SECTIONS
 	.barebox_cmd : { BAREBOX_CMDS }
 	__barebox_cmd_end = .;
 
+	__barebox_ratp_cmd_start = .;
+	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
+	__barebox_ratp_cmd_end = .;
+
 	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
 	__barebox_magicvar_end = .;
diff --git a/arch/nios2/cpu/barebox.lds.S b/arch/nios2/cpu/barebox.lds.S
index a2d7fa8cd..fbcd1cd3f 100644
--- a/arch/nios2/cpu/barebox.lds.S
+++ b/arch/nios2/cpu/barebox.lds.S
@@ -55,6 +55,10 @@ SECTIONS
 	.barebox_cmd : { BAREBOX_CMDS }
 	__barebox_cmd_end = .;
 
+	__barebox_ratp_cmd_start = .;
+	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
+	__barebox_ratp_cmd_end = .;
+
 	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
 	__barebox_magicvar_end = .;
@@ -129,4 +133,3 @@ SECTIONS
 	_end = .;
 	PROVIDE (end = .);
 }
-
diff --git a/arch/openrisc/cpu/barebox.lds.S b/arch/openrisc/cpu/barebox.lds.S
index b819ca099..c6807aec3 100644
--- a/arch/openrisc/cpu/barebox.lds.S
+++ b/arch/openrisc/cpu/barebox.lds.S
@@ -57,6 +57,10 @@ SECTIONS
 	.barebox_cmd : { BAREBOX_CMDS } > ram
 	__barebox_cmd_end = .;
 
+	__barebox_ratp_cmd_start = .;
+	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS } > ram
+	__barebox_ratp_cmd_end = .;
+
 	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS } > ram
 	__barebox_magicvar_end = .;
diff --git a/arch/ppc/boards/pcm030/barebox.lds.S b/arch/ppc/boards/pcm030/barebox.lds.S
index 0e34f0a41..3b8bf3c0d 100644
--- a/arch/ppc/boards/pcm030/barebox.lds.S
+++ b/arch/ppc/boards/pcm030/barebox.lds.S
@@ -104,6 +104,10 @@ SECTIONS
   .barebox_cmd : { BAREBOX_CMDS }
   __barebox_cmd_end = .;
 
+  __barebox_ratp_cmd_start = .;
+  .barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
+  __barebox_ratp_cmd_end = .;
+
   __barebox_magicvar_start = .;
   .barebox_magicvar : { BAREBOX_MAGICVARS }
   __barebox_magicvar_end = .;
diff --git a/arch/ppc/mach-mpc85xx/barebox.lds.S b/arch/ppc/mach-mpc85xx/barebox.lds.S
index beebab39d..000197283 100644
--- a/arch/ppc/mach-mpc85xx/barebox.lds.S
+++ b/arch/ppc/mach-mpc85xx/barebox.lds.S
@@ -105,6 +105,10 @@ SECTIONS
   .barebox_cmd : { BAREBOX_CMDS }
   __barebox_cmd_end = .;
 
+  __barebox_ratp_cmd_start = .;
+  .barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
+  __barebox_ratp_cmd_end = .;
+
   __barebox_initcalls_start = .;
   .barebox_initcalls : { INITCALLS }
   __barebox_initcalls_end = .;
diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
index 0d67ab660..80e27fe87 100644
--- a/arch/sandbox/board/barebox.lds.S
+++ b/arch/sandbox/board/barebox.lds.S
@@ -21,6 +21,11 @@ SECTIONS
 	__barebox_cmd_start = .;
 	__barebox_cmd : { BAREBOX_CMDS }
 	__barebox_cmd_end = .;
+
+	. = ALIGN(64);
+	__barebox_ratp_cmd_start = .;
+	__barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
+	__barebox_ratp_cmd_end = .;
 }
 
 INSERT BEFORE .rodata;
diff --git a/arch/x86/lib/barebox.lds.S b/arch/x86/lib/barebox.lds.S
index 23d754653..6ee9342f4 100644
--- a/arch/x86/lib/barebox.lds.S
+++ b/arch/x86/lib/barebox.lds.S
@@ -171,6 +171,13 @@ SECTIONS
 		. = ALIGN(4);
 	} > barebox
 
+	.barebox_ratp_cmd : AT ( LOADADDR(.got) + SIZEOF (.got) ) {
+		__barebox_ratp_cmd_start = .;
+		BAREBOX_RATP_CMDS
+		__barebox_ratp_cmd_end = .;
+		. = ALIGN(4);
+	} > barebox
+
 	.barebox_magicvars : AT ( LOADADDR(.barebox_cmd) + SIZEOF (.barebox_cmd) ) {
 		__barebox_magicvar_start = .;
 		BAREBOX_MAGICVARS
diff --git a/arch/x86/mach-efi/elf_ia32_efi.lds.S b/arch/x86/mach-efi/elf_ia32_efi.lds.S
index 69f43f554..9477aa7d7 100644
--- a/arch/x86/mach-efi/elf_ia32_efi.lds.S
+++ b/arch/x86/mach-efi/elf_ia32_efi.lds.S
@@ -70,6 +70,11 @@ SECTIONS
 	__barebox_cmd : { BAREBOX_CMDS }
 	__barebox_cmd_end = .;
 
+	. = ALIGN(64);
+	__barebox_ratp_cmd_start = .;
+	__barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
+	__barebox_ratp_cmd_end = .;
+
 	. = ALIGN(4096);
 	.dynamic : { *(.dynamic) }
 	. = ALIGN(4096);
diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
index 93d34d17a..90b6b9f3f 100644
--- a/arch/x86/mach-efi/elf_x86_64_efi.lds.S
+++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
@@ -72,6 +72,11 @@ SECTIONS
 	__barebox_cmd : { BAREBOX_CMDS }
 	__barebox_cmd_end = .;
 
+	. = ALIGN(64);
+	__barebox_ratp_cmd_start = .;
+	__barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
+	__barebox_ratp_cmd_end = .;
+
 	. = ALIGN(4096);
 	.dynamic : { *(.dynamic) }
 	. = ALIGN(4096);
diff --git a/common/module.lds.S b/common/module.lds.S
index a03d04f40..f3dbb12f4 100644
--- a/common/module.lds.S
+++ b/common/module.lds.S
@@ -35,6 +35,8 @@ SECTIONS
 	.got : { *(.got) }
 
 	.barebox_cmd : { BAREBOX_CMDS }
+	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
+
 	. = ALIGN(4);
 	.bss : { *(.bss) }
 }
diff --git a/common/ratp.c b/common/ratp.c
index 79b0a9906..2cdb1cd89 100644
--- a/common/ratp.c
+++ b/common/ratp.c
@@ -31,20 +31,10 @@
 #include <ratp_bb.h>
 #include <fs.h>
 
-#define BB_RATP_TYPE_CONSOLE		1
-#define BB_RATP_TYPE_PING		2
-#define BB_RATP_TYPE_GETENV		3
-#define BB_RATP_TYPE_FS			4
+LIST_HEAD(ratp_command_list);
+EXPORT_SYMBOL(ratp_command_list);
 
-#define BB_RATP_FLAG_NONE		0
-#define BB_RATP_FLAG_RESPONSE		(1 << 0) /* Packet is a response */
-#define BB_RATP_FLAG_INDICATION		(1 << 1) /* Packet is an indication */
-
-struct ratp_bb {
-	uint16_t type;
-	uint16_t flags;
-	uint8_t data[];
-};
+#define for_each_ratp_command(cmd) list_for_each_entry(cmd, &ratp_command_list, list)
 
 struct ratp_bb_command_return {
 	uint32_t errno;
@@ -203,66 +193,6 @@ static int ratp_bb_send_getenv_return(struct ratp_ctx *ctx, const char *val)
 static char *ratp_command;
 static struct ratp_ctx *ratp_ctx;
 
-static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
-{
-	const struct ratp_bb *rbb = buf;
-	struct ratp_bb_pkt *pkt;
-	int dlen = len - sizeof(struct ratp_bb);
-	char *varname;
-	int ret = 0;
-	uint16_t flags = be16_to_cpu(rbb->flags);
-
-	switch (be16_to_cpu(rbb->type)) {
-	case BB_RATP_TYPE_CONSOLE:
-		if (flags & BB_RATP_FLAG_RESPONSE)
-			break;
-
-		if (flags & BB_RATP_FLAG_INDICATION) {
-			kfifo_put(ctx->console_recv_fifo, rbb->data, dlen);
-			break;
-		}
-
-		if (ratp_command)
-			return 0;
-
-		ratp_command = xmemdup_add_zero(&rbb->data, dlen);
-		ratp_ctx = ctx;
-		pr_debug("got command: %s\n", ratp_command);
-		break;
-
-	case BB_RATP_TYPE_PING:
-		if (flags & BB_RATP_FLAG_RESPONSE)
-			break;
-
-		ret = ratp_bb_send_pong(ctx);
-		break;
-
-	case BB_RATP_TYPE_GETENV:
-		if (flags & BB_RATP_FLAG_RESPONSE)
-			break;
-
-		varname = xmemdup_add_zero(&rbb->data, dlen);
-		ret = ratp_bb_send_getenv_return(ctx, getenv(varname));
-		break;
-
-	case BB_RATP_TYPE_FS:
-		/* Only responses expected */
-		if (!(flags & BB_RATP_FLAG_RESPONSE))
-			break;
-
-		pkt = xzalloc(sizeof(*pkt) + dlen);
-		pkt->len = dlen;
-		memcpy(pkt->data, &rbb->data, dlen);
-		ctx->fs_rx = pkt;
-		break;
-	default:
-		printf("%s: unhandled packet type 0x%04x\n", __func__, be16_to_cpu(rbb->type));
-		break;
-	}
-
-	return ret;
-}
-
 static int ratp_console_getc(struct console_device *cdev)
 {
 	struct ratp_ctx *ctx = container_of(cdev, struct ratp_ctx, ratp_console);
@@ -374,35 +304,6 @@ static void ratp_console_unregister(struct ratp_ctx *ctx)
 	}
 }
 
-static void ratp_poller(struct poller_struct *poller)
-{
-	struct ratp_ctx *ctx = container_of(poller, struct ratp_ctx, poller);
-	int ret;
-	size_t len;
-	void *buf;
-
-	ratp_queue_console_tx(ctx);
-
-	ret = ratp_poll(&ctx->ratp);
-	if (ret == -EINTR)
-		goto out;
-	if (ratp_closed(&ctx->ratp))
-		goto out;
-
-	ret = ratp_recv(&ctx->ratp, &buf, &len);
-	if (ret < 0)
-		return;
-
-	ratp_bb_dispatch(ctx, buf, len);
-
-	free(buf);
-
-	return;
-
-out:
-	ratp_console_unregister(ctx);
-}
-
 int barebox_ratp_fs_call(struct ratp_bb_pkt *tx, struct ratp_bb_pkt **rx)
 {
 	struct ratp_ctx *ctx = ratp_ctx;
@@ -442,6 +343,156 @@ int barebox_ratp_fs_call(struct ratp_bb_pkt *tx, struct ratp_bb_pkt **rx)
 	return 0;
 }
 
+static int compare_ratp_command(struct list_head *a, struct list_head *b)
+{
+	int id_a = list_entry(a, struct ratp_command, list)->id;
+	int id_b = list_entry(b, struct ratp_command, list)->id;
+
+	return (id_a - id_b);
+}
+
+int register_ratp_command(struct ratp_command *cmd)
+{
+	debug("register ratp command %hu\n", cmd->id);
+	list_add_sort(&cmd->list, &ratp_command_list, compare_ratp_command);
+	return 0;
+}
+EXPORT_SYMBOL(register_ratp_command);
+
+struct ratp_command *find_ratp_cmd(uint16_t cmd_id)
+{
+	struct ratp_command *cmdtp;
+
+	for_each_ratp_command(cmdtp)
+		if (cmd_id == cmdtp->id)
+			return cmdtp;
+
+	return NULL;	/* not found or ambiguous command */
+}
+
+static int dispatch_ratp_message(struct ratp_ctx *ctx, const void *buf, int len)
+{
+	const struct ratp_bb *rbb = buf;
+	struct ratp_bb_pkt *pkt;
+	int dlen = len - sizeof(struct ratp_bb);
+	char *varname;
+	int ret = 0;
+	uint16_t flags;
+	uint16_t type = be16_to_cpu(rbb->type);
+	struct ratp_command *cmd;
+
+	/* See if there's a command registered to this type */
+	cmd = find_ratp_cmd(type);
+	if (cmd) {
+		struct ratp_bb *rsp = NULL;
+		int rsp_len = 0;
+
+		ret = cmd->cmd(rbb, len, &rsp, &rsp_len);
+		if (!ret)
+			ret = ratp_send(&ctx->ratp, rsp, rsp_len);
+
+		free(rsp);
+		return ret;
+	}
+
+	flags = be16_to_cpu(rbb->flags);
+	switch (type) {
+	case BB_RATP_TYPE_CONSOLE:
+		if (flags & BB_RATP_FLAG_RESPONSE)
+			break;
+
+		if (flags & BB_RATP_FLAG_INDICATION) {
+			kfifo_put(ctx->console_recv_fifo, rbb->data, dlen);
+			break;
+		}
+
+		if (ratp_command)
+			return 0;
+
+		ratp_command = xmemdup_add_zero(&rbb->data, dlen);
+		ratp_ctx = ctx;
+		pr_debug("got command: %s\n", ratp_command);
+		break;
+
+	case BB_RATP_TYPE_PING:
+		if (flags & BB_RATP_FLAG_RESPONSE)
+			break;
+
+		ret = ratp_bb_send_pong(ctx);
+		break;
+
+	case BB_RATP_TYPE_GETENV:
+		if (flags & BB_RATP_FLAG_RESPONSE)
+			break;
+
+		varname = xmemdup_add_zero(&rbb->data, dlen);
+		ret = ratp_bb_send_getenv_return(ctx, getenv(varname));
+		break;
+
+	case BB_RATP_TYPE_FS:
+		/* Only responses expected */
+		if (!(flags & BB_RATP_FLAG_RESPONSE))
+			break;
+
+		pkt = xzalloc(sizeof(*pkt) + dlen);
+		pkt->len = dlen;
+		memcpy(pkt->data, &rbb->data, dlen);
+		ctx->fs_rx = pkt;
+		break;
+	default:
+		printf("%s: unhandled packet type 0x%04x\n", __func__, be16_to_cpu(rbb->type));
+		break;
+	}
+
+	return ret;
+}
+
+extern struct ratp_command __barebox_ratp_cmd_start;
+extern struct ratp_command __barebox_ratp_cmd_end;
+
+static int init_ratp_command_list(void)
+{
+	struct ratp_command *cmdtp;
+
+	for (cmdtp = &__barebox_ratp_cmd_start;
+			cmdtp != &__barebox_ratp_cmd_end;
+			cmdtp++)
+		register_ratp_command(cmdtp);
+
+	return 0;
+}
+
+late_initcall(init_ratp_command_list);
+
+static void ratp_poller(struct poller_struct *poller)
+{
+	struct ratp_ctx *ctx = container_of(poller, struct ratp_ctx, poller);
+	int ret;
+	size_t len;
+	void *buf;
+
+	ratp_queue_console_tx(ctx);
+
+	ret = ratp_poll(&ctx->ratp);
+	if (ret == -EINTR)
+		goto out;
+	if (ratp_closed(&ctx->ratp))
+		goto out;
+
+	ret = ratp_recv(&ctx->ratp, &buf, &len);
+	if (ret < 0)
+		return;
+
+	dispatch_ratp_message(ctx, buf, len);
+
+	free(buf);
+
+	return;
+
+out:
+	ratp_console_unregister(ctx);
+}
+
 int barebox_ratp(struct console_device *cdev)
 {
 	int ret;
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index c8a919b92..74d3ca4a9 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -44,6 +44,8 @@
 
 #define BAREBOX_CMDS	KEEP(*(SORT_BY_NAME(.barebox_cmd*)))
 
+#define BAREBOX_RATP_CMDS	KEEP(*(SORT_BY_NAME(.barebox_ratp_cmd*)))
+
 #define BAREBOX_SYMS	KEEP(*(__usymtab))
 
 #define BAREBOX_MAGICVARS	KEEP(*(SORT_BY_NAME(.barebox_magicvar*)))
diff --git a/include/ratp_bb.h b/include/ratp_bb.h
index f485f7d8a..1c2aa1fb7 100644
--- a/include/ratp_bb.h
+++ b/include/ratp_bb.h
@@ -1,6 +1,24 @@
 #ifndef __RATP_BB_H
 #define __RATP_BB_H
 
+#include <linux/stringify.h>
+
+#define BB_RATP_TYPE_CONSOLE		1
+#define BB_RATP_TYPE_PING		2
+#define BB_RATP_TYPE_GETENV		3
+#define BB_RATP_TYPE_FS			4
+#define BB_RATP_TYPE_RESET		5
+
+#define BB_RATP_FLAG_NONE		0
+#define BB_RATP_FLAG_RESPONSE		(1 << 0) /* Packet is a response */
+#define BB_RATP_FLAG_INDICATION		(1 << 1) /* Packet is an indication */
+
+struct ratp_bb {
+	uint16_t type;
+	uint16_t flags;
+	uint8_t data[];
+};
+
 struct ratp_bb_pkt {
 	unsigned int len;
 	uint8_t data[];
@@ -11,4 +29,33 @@ void barebox_ratp_command_run(void);
 int  barebox_ratp_fs_call(struct ratp_bb_pkt *tx, struct ratp_bb_pkt **rx);
 int  barebox_ratp_fs_mount(const char *path);
 
+/*
+ * RATP commands definition
+ */
+
+struct ratp_command {
+	struct list_head  list;
+	uint16_t          id;
+	int		(*cmd)(const struct ratp_bb *req,
+			       int req_len,
+			       struct ratp_bb **rsp,
+			       int *rsp_len);
+}
+#ifdef __x86_64__
+/* This is required because the linker will put symbols on a 64 bit alignment */
+__attribute__((aligned(64)))
+#endif
+;
+
+#define BAREBOX_RATP_CMD_START(_name)							\
+extern const struct ratp_command __barebox_cmd_##_name;					\
+const struct ratp_command __barebox_cmd_##_name						\
+	__attribute__ ((unused,section (".barebox_ratp_cmd_" __stringify(_name)))) = {	\
+	.id		= BB_RATP_TYPE_##_name,
+
+#define BAREBOX_RATP_CMD_END								\
+};
+
+int register_ratp_command(struct ratp_command *cmd);
+
 #endif /* __RATP_BB_H */
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
