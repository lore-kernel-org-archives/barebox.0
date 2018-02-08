Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x242.google.com ([2a00:1450:400c:c0c::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ejmAd-0002MC-Rg
 for barebox@lists.infradead.org; Thu, 08 Feb 2018 13:23:25 +0000
Received: by mail-wr0-x242.google.com with SMTP id z6so4697250wrb.1
 for <barebox@lists.infradead.org>; Thu, 08 Feb 2018 05:23:13 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu,  8 Feb 2018 14:22:54 +0100
Message-Id: <20180208132301.24921-2-aleksander@aleksander.es>
In-Reply-To: <20180208132301.24921-1-aleksander@aleksander.es>
References: <20180208132301.24921-1-aleksander@aleksander.es>
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
Subject: [RFC PATCH v2 1/8] ratp: implement generic command support
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

The RATP implementation now allows executing generic commands with a
binary interface: binary requests are received and binary responses
are returned.

Each command can define its own RATP request contents (e.g. to specify
command-specific options) as well as its own RATP response contents
(if any data is to be returned).

Each command is associated with a pair of numeric unique request and
response IDs, and for easy reference these IDs are maintained in the
common ratp_bb header. Modules may override generic implemented
commands or include their own new ones (as long as the numeric IDs
introduced are unique).

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 arch/arm/lib32/barebox.lds.S              |  4 ++
 arch/arm/lib64/barebox.lds.S              |  4 ++
 arch/blackfin/boards/ipe337/barebox.lds.S |  5 +-
 arch/mips/lib/barebox.lds.S               |  4 ++
 arch/nios2/cpu/barebox.lds.S              |  5 +-
 arch/openrisc/cpu/barebox.lds.S           |  4 ++
 arch/ppc/boards/pcm030/barebox.lds.S      |  4 ++
 arch/ppc/mach-mpc85xx/barebox.lds.S       |  4 ++
 arch/sandbox/board/barebox.lds.S          |  5 ++
 arch/x86/lib/barebox.lds.S                |  7 +++
 arch/x86/mach-efi/elf_ia32_efi.lds.S      |  5 ++
 arch/x86/mach-efi/elf_x86_64_efi.lds.S    |  5 ++
 common/module.lds.S                       |  2 +
 common/ratp.c                             | 82 +++++++++++++++++++++++++------
 include/asm-generic/barebox.lds.h         |  2 +
 include/ratp_bb.h                         | 47 ++++++++++++++++++
 16 files changed, 171 insertions(+), 18 deletions(-)

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
index 80863f81f..b051fdee4 100644
--- a/common/ratp.c
+++ b/common/ratp.c
@@ -31,21 +31,10 @@
 #include <ratp_bb.h>
 #include <fs.h>

-#define BB_RATP_TYPE_COMMAND		1
-#define BB_RATP_TYPE_COMMAND_RETURN	2
-#define BB_RATP_TYPE_CONSOLEMSG		3
-#define BB_RATP_TYPE_PING		4
-#define BB_RATP_TYPE_PONG		5
-#define BB_RATP_TYPE_GETENV		6
-#define BB_RATP_TYPE_GETENV_RETURN	7
-#define BB_RATP_TYPE_FS			8
-#define BB_RATP_TYPE_FS_RETURN		9
-
-struct ratp_bb {
-	uint16_t type;
-	uint16_t flags;
-	uint8_t data[];
-};
+LIST_HEAD(ratp_command_list);
+EXPORT_SYMBOL(ratp_command_list);
+
+#define for_each_ratp_command(cmd) list_for_each_entry(cmd, &ratp_command_list, list)

 struct ratp_bb_command_return {
 	uint32_t errno;
@@ -66,6 +55,51 @@ struct ratp_ctx {
 	struct poller_struct poller;
 };

+static int compare_ratp_command(struct list_head *a, struct list_head *b)
+{
+	int id_a = list_entry(a, struct ratp_command, list)->request_id;
+	int id_b = list_entry(b, struct ratp_command, list)->request_id;
+
+	return (id_a - id_b);
+}
+
+int register_ratp_command(struct ratp_command *cmd)
+{
+	debug("register ratp command: request %hu, response %hu\n",
+	      cmd->request_id, cmd->response_id);
+	list_add_sort(&cmd->list, &ratp_command_list, compare_ratp_command);
+	return 0;
+}
+EXPORT_SYMBOL(register_ratp_command);
+
+struct ratp_command *find_ratp_request(uint16_t request_id)
+{
+	struct ratp_command *cmdtp;
+
+	for_each_ratp_command(cmdtp)
+		if (request_id == cmdtp->request_id)
+			return cmdtp;
+
+	return NULL;	/* not found */
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
 static int console_recv(struct ratp *r, uint8_t *data)
 {
 	struct ratp_ctx *ctx = container_of(r, struct ratp_ctx, ratp);
@@ -207,8 +241,24 @@ static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
 	int dlen = len - sizeof(struct ratp_bb);
 	char *varname;
 	int ret = 0;
+	uint16_t type = be16_to_cpu(rbb->type);
+	struct ratp_command *cmd;
+
+	/* See if there's a command registered to this type */
+	cmd = find_ratp_request(type);
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

-	switch (be16_to_cpu(rbb->type)) {
+	switch (type) {
 	case BB_RATP_TYPE_COMMAND:
 		if (ratp_command)
 			return 0;
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
index f485f7d8a..75aabed55 100644
--- a/include/ratp_bb.h
+++ b/include/ratp_bb.h
@@ -1,6 +1,24 @@
 #ifndef __RATP_BB_H
 #define __RATP_BB_H

+#include <linux/stringify.h>
+
+#define BB_RATP_TYPE_COMMAND		1
+#define BB_RATP_TYPE_COMMAND_RETURN	2
+#define BB_RATP_TYPE_CONSOLEMSG		3
+#define BB_RATP_TYPE_PING		4
+#define BB_RATP_TYPE_PONG		5
+#define BB_RATP_TYPE_GETENV		6
+#define BB_RATP_TYPE_GETENV_RETURN	7
+#define BB_RATP_TYPE_FS			8
+#define BB_RATP_TYPE_FS_RETURN		9
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
+	uint16_t          request_id;
+	uint16_t          response_id;
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
+extern const struct ratp_command __barebox_ratp_cmd_##_name;				\
+const struct ratp_command __barebox_ratp_cmd_##_name					\
+	__attribute__ ((unused,section (".barebox_ratp_cmd_" __stringify(_name)))) = {
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
