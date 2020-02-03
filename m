Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyVcO-0001HL-3Y
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 06:54:02 +0000
Received: by mail-lj1-x242.google.com with SMTP id q8so13382854ljb.2
 for <barebox@lists.infradead.org>; Sun, 02 Feb 2020 22:53:55 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  3 Feb 2020 09:53:41 +0300
Message-Id: <20200203065341.25249-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] RISC-V: unbreak built-in dtb
To: barebox@lists.infradead.org

The commit c5d38e92010174 ("lds: Add and use RO_DATA_SECTION macro")
consolidates all RO sections link script declaration in the single
RO_DATA_SECTION macro. So all all individual RO section declarations
have to be removed from per-arch linker scripts.

Alas the BAREBOX_CLK_TABLE and the BAREBOX_DTB link script sections
were not removed from RISC-V linker script making these sections
declared twice. As a result incorrect __clk_of_table_start and
__dtb_start addresses are passed to the barebox code therefore
the RISC-V barebox is completely unusable.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/lib/barebox.lds.S | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index 5149f8ce28..342769890b 100644
--- a/arch/riscv/lib/barebox.lds.S
+++ b/arch/riscv/lib/barebox.lds.S
@@ -48,10 +48,6 @@ SECTIONS
 
 	.rela.dyn : { *(.rela*) }
 
-	.oftables : { BAREBOX_CLK_TABLE }
-
-	.dtb : { BAREBOX_DTB }
-
 	_edata = .;
 	. = ALIGN(8);
 	__bss_start = .;
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
