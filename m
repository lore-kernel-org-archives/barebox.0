Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHTsy-0007v0-T3
 for barebox@lists.infradead.org; Mon, 27 Jun 2016 10:35:25 +0000
Received: by mail-wm0-x241.google.com with SMTP id c82so23355323wme.3
 for <barebox@lists.infradead.org>; Mon, 27 Jun 2016 03:35:04 -0700 (PDT)
From: yegorslists@googlemail.com
Date: Mon, 27 Jun 2016 12:34:45 +0200
Message-Id: <1467023685-4820-3-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 3/3] MIPS: tplink-mr3020: pbl: init WMAC
To: barebox@lists.infradead.org
Cc: linux@rempel-privat.de

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h b/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
index ef0d36d..3a7b560 100644
--- a/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
+++ b/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
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
