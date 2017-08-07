Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dejCI-0003rn-Aj
 for barebox@lists.infradead.org; Mon, 07 Aug 2017 14:40:04 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Mon,  7 Aug 2017 16:39:21 +0200
Message-Id: <20170807143927.1641-7-linux@rempel-privat.de>
In-Reply-To: <20170807143927.1641-1-linux@rempel-privat.de>
References: <20170807143927.1641-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 07/13] MIPS: tplink-mr3020: pbl: move WMAC init after flash
 addr test
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

if this function is called in the RAM, we won't be able to
continue start sequence.
It brakes boot over JTAG use case.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
Cc: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h b/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
index 3a7b560a0..1774556a8 100644
--- a/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
+++ b/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
@@ -26,12 +26,12 @@
 
 	mips_barebox_10h
 
-	pbl_ar9331_wmac_enable
-
 	hornet_mips24k_cp0_setup
 
 	pbl_blt 0xbf000000 skip_pll_ram_config t8
 
+	pbl_ar9331_wmac_enable
+
 	hornet_1_1_war
 
 	pbl_ar9331_pll
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
