Delivery-date: Mon, 25 Nov 2024 16:32:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb4u-000G2k-2h
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:32:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb4u-0003yQ-37
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:32:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=91alBDNkuXtk0SpRTXdIVJDqfpCWH94q+3eoCcHEzRc=; b=UTbIlvNd+dpIb7OoxRhO5wLevv
	WUZ60LwJJ4cMFkZg5pIbI6YV6Q6t7hWqsfD2d6PBwHrhhUUw9VBJMG1QCPY2xp7wLdYEL5z0a9Qo1
	SbHZuH392llANvFN61OOsn4ZPX94l3SDBtoQh8by87KLF6fnweOy7ew9X5mXHTxYOhAsDD2MVVPE/
	Z56xqxl2v2nkwht+cRTcCEq6zO+jK71Oo/lT21eVbrnsfI5VZQpYyV5VrNUw+tmfh5IjLkgVD+VCR
	qQLCpIH+9YTzBpNghddJUmk7rj6VlCQQ2CPjnMiNO/NKCRD5v6zjUTOpBShhIcrNVGUlC5T/Lzr2K
	SfBDo56A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb4S-00000008UwW-047v;
	Mon, 25 Nov 2024 15:32:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb1m-00000008UGa-2IE5
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:29:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1l-00036J-7O; Mon, 25 Nov 2024 16:29:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1k-0006QL-0o;
	Mon, 25 Nov 2024 16:29:29 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1k-002dWd-10;
	Mon, 25 Nov 2024 16:29:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:29:22 +0100
Message-Id: <20241125152927.546493-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125152927.546493-1-a.fatoum@pengutronix.de>
References: <20241125152927.546493-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_072930_741713_9167819B 
X-CRM114-Status: GOOD (  14.07  )
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
Subject: [PATCH 2/7] lds: implement is_barebox_rodata
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux defines is_kernel_rodata(), which is mainly used to implement
kstrdup_const/kfree_const, which are useful to avoid duplication of
strings that already have static storage duration.

Implement the same for barebox on all architectures.

Note that this is of limited use on sandbox, because we don't define all
of the linker script ourselves, but this only means that we will have
some unneeded allocations there, which is a non-issue.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib/pbl.lds.S                   |  4 +++-
 arch/arm/lib32/barebox.lds.S             |  4 +++-
 arch/arm/lib64/barebox.lds.S             |  4 +++-
 arch/kvx/cpu/barebox.lds.S               |  5 ++++-
 arch/mips/lib/barebox.lds.S              |  4 +++-
 arch/mips/lib/pbl.lds.S                  |  4 +++-
 arch/mips/pbl/zbarebox.lds.S             |  4 +++-
 arch/openrisc/cpu/barebox.lds.S          |  4 +++-
 arch/powerpc/boards/pcm030/barebox.lds.S |  2 ++
 arch/powerpc/mach-mpc85xx/barebox.lds.S  |  2 ++
 arch/riscv/lib/barebox.lds.S             |  4 +++-
 arch/riscv/lib/pbl.lds.S                 |  4 +++-
 arch/sandbox/board/barebox.lds.S         |  2 ++
 arch/x86/mach-efi/elf_ia32_efi.lds.S     |  2 ++
 arch/x86/mach-efi/elf_x86_64_efi.lds.S   |  2 ++
 include/asm-generic/sections.h           | 18 ++++++++++++++++++
 16 files changed, 59 insertions(+), 10 deletions(-)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index f097ac1fdd46..dad37c9e9bca 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -62,6 +62,7 @@ SECTIONS
 	BAREBOX_PBL_SIZE
 
 	. = ALIGN(ASM_SZPTR);
+	__start_rodata = .;
 	__pbl_board_stack_top = .;
 	.rodata.pbl_board_stack_top : {
 		*(.pbl_board_stack_top_*)
@@ -76,7 +77,8 @@ SECTIONS
 	.barebox_imd : { BAREBOX_IMD }
 
 	. = ALIGN(PBL_SEGMENT_ALIGN);
-	_etext = .;			/* End of text and rodata section */
+	__end_rodata = .;
+	_etext = .;
 	_sdata = .;
 
 	. = ALIGN(4);
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 97f41f72fef7..a52556a35696 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -31,6 +31,7 @@ SECTIONS
 	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4);
+	__start_rodata = .;
 	.rodata : {
 		*(.rodata*)
 		RO_DATA_SECTION
@@ -52,7 +53,8 @@ SECTIONS
 		__stop_unwind_tab = .;
 	}
 #endif
-	_etext = .;			/* End of text and rodata section */
+	__end_rodata = .;
+	_etext = .;
 	_sdata = .;
 
 	. = ALIGN(4);
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index 1d0cc6dc543e..50e4b6f42cb8 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -29,12 +29,14 @@ SECTIONS
 	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4);
