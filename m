Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihrg6-00085t-OM
 for barebox@lists.infradead.org; Thu, 19 Dec 2019 09:01:04 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1ihrg5-0002ED-3f
 for barebox@lists.infradead.org; Thu, 19 Dec 2019 10:01:01 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 19 Dec 2019 10:01:01 +0100
Message-Id: <20191219090101.10030-1-l.stach@pengutronix.de>
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
Subject: [PATCH v2] lds: align RO_DATA_SECTION members
To: barebox@lists.infradead.org

From: Lucas Stach <dev@lynxeye.de>

When using the RO_DATA_SECTION macro, all the individual components
are put into the rodata section. As they now end up in the same
section there is no alignment enforced between them anymore. This
leads to unaligned start pointers when any of the components have a
unaligned size. Enforce some alignment between them.

Fixes: c5d38e920101 (lds: Add and use RO_DATA_SECTION macro)
Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
v2: use STRUCT_ALIGN
---
 include/asm-generic/barebox.lds.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index b6ca8eb2be27..bd6f6ee06ba5 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -17,6 +17,7 @@
 #endif
 
 #define BAREBOX_INITCALLS			\
+	STRUCT_ALIGN();				\
 	__barebox_initcalls_start = .;		\
 	KEEP(*(.initcall.0))			\
 	KEEP(*(.initcall.1))			\
@@ -36,6 +37,7 @@
 	__barebox_initcalls_end = .;
 
 #define BAREBOX_EXITCALLS			\
+	STRUCT_ALIGN();				\
 	__barebox_exitcalls_start = .;		\
 	KEEP(*(.exitcall.0))			\
 	KEEP(*(.exitcall.1))			\
@@ -47,37 +49,44 @@
 	__barebox_exitcalls_end = .;
 
 #define BAREBOX_CMDS				\
+	STRUCT_ALIGN();				\
 	__barebox_cmd_start = .;		\
 	KEEP(*(SORT_BY_NAME(.barebox_cmd*)))	\
 	__barebox_cmd_end = .;
 
 #define BAREBOX_RATP_CMDS			\
+	STRUCT_ALIGN();				\
 	__barebox_ratp_cmd_start = .;		\
 	KEEP(*(SORT_BY_NAME(.barebox_ratp_cmd*)))	\
 	__barebox_ratp_cmd_end = .;
 
 #define BAREBOX_SYMS				\
+	STRUCT_ALIGN();				\
 	__usymtab_start = .;			\
 	KEEP(*(__usymtab))			\
 	__usymtab_end = .;
 
 #define BAREBOX_MAGICVARS			\
+	STRUCT_ALIGN();				\
 	__barebox_magicvar_start = .;		\
 	KEEP(*(SORT_BY_NAME(.barebox_magicvar*)))	\
 	__barebox_magicvar_end = .;
 
 #define BAREBOX_CLK_TABLE			\
+	STRUCT_ALIGN();				\
 	__clk_of_table_start = .;		\
 	KEEP(*(.__clk_of_table));		\
 	KEEP(*(.__clk_of_table_end));		\
 	__clk_of_table_end = .;
 
 #define BAREBOX_DTB				\
+	STRUCT_ALIGN();				\
 	__dtb_start = .;			\
 	KEEP(*(.dtb.rodata.*));			\
 	__dtb_end = .;
 
 #define BAREBOX_IMD				\
+	STRUCT_ALIGN();				\
 	KEEP(*(.barebox_imd_start))		\
 	KEEP(*(.barebox_imd_1*))		\
 	*(.barebox_imd_0*)			\
@@ -85,6 +94,7 @@
 
 #ifdef CONFIG_PCI
 #define BAREBOX_PCI_FIXUP			\
+	STRUCT_ALIGN();				\
 	__start_pci_fixups_early = .;		\
 	KEEP(*(.pci_fixup_early))		\
 	__end_pci_fixups_early = .;		\
@@ -99,6 +109,7 @@
 #endif
 
 #define BAREBOX_RSA_KEYS			\
+	STRUCT_ALIGN();				\
 	__rsa_keys_start = .;			\
 	KEEP(*(.rsa_keys.rodata.*));		\
 	__rsa_keys_end = .;			\
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
