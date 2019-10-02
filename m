Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfrl-0004YC-M2
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 14:44:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  2 Oct 2019 16:44:24 +0200
Message-Id: <20191002144430.14946-2-s.hauer@pengutronix.de>
In-Reply-To: <20191002144430.14946-1-s.hauer@pengutronix.de>
References: <20191002144430.14946-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] barebox.lds: Remove unnecessary braces
To: Barebox List <barebox@lists.infradead.org>

The BAREBOX_CLK_TABLE and BAREBOX_DTB macros are defines that do not
take a parameter, so we can remove the braces.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/barebox.lds.S      | 4 ++--
 arch/arm/lib64/barebox.lds.S      | 4 ++--
 arch/mips/lib/barebox.lds.S       | 4 ++--
 arch/openrisc/cpu/barebox.lds.S   | 2 +-
 arch/riscv/lib/barebox.lds.S      | 4 ++--
 include/asm-generic/barebox.lds.h | 4 ++--
 6 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 7230e5f31f..05a50afaad 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -118,9 +118,9 @@ SECTIONS
 	__end_pci_fixups_enable = .;
 #endif
 
-	.oftables : { BAREBOX_CLK_TABLE() }
+	.oftables : { BAREBOX_CLK_TABLE }
 
-	.dtb : { BAREBOX_DTB() }
+	.dtb : { BAREBOX_DTB }
 
 	.rel_dyn_start : { *(.__rel_dyn_start) }
 	.rel.dyn : { *(.rel*) }
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index 694bbcaaf1..5e9d94bee9 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -100,9 +100,9 @@ SECTIONS
 	__end_pci_fixups_enable = .;
 #endif
 
-	.oftables : { BAREBOX_CLK_TABLE() }
+	.oftables : { BAREBOX_CLK_TABLE }
 
-	.dtb : { BAREBOX_DTB() }
+	.dtb : { BAREBOX_DTB }
 
 	.rel_dyn_start : { *(.__rel_dyn_start) }
 	.rela.dyn : { *(.rela*) }
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index 58b0c5919d..7109d73372 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -76,9 +76,9 @@ SECTIONS
 	.pci_fixup_enable : { KEEP(*(.pci_fixup_enable)) }
 	__end_pci_fixups_enable = .;
 #endif
-	.oftables : { BAREBOX_CLK_TABLE() }
+	.oftables : { BAREBOX_CLK_TABLE }
 
-	.dtb : { BAREBOX_DTB() }
+	.dtb : { BAREBOX_DTB }
 
 	_edata = .;
 	.image_end : { *(.__image_end) }
diff --git a/arch/openrisc/cpu/barebox.lds.S b/arch/openrisc/cpu/barebox.lds.S
index c6807aec3a..ed9b90ed70 100644
--- a/arch/openrisc/cpu/barebox.lds.S
+++ b/arch/openrisc/cpu/barebox.lds.S
@@ -77,7 +77,7 @@ SECTIONS
 	__usymtab : { BAREBOX_SYMS } > ram
 	___usymtab_end = .;
 
-	.dtb : { BAREBOX_DTB() } > ram
+	.dtb : { BAREBOX_DTB } > ram
 
 	__etext = .; /* End of text and rodata section */
 
diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index ffb97f40e8..10c19f15de 100644
--- a/arch/riscv/lib/barebox.lds.S
+++ b/arch/riscv/lib/barebox.lds.S
@@ -66,9 +66,9 @@ SECTIONS
 
 	.rela.dyn : { *(.rela*) }
 
-	.oftables : { BAREBOX_CLK_TABLE() }
+	.oftables : { BAREBOX_CLK_TABLE }
 
-	.dtb : { BAREBOX_DTB() }
+	.dtb : { BAREBOX_DTB }
 
 	_edata = .;
 	. = ALIGN(8);
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 74d3ca4a96..c9fb8f47ae 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -50,14 +50,14 @@
 
 #define BAREBOX_MAGICVARS	KEEP(*(SORT_BY_NAME(.barebox_magicvar*)))
 
-#define BAREBOX_CLK_TABLE()			\
+#define BAREBOX_CLK_TABLE			\
 	. = ALIGN(8);				\
 	__clk_of_table_start = .;		\
 	KEEP(*(.__clk_of_table));		\
 	KEEP(*(.__clk_of_table_end));		\
 	__clk_of_table_end = .;
 
-#define BAREBOX_DTB()				\
+#define BAREBOX_DTB				\
 	. = ALIGN(8);				\
 	__dtb_start = .;			\
 	KEEP(*(.dtb.rodata.*));			\
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
