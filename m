Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cry5W-00054Z-3B
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 02:39:30 +0000
Received: from player758.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 2E87FB97D6
 for <barebox@lists.infradead.org>; Sun, 26 Mar 2017 04:38:53 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 26 Mar 2017 04:45:02 +0200
Message-Id: <1490496304-30850-11-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170325083155.GA14076@mail.ovh.net>
 <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 11/13] efi: fix lds for secure boot support
To: barebox@lists.infradead.org

everythink need to be aligned to 4096

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/x86/mach-efi/elf_ia32_efi.lds.S         | 10 +++++++---
 arch/x86/mach-efi/elf_x86_64_efi.lds.S       | 10 ++++++----
 arch/x86/mach-efi/include/mach/barebox.lds.h | 14 +++++++++++++-
 include/asm-generic/barebox.lds.h            |  8 +++++---
 4 files changed, 31 insertions(+), 11 deletions(-)

diff --git a/arch/x86/mach-efi/elf_ia32_efi.lds.S b/arch/x86/mach-efi/elf_ia32_efi.lds.S
index 69f43f554..6d9cb973c 100644
--- a/arch/x86/mach-efi/elf_ia32_efi.lds.S
+++ b/arch/x86/mach-efi/elf_ia32_efi.lds.S
@@ -50,22 +50,23 @@ SECTIONS
 		*(COMMON)
 	}
 
-	. = ALIGN(64);
+	. = ALIGN(4096);
 
 	__barebox_initcalls_start = .;
 	__barebox_initcalls : { INITCALLS }
 	__barebox_initcalls_end = .;
+	. = ALIGN(4096);
 
 	__barebox_exitcalls_start = .;
 	__barebox_exitcalls : { EXITCALLS }
 	__barebox_exitcalls_end = .;
 
-	. = ALIGN(64);
+	. = ALIGN(4096);
 	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
 	__barebox_magicvar_end = .;
 
-	. = ALIGN(64);
+	. = ALIGN(4096);
 	__barebox_cmd_start = .;
 	__barebox_cmd : { BAREBOX_CMDS }
 	__barebox_cmd_end = .;
@@ -76,6 +77,9 @@ SECTIONS
 	.rel : {
 		*(.rel.data)
 		*(.rel.data.*)
+		*(.rela.barebox*)
+		*(.rela.initcall*)
+		*(.rela.exitcall*)
 		*(.rel.got)
 		*(.rel.stab)
 		*(.data.rel.ro.local)
diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
index 93d34d17a..8216d1d70 100644
--- a/arch/x86/mach-efi/elf_x86_64_efi.lds.S
+++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
@@ -23,6 +23,7 @@ SECTIONS
 		*(.text)
 		*(.text.*)
 		*(.gnu.linkonce.t.*)
+		. = ALIGN(16);
 	}
 
 	_etext = .;
@@ -33,8 +34,8 @@ SECTIONS
 		*(.reloc)
 	}
 
-	. = ALIGN(4096);
 	_sdata = .;
+	. = ALIGN(4096);
 
 	.data : {
 		*(.rodata*)
@@ -52,22 +53,23 @@ SECTIONS
 		*(.rel.local)
 	}
 
-	. = ALIGN(64);
+	. = ALIGN(4096);
 
 	__barebox_initcalls_start = .;
 	__barebox_initcalls : { INITCALLS }
 	__barebox_initcalls_end = .;
+	. = ALIGN(4096);
 
 	__barebox_exitcalls_start = .;
 	__barebox_exitcalls : { EXITCALLS }
 	__barebox_exitcalls_end = .;
 
-	. = ALIGN(64);
+	. = ALIGN(4096);
 	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
 	__barebox_magicvar_end = .;
 
-	. = ALIGN(64);
+	. = ALIGN(4096);
 	__barebox_cmd_start = .;
 	__barebox_cmd : { BAREBOX_CMDS }
 	__barebox_cmd_end = .;
diff --git a/arch/x86/mach-efi/include/mach/barebox.lds.h b/arch/x86/mach-efi/include/mach/barebox.lds.h
index 40a8c178f..e7a3bb9cd 100644
--- a/arch/x86/mach-efi/include/mach/barebox.lds.h
+++ b/arch/x86/mach-efi/include/mach/barebox.lds.h
@@ -1 +1,13 @@
-/* empty */
+/*
+ * Copyright (C) 2017 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPL v2
+ */
+
+#ifndef __EFI_MACH_BAREBOX_LDS_H__
+#define __EFI_MACH_BAREBOX_LDS_H__
+
+/* For secure boot we need all the section to be 4096 alligned */
+#define STRUCT_ALIGNMENT 4096
+
+#endif /* __EFI_MACH_BAREBOX_LDS_H__ */
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index c8a919b92..6c37751b3 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -3,15 +3,17 @@
  * Align to a 32 byte boundary equal to the
  * alignment gcc 4.5 uses for a struct
  */
-#define STRUCT_ALIGNMENT 32
-#define STRUCT_ALIGN() . = ALIGN(STRUCT_ALIGNMENT)
-
 #if defined CONFIG_X86 || \
 	defined CONFIG_ARCH_EP93XX || \
 	defined CONFIG_ARCH_ZYNQ
 #include <mach/barebox.lds.h>
 #endif
 
+#ifndef STRUCT_ALIGNMENT
+#define STRUCT_ALIGNMENT 32
+#endif
+#define STRUCT_ALIGN() . = ALIGN(STRUCT_ALIGNMENT)
+
 #ifndef PRE_IMAGE
 #define PRE_IMAGE
 #endif
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