+	__start_rodata = .;
 	.rodata : {
 		*(.rodata*)
 		RO_DATA_SECTION
 	}
 
-	_etext = .;			/* End of text and rodata section */
+	__end_rodata = .;
+	_etext = .;
 	_sdata = .;
 
 	. = ALIGN(4);
diff --git a/arch/kvx/cpu/barebox.lds.S b/arch/kvx/cpu/barebox.lds.S
index 1edaeae18824..b05c1f36e595 100644
--- a/arch/kvx/cpu/barebox.lds.S
+++ b/arch/kvx/cpu/barebox.lds.S
@@ -45,13 +45,16 @@ SECTIONS
 		KEEP(*(.exception.syscall));
 	}
 
+	__start_rodata = .;
+
 	.rodata ALIGN(8) : {
 		*(.rodata*)
 		. = ALIGN(8);
 		RO_DATA_SECTION
 	}
 
-	_etext = .; /* End of text and rodata section */
+	__end_rodata = .;
+	_etext = .;
 
 	.data ALIGN(4): {
 		sdata = .;
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index 0720f9295dff..bbb9b114993d 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -29,12 +29,14 @@ SECTIONS
 	PRE_IMAGE
 
 	. = ALIGN(4);
+	__start_rodata = .;
 	.rodata : {
 		*(.rodata*)
 		RO_DATA_SECTION
 	}
 
-	_etext = .;			/* End of text and rodata section */
+	__end_rodata = .;
+	_etext = .;
 	_sdata = .;
 
 	. = ALIGN(4);
diff --git a/arch/mips/lib/pbl.lds.S b/arch/mips/lib/pbl.lds.S
index 4cf0398f33d1..cca980c35fdf 100644
--- a/arch/mips/lib/pbl.lds.S
+++ b/arch/mips/lib/pbl.lds.S
@@ -32,11 +32,13 @@ SECTIONS
 	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4);
+	__start_rodata = .;
 	.rodata : { *(.rodata*) }
 
 	.barebox_imd : { BAREBOX_IMD }
 
-	_etext = .;			/* End of text and rodata section */
+	__end_rodata = .;
+	_etext = .;
 
 	. = ALIGN(4);
 	.data : { *(.data*) }
diff --git a/arch/mips/pbl/zbarebox.lds.S b/arch/mips/pbl/zbarebox.lds.S
index e3114dfe2230..97d77229b6fb 100644
--- a/arch/mips/pbl/zbarebox.lds.S
+++ b/arch/mips/pbl/zbarebox.lds.S
@@ -29,11 +29,13 @@ SECTIONS
 	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4);
+	__start_rodata = .;
 	.rodata : { *(.rodata*) }
 
 	.barebox_imd : { BAREBOX_IMD }
 
-	_etext = .;			/* End of text and rodata section */
+	__end_rodata = .;
+	_etext = .;
 
 	. = ALIGN(4);
 	.data : { *(.data*) }
diff --git a/arch/openrisc/cpu/barebox.lds.S b/arch/openrisc/cpu/barebox.lds.S
index 3fae1af37594..26bb622edc27 100644
--- a/arch/openrisc/cpu/barebox.lds.S
+++ b/arch/openrisc/cpu/barebox.lds.S
@@ -46,6 +46,7 @@ SECTIONS
 	}  > ram
 
 	. = ALIGN(4);
+	__start_rodata = .;
 	.rodata : {
 		*(.rodata);
 		*(.rodata.*)
@@ -53,7 +54,8 @@ SECTIONS
 		RO_DATA_SECTION
 	} > ram
 
-	__etext = .; /* End of text and rodata section */
+	__end_rodata = .;
+	__etext = .;
 
 	. = ALIGN(4);
 	.data : {
diff --git a/arch/powerpc/boards/pcm030/barebox.lds.S b/arch/powerpc/boards/pcm030/barebox.lds.S
index 146b63fe8889..07c2a671a8a9 100644
--- a/arch/powerpc/boards/pcm030/barebox.lds.S
+++ b/arch/powerpc/boards/pcm030/barebox.lds.S
@@ -32,6 +32,7 @@ SECTIONS
     *(.text*)
     *(.got1*)
     . = ALIGN(16);
+    __start_rodata = .;
     *(.rodata*)
     *(.rodata1*)
     *(.rodata.str1.4)
@@ -70,6 +71,7 @@ SECTIONS
 
   /* Read-write section, merged into data segment: */
   . = (. + 0x0FFF) & 0xFFFFF000;
+  __end_rodata = .;
   _etext = .;
   PROVIDE (erotext = .);
   _sdata = .;
diff --git a/arch/powerpc/mach-mpc85xx/barebox.lds.S b/arch/powerpc/mach-mpc85xx/barebox.lds.S
index 6e348d4db363..5407ecc7e295 100644
--- a/arch/powerpc/mach-mpc85xx/barebox.lds.S
+++ b/arch/powerpc/mach-mpc85xx/barebox.lds.S
@@ -68,6 +68,7 @@ SECTIONS
     PROVIDE (etext = .);
     _sdata = .;
 
+    __start_rodata = .;
    .barebox_imd : { BAREBOX_IMD }
 
    .rodata    :
@@ -79,6 +80,7 @@ SECTIONS
   /* Read-write section, merged into data segment: */
   . = (. + 0x00FF) & 0xFFFFFF00;
 
+  __end_rodata = .;
   _erotext = .;
   PROVIDE (erotext = .);
   .reloc   :
diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index 101615ab052a..2d220e48142b 100644
--- a/arch/riscv/lib/barebox.lds.S
+++ b/arch/riscv/lib/barebox.lds.S
@@ -39,12 +39,14 @@ SECTIONS
 	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4);
