Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfsI-0005Km-02
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 14:45:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  2 Oct 2019 16:44:27 +0200
Message-Id: <20191002144430.14946-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] lds: create and use BAREBOX_PCI_FIXUP macro
To: Barebox List <barebox@lists.infradead.org>

No need to repeat the pci fixup sections in each linker script. Add a
define for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/barebox.lds.S      | 15 +--------------
 arch/arm/lib64/barebox.lds.S      | 15 +--------------
 arch/mips/lib/barebox.lds.S       | 14 +-------------
 include/asm-generic/barebox.lds.h | 15 +++++++++++++++
 4 files changed, 18 insertions(+), 41 deletions(-)

diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 9ffcffd66d..3a19d8faab 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -88,21 +88,8 @@ SECTIONS
 	.barebox_initcalls : { BAREBOX_INITCALLS }
 	.barebox_exitcalls : { BAREBOX_EXITCALLS }
 	__usymtab : { BAREBOX_SYMS }
-
-#ifdef CONFIG_PCI
-	__start_pci_fixups_early = .;
-	.pci_fixup_early : { KEEP(*(.pci_fixup_early)) }
-	__end_pci_fixups_early = .;
-	__start_pci_fixups_header = .;
-	.pci_fixup_header : { KEEP(*(.pci_fixup_header)) }
-	__end_pci_fixups_header = .;
-	__start_pci_fixups_enable = .;
-	.pci_fixup_enable : { KEEP(*(.pci_fixup_enable)) }
-	__end_pci_fixups_enable = .;
-#endif
-
+	.pci_fixup : { BAREBOX_PCI_FIXUP }
 	.oftables : { BAREBOX_CLK_TABLE }
-
 	.dtb : { BAREBOX_DTB }
 
 	.rel_dyn_start : { *(.__rel_dyn_start) }
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index 1cc00eca11..3ad9d5f132 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -70,21 +70,8 @@ SECTIONS
 	.barebox_initcalls : { BAREBOX_INITCALLS }
 	.barebox_exitcalls : { BAREBOX_EXITCALLS }
 	__usymtab : { BAREBOX_SYMS }
-
-#ifdef CONFIG_PCI
-	__start_pci_fixups_early = .;
-	.pci_fixup_early : { KEEP(*(.pci_fixup_early)) }
-	__end_pci_fixups_early = .;
-	__start_pci_fixups_header = .;
-	.pci_fixup_header : { KEEP(*(.pci_fixup_header)) }
-	__end_pci_fixups_header = .;
-	__start_pci_fixups_enable = .;
-	.pci_fixup_enable : { KEEP(*(.pci_fixup_enable)) }
-	__end_pci_fixups_enable = .;
-#endif
-
+	.pci_fixup : { BAREBOX_PCI_FIXUP }
 	.oftables : { BAREBOX_CLK_TABLE }
-
 	.dtb : { BAREBOX_DTB }
 
 	.rel_dyn_start : { *(.__rel_dyn_start) }
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index 86a469a042..f9a0b44937 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -47,20 +47,8 @@ SECTIONS
 	.barebox_initcalls : { BAREBOX_INITCALLS }
 	.barebox_exitcalls : { BAREBOX_EXITCALLS }
 	__usymtab : { BAREBOX_SYMS }
-
-#ifdef CONFIG_PCI
-	__start_pci_fixups_early = .;
-	.pci_fixup_early : { KEEP(*(.pci_fixup_early)) }
-	__end_pci_fixups_early = .;
-	__start_pci_fixups_header = .;
-	.pci_fixup_header : { KEEP(*(.pci_fixup_header)) }
-	__end_pci_fixups_header = .;
-	__start_pci_fixups_enable = .;
-	.pci_fixup_enable : { KEEP(*(.pci_fixup_enable)) }
-	__end_pci_fixups_enable = .;
-#endif
+	.pci_fixup : { BAREBOX_PCI_FIXUP }
 	.oftables : { BAREBOX_CLK_TABLE }
-
 	.dtb : { BAREBOX_DTB }
 
 	_edata = .;
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 0784048eb6..2f8786356e 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -85,6 +85,21 @@
 	*(.barebox_imd_0*)			\
 	KEEP(*(.barebox_imd_end))
 
+#ifdef CONFIG_PCI
+#define BAREBOX_PCI_FIXUP			\
+	__start_pci_fixups_early = .;		\
+	KEEP(*(.pci_fixup_early))		\
+	__end_pci_fixups_early = .;		\
+	__start_pci_fixups_header = .;		\
+	KEEP(*(.pci_fixup_header))		\
+	__end_pci_fixups_header = .;		\
+	__start_pci_fixups_enable = .;		\
+	KEEP(*(.pci_fixup_enable))		\
+	__end_pci_fixups_enable = .;
+#else
+#define BAREBOX_PCI_FIXUP
+#endif
+
 #if defined(CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE) && \
 CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE < CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
 #define MAX_BARE_INIT_SIZE CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
