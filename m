Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwNAj-0002Hs-JZ
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 09:28:38 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 28 Jan 2020 10:28:32 +0100
Message-Id: <20200128092832.18615-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] MIPS: remove .bss to __rel_start overlay
To: barebox@lists.infradead.org, antonynpavlov@gmail.com
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

.bss __rel_start (OVERLAY) was used to optimize RAM size used by
barebox. Since .bss and __rel_start overlap, we should clear bss only
after __rel_start was used.

There is a choice of moving .bss clear sequence after __rel_start or
remove this optimization. Since the use of this optimization is minimal
and danger to trap in to similar issue is still high, i prefer to remove
this optimization.

Fixes: 1e5aef61fc6a444 ("MIPS: reloc: init bss and cpu")
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/lib/barebox.lds.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index 693a778980..c954df41f3 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -59,7 +59,7 @@ SECTIONS
 
 	_end = .;
 
-	.bss __rel_start (OVERLAY) : {
+	.bss : {
 		__bss_start = .;
 		*(.sbss.*)
 		*(.bss.*)
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