+	__start_rodata = .;
 	.rodata : {
 		*(.rodata*)
 		RO_DATA_SECTION
 	}
 
-	_etext = .;			/* End of text and rodata section */
+	__end_rodata = .;
+	_etext = .;
 	_sdata = .;
 
 	. = ALIGN(4);
diff --git a/arch/riscv/lib/pbl.lds.S b/arch/riscv/lib/pbl.lds.S
index 0fe7dfda8eb4..3a37d01475b2 100644
--- a/arch/riscv/lib/pbl.lds.S
+++ b/arch/riscv/lib/pbl.lds.S
@@ -29,11 +29,13 @@ SECTIONS
 	BAREBOX_PBL_SIZE
 
 	. = ALIGN(4);
+	__start_rodata = .;
 	.rodata : { *(.rodata*) }
 
 	.barebox_imd : { BAREBOX_IMD }
 
-	_etext = .;			/* End of text and rodata section */
+	__end_rodata = .;
+	_etext = .;
 
 	.data : { *(.data*) }
 
diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
index 0102b9333174..60bd9a533ce6 100644
--- a/arch/sandbox/board/barebox.lds.S
+++ b/arch/sandbox/board/barebox.lds.S
@@ -5,9 +5,11 @@
 SECTIONS
 {
 	. = ALIGN(64);
+	__start_rodata = .;
 	.barebox_rodata () : {
 		RO_DATA_SECTION
 	}
+	__end_rodata = .;
 }
 
 INSERT BEFORE .data;
diff --git a/arch/x86/mach-efi/elf_ia32_efi.lds.S b/arch/x86/mach-efi/elf_ia32_efi.lds.S
index 4b1300724300..0a3b6ef947b9 100644
--- a/arch/x86/mach-efi/elf_ia32_efi.lds.S
+++ b/arch/x86/mach-efi/elf_ia32_efi.lds.S
@@ -36,8 +36,10 @@ SECTIONS
 	_sdata = .;
 
 	.data : {
+		__start_rodata = .;
 		*(.rodata*)
 		RO_DATA_SECTION
+		__end_rodata = .;
 		*(.data)
 		*(.data1)
 		*(.data.*)
diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
index cb6a31101eab..ed2ddd52482a 100644
--- a/arch/x86/mach-efi/elf_x86_64_efi.lds.S
+++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
@@ -39,8 +39,10 @@ SECTIONS
 	_sdata = .;
 
 	.data : {
+		__start_rodata = .;
 		*(.rodata*)
 		RO_DATA_SECTION
+		__end_rodata = .;
 		*(.got.plt)
 		*(.got)
 		*(.data*)
diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index 0b2ed5615bd6..35b0dd8cac1a 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -3,7 +3,10 @@
 #ifndef _ASM_GENERIC_SECTIONS_H_
 #define _ASM_GENERIC_SECTIONS_H_
 
+#include <linux/types.h>
+
 extern char _text[], _stext[], _etext[];
+extern char __start_rodata[], __end_rodata[];
 extern char __bss_start[], __bss_stop[];
 extern char _sdata[], _edata[];
 extern char __bare_init_start[], __bare_init_end[];
@@ -21,4 +24,19 @@ extern char __ctors_start[], __ctors_end[];
 #define barebox_image_size	(__image_end - __image_start)
 #define barebox_bare_init_size	(unsigned int)&_barebox_bare_init_size
 #define barebox_pbl_size	(__piggydata_start - __image_start)
+
+/**
+ * is_barebox_rodata - checks if the pointer address is located in the
+ *                    .rodata section
+ *
+ * @addr: address to check
+ *
+ * Returns: true if the address is located in .rodata, false otherwise.
+ */
+static inline bool is_barebox_rodata(unsigned long addr)
+{
+	return addr >= (unsigned long)__start_rodata &&
+	       addr < (unsigned long)__end_rodata;
+}
+
 #endif /* _ASM_GENERIC_SECTIONS_H_ */
-- 
2.39.5



