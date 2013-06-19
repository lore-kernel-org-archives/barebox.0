Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEQq-0005El-Pc
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:12:01 +0000
Received: from mailout-de.gmx.net ([10.1.76.30]) by mrigmx.server.lan
 (mrigmx002) with ESMTP (Nemesis) id 0LxZlV-1UE8Ry3qgN-017HOp for
 <barebox@lists.infradead.org>; Wed, 19 Jun 2013 11:11:41 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 19 Jun 2013 11:11:33 +0200
Message-Id: <1371633093-23179-9-git-send-email-linux@rempel-privat.de>
In-Reply-To: <1371633093-23179-1-git-send-email-linux@rempel-privat.de>
References: <1371633093-23179-1-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH 8/8] netgear-wg102: pbl, add extra check for mem config
To: barebox@lists.infradead.org

if E0 flag is not set, sdram is defenetly not configured.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h b/arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h
index 4deae06..d74d2c2 100644
--- a/arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h
+++ b/arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h
@@ -18,6 +18,7 @@
 
 #include <asm/pbl_macros.h>
 #include <mach/pbl_macros.h>
+#include <mach/ar2312_regs.h>
 
 #include <mach/debug_ll.h>
 
@@ -40,10 +41,17 @@
 	/* check if SDRAM is already configured,
 	 * if yes, we are probably starting
 	 * as second stage loader and can skip configuration */
+	la	t0, KSEG1 | AR2312_MEM_CFG1
+	lw	t1, 0(t0)
+	and	t0, t1, MEM_CFG1_E0
+	beq	zero, t0, 1f
+	 nop
+
 	pbl_probe_mem t0, t1, KSEG1
 	beq t0, t1, sdram_configured
 	 nop
 
+1:
 	/* start SDRAM configuration */
 	pbl_ar2312_x16_sdram
 
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
