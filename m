Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwJuy-0006po-Fe
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 01:09:45 +0000
Received: by lbbkw15 with SMTP id kw15so8676294lbb.0
 for <barebox@lists.infradead.org>; Tue, 10 Nov 2015 17:09:22 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 11 Nov 2015 04:09:13 +0300
Message-Id: <1447204155-16773-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1447204155-16773-1-git-send-email-antonynpavlov@gmail.com>
References: <1447204155-16773-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] MIPS: pbl: add pbl_blt macro
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

Barebox' PBL can initialize memory controller of the board.
But we can use memory controller initialization routine
only if PBL runs from ROM or on-chip SRAM.
MIPS architecture standard boot vector is 0xbfc00000
so on most MIPS SoCs all addresses higher than 0xbfc00000
belong to boot ROM or on-chip SRAM. Well then we have
simple criterion to check if PBL run from ROM: just
check if current PC is higher than 0xbfc00000.
Some MIPS boards have ROM start address lower than 0xbfc00000
so it's reasonable we have to make ROM start address
board dependend.

The pbl_blt macro checks if current pc is lower than
the first argument (ROM start address). If so then
next instruction executed is defined by the second argument
of the macro.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/pbl_macros.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index c4ae6a2..dbe3410 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -60,6 +60,18 @@
 	.set	pop
 	.endm
 
+	.macro	pbl_blt addr label tmp
+	.set	push
+	.set	noreorder
+	move	\tmp, ra			# preserve ra beforehand
+	bal	253f
+	 nop
+253:
+	bltu	ra, \addr, \label
+	 move	ra, \tmp			# restore ra
+	.set	pop
+	.endm
+
 	.macro	pbl_sleep reg count
 	.set push
 	.set noreorder
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
