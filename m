Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acvFW-0004v4-7n
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 13:31:03 +0000
Received: by mail-lb0-x230.google.com with SMTP id x1so129960673lbj.3
 for <barebox@lists.infradead.org>; Mon, 07 Mar 2016 05:30:41 -0800 (PST)
Received: from localhost.localdomain ([31.173.84.173])
 by smtp.gmail.com with ESMTPSA id vq10sm2751728lbb.14.2016.03.07.05.30.39
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Mar 2016 05:30:39 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Mar 2016 16:30:14 +0300
Message-Id: <1457357426-9868-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
References: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 03/15] MIPS: black-swift: pbl: init cache
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/black-swift/include/board/board_pbl_start.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/mips/boards/black-swift/include/board/board_pbl_start.h b/arch/mips/boards/black-swift/include/board/board_pbl_start.h
index 3f2caa0..0d68004 100644
--- a/arch/mips/boards/black-swift/include/board/board_pbl_start.h
+++ b/arch/mips/boards/black-swift/include/board/board_pbl_start.h
@@ -35,6 +35,12 @@
 	pbl_ar9331_pll
 	pbl_ar9331_ddr2_config
 
+	/* Initialize caches... */
+	mips_cache_reset
+
+	/* ... and enable them */
+	dcache_enable
+
 skip_pll_ram_config:
 	pbl_ar9331_uart_enable
 	debug_ll_ar9331_init
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
