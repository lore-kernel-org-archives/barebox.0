Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j44y2-0005FS-1L
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 15:39:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Feb 2020 16:39:10 +0100
Message-Id: <20200218153917.15937-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] mips: remove bare_init
To: Barebox List <barebox@lists.infradead.org>

bare_init is only meaningful when we initially only have parts of
the barebox binary available. This is not the case on MIPS, so remove
the unnecessary __bare_init attributes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/mips/boot/main_entry.c  | 2 +-
 arch/mips/lib/barebox.lds.S  | 3 ---
 arch/mips/lib/pbl.lds.S      | 3 ---
 arch/mips/pbl/zbarebox.lds.S | 3 ---
 4 files changed, 1 insertion(+), 10 deletions(-)

diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
index 2c18bc81c3..dd8ab6a5b3 100644
--- a/arch/mips/boot/main_entry.c
+++ b/arch/mips/boot/main_entry.c
@@ -69,7 +69,7 @@ extern unsigned long mips_stack_top;
  *
  * @note The C environment isn't initialized yet
  */
-void __bare_init main_entry(void *fdt, u32 fdt_size)
+void main_entry(void *fdt, u32 fdt_size)
 {
 	unsigned long malloc_start, malloc_end;
 	/* clear the BSS first */
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index c954df41f3..5992946af5 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -20,9 +20,6 @@ SECTIONS
 		_stext = .;
 		_text = .;
 		*(.text_entry*)
-		__bare_init_start = .;
-		*(.text_bare_init*)
-		__bare_init_end = .;
 		*(.text*)
 	}
 	BAREBOX_BARE_INIT_SIZE
diff --git a/arch/mips/lib/pbl.lds.S b/arch/mips/lib/pbl.lds.S
index 75069b0c50..64cbd1f23f 100644
--- a/arch/mips/lib/pbl.lds.S
+++ b/arch/mips/lib/pbl.lds.S
@@ -23,9 +23,6 @@ SECTIONS
 		_stext = .;
 		_text = .;
 		*(.text_head_entry*)
-		__bare_init_start = .;
-		*(.text_bare_init*)
-		__bare_init_end = .;
 		*(.text*)
 	}
 
diff --git a/arch/mips/pbl/zbarebox.lds.S b/arch/mips/pbl/zbarebox.lds.S
index 04b5b8680f..dbea020d3f 100644
--- a/arch/mips/pbl/zbarebox.lds.S
+++ b/arch/mips/pbl/zbarebox.lds.S
@@ -20,9 +20,6 @@ SECTIONS
 		_stext = .;
 		_text = .;
 		*(.text_head_entry*)
-		__bare_init_start = .;
-		*(.text_bare_init*)
-		__bare_init_end = .;
 		*(.text*)
 	}
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
