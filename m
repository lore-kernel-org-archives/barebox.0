Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x232.google.com ([2a00:1450:4010:c07::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtMtq-0000AN-EC
 for barebox@lists.infradead.org; Mon, 02 Nov 2015 21:44:23 +0000
Received: by lfbn126 with SMTP id n126so68275426lfb.2
 for <barebox@lists.infradead.org>; Mon, 02 Nov 2015 13:44:00 -0800 (PST)
Received: from localhost.localdomain (ppp91-79-39-184.pppoe.mtu-net.ru.
 [91.79.39.184])
 by smtp.gmail.com with ESMTPSA id 78sm4325125lfs.35.2015.11.02.13.44.00
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 02 Nov 2015 13:44:00 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  3 Nov 2015 00:43:44 +0300
Message-Id: <1446500625-27907-9-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1446500625-27907-1-git-send-email-antonynpavlov@gmail.com>
References: <1446500625-27907-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 8/9] MIPS: tplink-mr3020: add pbl low level init
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h b/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
index 944a510..08204fe 100644
--- a/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
+++ b/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
@@ -17,6 +17,7 @@
  */
 
 #include <asm/pbl_macros.h>
+#include <mach/pbl_macros.h>
 #include <asm/pbl_nmon.h>
 
 	.macro	board_pbl_start
@@ -27,6 +28,11 @@
 
 	mips_disable_interrupts
 
+	pbl_ar9331_pll
+	pbl_ar9331_ddr1_config
+
+	pbl_ar9331_uart_enable
+	debug_ll_ar9331_init
 	mips_nmon
 
 	copy_to_link_location	pbl_start
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
