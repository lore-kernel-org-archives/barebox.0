Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwQsz-0007bM-Sp
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 08:36:11 +0000
Received: by lbces9 with SMTP id es9so12795027lbc.2
 for <barebox@lists.infradead.org>; Wed, 11 Nov 2015 00:35:47 -0800 (PST)
Received: from localhost.localdomain (ppp91-79-57-136.pppoe.mtu-net.ru.
 [91.79.57.136])
 by smtp.gmail.com with ESMTPSA id 64sm1280884lfu.35.2015.11.11.00.35.47
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Nov 2015 00:35:47 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 11 Nov 2015 11:35:41 +0300
Message-Id: <1447230942-24098-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1447230942-24098-1-git-send-email-antonynpavlov@gmail.com>
References: <1447230942-24098-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 2/3] MIPS: black-swift: skip pbl lowlevel init if running
 from RAM
To: barebox@lists.infradead.org

Black Swift has 16 MiB flash boot ROM. The standard board's
bootloader (U-Boot_mod) remaps boot ROM to 0xbf000000.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Tested-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/mips/boards/black-swift/include/board/board_pbl_start.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/mips/boards/black-swift/include/board/board_pbl_start.h b/arch/mips/boards/black-swift/include/board/board_pbl_start.h
index f78e0d9..7394092 100644
--- a/arch/mips/boards/black-swift/include/board/board_pbl_start.h
+++ b/arch/mips/boards/black-swift/include/board/board_pbl_start.h
@@ -28,9 +28,12 @@
 
 	mips_disable_interrupts
 
+	pbl_blt 0xbf000000 skip_pll_ram_config t8
+
 	pbl_ar9331_pll
 	pbl_ar9331_ddr2_config
 
+skip_pll_ram_config:
 	pbl_ar9331_uart_enable
 	debug_ll_ar9331_init
 	mips_nmon
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
