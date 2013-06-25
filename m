Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrPRA-0000I2-06
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 09:21:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Jun 2013 11:20:42 +0200
Message-Id: <1372152052-5463-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
References: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/12] ARM: pbl: move linker script to lib
To: barebox@lists.infradead.org

Since the pbl linker script can be reused by the upcoming multi image
build process move it to a common place. Also remove ENTRY() from the
linker script and instead add the -e option to the linker. This makes
the entrypoint configurable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/pbl.lds.S      | 91 ++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/pbl/Makefile       |  5 ++-
 arch/arm/pbl/zbarebox.lds.S | 92 ---------------------------------------------
 3 files changed, 95 insertions(+), 93 deletions(-)
 create mode 100644 arch/arm/lib/pbl.lds.S
 delete mode 100644 arch/arm/pbl/zbarebox.lds.S

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
new file mode 100644
index 0000000..d3ec2f8
--- /dev/null
+++ b/arch/arm/lib/pbl.lds.S
@@ -0,0 +1,91 @@
+/*
+ * (C) Copyright 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+#include <sizes.h>
+#include <asm-generic/barebox.lds.h>
+#include <asm-generic/memory_layout.h>
+
+OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
+OUTPUT_ARCH(arm)
+SECTIONS
+{
+#ifdef CONFIG_PBL_RELOCATABLE
+	. = 0x0;
+#else
+	. = TEXT_BASE - SZ_2M;
+#endif
+
+	PRE_IMAGE
+
+	. = ALIGN(4);
+	.text      :
+	{
+		_stext = .;
+		_text = .;
+		*(.text_head_entry*)
+		__bare_init_start = .;
+		*(.text_bare_init*)
+		__bare_init_end = .;
+		*(.text*)
+	}
+
+	/* Discard unwind if enable in barebox */
+	/DISCARD/ : { *(.ARM.ex*) }
+
+	BAREBOX_BARE_INIT_SIZE
+
+	. = ALIGN(4);
+	.rodata : { *(.rodata*) }
+
+	_etext = .;			/* End of text and rodata section */
+
+	. = ALIGN(4);
+	.data : { *(.data*) }
+
+	.rel.dyn : {
+		__rel_dyn_start = .;
+		*(.rel*)
+		__rel_dyn_end = .;
+	}
+
+	.dynsym : {
+		__dynsym_start = .;
+		*(.dynsym)
+		__dynsym_end = .;
+	}
+
+	. = ALIGN(4);
+	__bss_start = .;
+	.bss : { *(.bss*) }
+	__bss_stop = .;
+	_end = .;
+
+	. = ALIGN(4);
+	__piggydata_start = .;
+	.piggydata : {
+		*(.piggydata)
+	}
+	__piggydata_end = .;
+
+	_barebox_image_size = __piggydata_end - (TEXT_BASE - SZ_2M);
+	_barebox_pbl_size = __bss_start - (TEXT_BASE - SZ_2M);
+}
diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index 3f50f77..8923a70 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -29,9 +29,12 @@ endif
 zbarebox-common := $(barebox-pbl-common) $(obj)/$(piggy_o)
 zbarebox-lds := $(obj)/zbarebox.lds
 
+$(zbarebox-lds): $(obj)/../lib/pbl.lds.S FORCE
+	$(call if_changed_dep,cpp_lds_S)
+
 quiet_cmd_zbarebox__ ?= LD      $@
       cmd_zbarebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_zbarebox) -o $@ \
-      -T $(zbarebox-lds)                                           \
+      -e pbl_start -T $(zbarebox-lds)                              \
       --start-group $(zbarebox-common) --end-group                 \
       $(filter-out $(zbarebox-lds) $(zbarebox-common) FORCE ,$^)
 
diff --git a/arch/arm/pbl/zbarebox.lds.S b/arch/arm/pbl/zbarebox.lds.S
deleted file mode 100644
index 6b23bbe..0000000
--- a/arch/arm/pbl/zbarebox.lds.S
+++ /dev/null
@@ -1,92 +0,0 @@
-/*
- * (C) Copyright 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- *
- */
-#include <sizes.h>
-#include <asm-generic/barebox.lds.h>
-#include <asm-generic/memory_layout.h>
-
-OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
-OUTPUT_ARCH(arm)
-ENTRY(pbl_start)
-SECTIONS
-{
-#ifdef CONFIG_PBL_RELOCATABLE
-	. = 0x0;
-#else
-	. = TEXT_BASE - SZ_2M;
-#endif
-
-	PRE_IMAGE
-
-	. = ALIGN(4);
-	.text      :
-	{
-		_stext = .;
-		_text = .;
-		*(.text_head_entry*)
-		__bare_init_start = .;
-		*(.text_bare_init*)
-		__bare_init_end = .;
-		*(.text*)
-	}
-
-	/* Discard unwind if enable in barebox */
-	/DISCARD/ : { *(.ARM.ex*) }
-
-	BAREBOX_BARE_INIT_SIZE
-
-	. = ALIGN(4);
-	.rodata : { *(.rodata*) }
-
-	_etext = .;			/* End of text and rodata section */
-
-	. = ALIGN(4);
-	.data : { *(.data*) }
-
-	.rel.dyn : {
-		__rel_dyn_start = .;
-		*(.rel*)
-		__rel_dyn_end = .;
-	}
-
-	.dynsym : {
-		__dynsym_start = .;
-		*(.dynsym)
-		__dynsym_end = .;
-	}
-
-	. = ALIGN(4);
-	__bss_start = .;
-	.bss : { *(.bss*) }
-	__bss_stop = .;
-	_end = .;
-
-	. = ALIGN(4);
-	__piggydata_start = .;
-	.piggydata : {
-		*(.piggydata)
-	}
-	__piggydata_end = .;
-
-	_barebox_image_size = __piggydata_end - (TEXT_BASE - SZ_2M);
-	_barebox_pbl_size = __bss_start - (TEXT_BASE - SZ_2M);
-}
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
