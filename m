Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYs18-0004ZT-Ic
 for barebox@lists.infradead.org; Thu, 25 Feb 2016 09:15:27 +0000
Received: by mail-lf0-x243.google.com with SMTP id e36so1809149lfi.0
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2016 01:15:08 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 25 Feb 2016 12:14:53 +0300
Message-Id: <1456391693-25172-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1456391693-25172-1-git-send-email-antonynpavlov@gmail.com>
References: <1456391693-25172-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/4] MIPS: black-swift: pbl: use more lowlevel init code from
 U-Boot_mod
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/black-swift/include/board/board_pbl_start.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/mips/boards/black-swift/include/board/board_pbl_start.h b/arch/mips/boards/black-swift/include/board/board_pbl_start.h
index 7394092..3f2caa0 100644
--- a/arch/mips/boards/black-swift/include/board/board_pbl_start.h
+++ b/arch/mips/boards/black-swift/include/board/board_pbl_start.h
@@ -26,10 +26,12 @@
 
 	mips_barebox_10h
 
-	mips_disable_interrupts
+	hornet_mips24k_cp0_setup
 
 	pbl_blt 0xbf000000 skip_pll_ram_config t8
 
+	hornet_1_1_war
+
 	pbl_ar9331_pll
 	pbl_ar9331_ddr2_config
 
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
