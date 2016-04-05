Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1anLUp-0008Mq-2A
 for barebox@lists.infradead.org; Tue, 05 Apr 2016 07:33:55 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Tue,  5 Apr 2016 09:33:25 +0200
Message-Id: <1459841605-8850-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH] efi: let the generic relocate code handle all relocations
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Part of the barebox code and variables are put in separate sections
(.barebox* and .initcall*). When this code is compiled as position
independent code then the compiler creates corresponding .rela.barebox* and
.rela.initcall* sections with the relocation table entries.
These sections don't match the .rela.data* wildcard in the linker script.
As a result, they are not added to the .rela section during linking but are
added individually after it instead. And when the EFI binary is created
from the ELF binary, these sections are not copied.
This has two side effects:

1. The corresponding relocations are not handled by the generic relocation
code. 'fixup_tables()' was added to do these relocations manually.

2. In the DYNAMIC section, the RELASZ entry contains the total size of
relocations in bytes. This includes the .rela.barebox* and .rela.initcall*
sections. This value is not modified when the EFI binary is created. So the
value is too large.
The generic relocation code in _relocate() used this value when iterating
over all relocation entries. With the wrong RELASZ value it iterates beyond
the end of the .rela section into uninitialized memory. After power-on this
memory is zero and the relocation code interprets this as 'nothing to do',
so there is no visible effect. After a soft reset, random data in that area
may produce a seemingly valid relocation entry, a random address is
modified and barebox crashes.

This patch adds the .rela.barebox* and .rela.initcall* sections to the
normal .rela section. The RELASZ now contains the correct size and the
generic relocation code works correctly. 'fixup_tables()' must be removed
at the same time to avoid relocating these entries twice.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/efi/efi/efi.c                | 42 ---------------------------------------
 arch/efi/lib/elf_x86_64_efi.lds.S |  2 ++
 2 files changed, 2 insertions(+), 42 deletions(-)

diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
index ed449dc8db86..9c270a597ee5 100644
--- a/arch/efi/efi/efi.c
+++ b/arch/efi/efi/efi.c
@@ -293,46 +293,6 @@ extern char image_base[];
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
 
-/*
- * We have a position independent binary generated with -fpic. This function
- * fixes the linker generated tables.
- */
-static void fixup_tables(void)
-{
-	initcall_t *initcall;
-	unsigned long offset = (unsigned long)image_base;
-	struct command *cmdtp;
-	struct magicvar *m;
-
-	for (initcall = __barebox_initcalls_start;
-			initcall < __barebox_initcalls_end; initcall++)
-		*initcall += offset;
-
-	for (cmdtp = &__barebox_cmd_start;
-			cmdtp != &__barebox_cmd_end;
-			cmdtp++) {
-		cmdtp->name += offset;
-		cmdtp->cmd += offset;
-		if (cmdtp->complete)
-			cmdtp->complete += offset;
-		if (cmdtp->desc)
-			cmdtp->desc += offset;
-		if (cmdtp->help)
-			cmdtp->help += offset;
-		if (cmdtp->opts)
-			cmdtp->opts += offset;
-		if (cmdtp->aliases)
-			cmdtp->aliases = (void *)cmdtp->aliases + offset;
-	}
-
-	for (m = &__barebox_magicvar_start;
-			m != &__barebox_magicvar_end;
-			m++) {
-		m->name += offset;
-		m->description += offset;
-	}
-}
-
 static int efi_init(void)
 {
 	char *env;
@@ -373,8 +333,6 @@ efi_status_t efi_main(efi_handle_t image, efi_system_table_t *sys_table)
 		BS->handle_protocol(efi_loaded_image->device_handle,
 				&efi_device_path_protocol_guid, (void **)&efi_device_path);
 
-	fixup_tables();
-
 	mem = 0x3fffffff;
 	for (memsize = SZ_256M; memsize >= SZ_8M; memsize /= 2) {
 		efiret  = BS->allocate_pages(EFI_ALLOCATE_MAX_ADDRESS,
diff --git a/arch/efi/lib/elf_x86_64_efi.lds.S b/arch/efi/lib/elf_x86_64_efi.lds.S
index 9aa4e8d8299b..e1bc2120fabc 100644
--- a/arch/efi/lib/elf_x86_64_efi.lds.S
+++ b/arch/efi/lib/elf_x86_64_efi.lds.S
@@ -78,6 +78,8 @@ SECTIONS
 
 	.rela : {
 		*(.rela.data*)
+		*(.rela.barebox*)
+		*(.rela.initcall*)
 		*(.rela.got)
 		*(.rela.stab)
 	}
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
