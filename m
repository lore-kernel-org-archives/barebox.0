Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHTsx-0007Yh-Gq
 for barebox@lists.infradead.org; Mon, 27 Jun 2016 10:35:24 +0000
Received: by mail-wm0-x244.google.com with SMTP id a66so23336609wme.2
 for <barebox@lists.infradead.org>; Mon, 27 Jun 2016 03:35:03 -0700 (PDT)
From: yegorslists@googlemail.com
Date: Mon, 27 Jun 2016 12:34:44 +0200
Message-Id: <1467023685-4820-2-git-send-email-yegorslists@googlemail.com>
In-Reply-To: <1467023685-4820-1-git-send-email-yegorslists@googlemail.com>
References: <1467023685-4820-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 2/3] MIPS: black-swift: pbl: init WMAC
To: barebox@lists.infradead.org
Cc: linux@rempel-privat.de

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/mips/boards/black-swift/include/board/board_pbl_start.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/boards/black-swift/include/board/board_pbl_start.h b/arch/mips/boards/black-swift/include/board/board_pbl_start.h
index ee21a85..4c2ab2e 100644
--- a/arch/mips/boards/black-swift/include/board/board_pbl_start.h
+++ b/arch/mips/boards/black-swift/include/board/board_pbl_start.h
@@ -26,6 +26,8 @@
 
 	mips_barebox_10h
 
+	pbl_ar9331_wmac_enable
+
 	hornet_mips24k_cp0_setup
 
 	pbl_blt 0xbf000000 skip_pll_ram_config t8
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
