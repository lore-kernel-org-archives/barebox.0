Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhqzi-00048D-0W
 for barebox@lists.infradead.org; Mon, 01 Jul 2019 07:44:59 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon,  1 Jul 2019 09:44:53 +0200
Message-Id: <20190701074453.19760-1-o.rempel@pengutronix.de>
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
Subject: [PATCH] mips: reloc: remove outdated comment
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/lib/reloc.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
index 9756d61666..49bf2ef2b7 100644
--- a/arch/mips/lib/reloc.c
+++ b/arch/mips/lib/reloc.c
@@ -108,17 +108,6 @@ static void apply_reloc(unsigned int type, void *addr, long off)
 	}
 }
 
-/**
- * relocate_code() - Relocate Barebox, generally from flash to DDR
- * @start_addr_sp: new stack pointer
- * @new_gd: pointer to relocated global data
- * @relocaddr: the address to relocate to
- *
- * Relocate Barebox from its current location (generally in flash) to a new one
- * (generally in DDR). This function will copy the Barebox binary & apply
- * relocations as necessary, then jump to board_init_r in the new build of
- * Barebox. As such, this function does not return.
- */
 void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
 {
 	unsigned long addr, length, bss_len;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
