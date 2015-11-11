Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwJuy-0006q2-Ee
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 01:09:45 +0000
Received: by lbbcs9 with SMTP id cs9so8634134lbb.1
 for <barebox@lists.infradead.org>; Tue, 10 Nov 2015 17:09:24 -0800 (PST)
Received: from localhost.localdomain (ppp91-79-57-136.pppoe.mtu-net.ru.
 [91.79.57.136])
 by smtp.gmail.com with ESMTPSA id j11sm981248lbz.21.2015.11.10.17.09.23
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 10 Nov 2015 17:09:23 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 11 Nov 2015 04:09:15 +0300
Message-Id: <1447204155-16773-4-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] MIPS: tplink-mr3020: skip pbl lowlevel init if running
 from RAM
To: barebox@lists.infradead.org

TP-Link MR3020 has 4 MiB flash boot ROM that is mapped to 0xbfc00000.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h b/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
index 08204fe..328426e 100644
--- a/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
+++ b/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
@@ -28,9 +28,12 @@
 
 	mips_disable_interrupts
 
+	pbl_blt 0xbfc00000 skip_pll_ram_config t8
+
 	pbl_ar9331_pll
 	pbl_ar9331_ddr1_config
 
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
