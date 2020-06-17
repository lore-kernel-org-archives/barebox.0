Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlOz8-00025x-5h
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 03:43:35 +0000
Received: by mail-qk1-x744.google.com with SMTP id f18so837710qkh.1
 for <barebox@lists.infradead.org>; Tue, 16 Jun 2020 20:43:34 -0700 (PDT)
From: David Dgien <dgienda125@gmail.com>
Date: Tue, 16 Jun 2020 23:44:00 -0400
Message-Id: <20200617034404.5904-5-dgienda125@gmail.com>
In-Reply-To: <20200617034404.5904-1-dgienda125@gmail.com>
References: <20200617034404.5904-1-dgienda125@gmail.com>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC PATCH 4/8] module: Fix module command registration
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>

Commit 1e4a948673d7 ("command: Use array of pointers to commands")
updated the command linker sections to contain an array of pointers to
the command structs, rather than the command structs themselves.
However, the load_module function was not updated to account for the
change to the linker section, so fix that here.

Additionally, commit 22bdecc9c591 ("lds: Move start/end address
variables into defines") moved the _start and _end symbols out of the
linker script and into the section macro defines, causing them to show
up in the module symbol table as well, so we take can advantage of those
to find the array of pointers.

Fixes: 1e4a948673d7 ("command: Use array of pointers to commands")
Signed-off-by: David Dgien <dgienda125@gmail.com>
---
 common/module.c | 43 +++++++++++++++++++++++++++++--------------
 1 file changed, 29 insertions(+), 14 deletions(-)

diff --git a/common/module.c b/common/module.c
index 5ace544e0..b08df1199 100644
--- a/common/module.c
+++ b/common/module.c
@@ -176,6 +176,34 @@ static void layout_sections( struct module *mod,
 	debug("core_size: %ld\n", mod->core_size);
 }
 
+static void register_module_cmds(Elf32_Shdr *sechdrs, const char *strtab, unsigned int symindex)
+{
+	Elf32_Sym *sym;
+	unsigned int numsyms;
+	unsigned int i;
+	struct command * const *cmd_start = NULL;
+	struct command * const *cmd_end = NULL;
+	struct command * const *cmd;
+
+	numsyms = sechdrs[symindex].sh_size / sizeof(Elf32_Sym);
+	sym = (void *)sechdrs[symindex].sh_addr;
+
+	for (i = 0; i < numsyms; i++) {
+		if (strcmp(strtab + sym[i].st_name, MODULE_SYMBOL_PREFIX "__barebox_cmd_start") == 0)
+			cmd_start = (struct command * const *)sym[i].st_value;
+
+		if (strcmp(strtab + sym[i].st_name, MODULE_SYMBOL_PREFIX "__barebox_cmd_end") == 0)
+			cmd_end = (struct command * const *)sym[i].st_value;
+	}
+
+	if (cmd_start && cmd_end) {
+		debug("found __barebox_cmd_start at 0x%08x\n", (uint32_t)cmd_start);
+		for (cmd = cmd_start; cmd != cmd_end; cmd++) {
+			register_command(*cmd);
+		}
+	}
+}
+
 LIST_HEAD(module_list);
 
 struct module * load_module(void *mod_image, unsigned long len)
@@ -183,8 +211,6 @@ struct module * load_module(void *mod_image, unsigned long len)
 	struct module *module = NULL;
 	Elf32_Ehdr *ehdr;		/* Elf header structure pointer     */
 	Elf32_Shdr *sechdrs;		/* Section header structure pointer */
-	Elf32_Sym *sym;
-	unsigned int numsyms;
 	char *strtab = 0;		/* String table pointer             */
 	int i;				/* Loop counter                     */
 	unsigned int strindex = 0;
@@ -193,7 +219,6 @@ struct module * load_module(void *mod_image, unsigned long len)
 	char *secstrings;
 	void *ptr = NULL;
 	int err;
-	int cmdindex;
 
 	if (len < sizeof(*ehdr))
 		return NULL;
@@ -285,17 +310,7 @@ struct module * load_module(void *mod_image, unsigned long len)
 			apply_relocate_add(sechdrs, strtab, symindex, i, module);
 	}
 
-	numsyms = sechdrs[symindex].sh_size / sizeof(Elf32_Sym);
-	sym = (void *)sechdrs[symindex].sh_addr;
-
-	cmdindex = find_sec(ehdr, sechdrs, secstrings, ".barebox_cmd");
-	if (cmdindex) {
-		struct command *cmd =(struct command *)sechdrs[cmdindex].sh_addr;
-		for (i = 0; i < sechdrs[cmdindex].sh_size / sizeof(struct command); i++) {
-			register_command(cmd);
-			cmd++;
-		}
-	}
+	register_module_cmds(sechdrs, strtab, symindex);
 
 	/* Module has been moved */
 	module = (void *)sechdrs[modindex].sh_addr;
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
