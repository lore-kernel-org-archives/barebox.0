Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uigdp-0001xr-SY
 for barebox@lists.infradead.org; Sat, 01 Jun 2013 07:54:23 +0000
Received: by mail-la0-f50.google.com with SMTP id ed20so2017728lab.23
 for <barebox@lists.infradead.org>; Sat, 01 Jun 2013 00:53:59 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  1 Jun 2013 11:52:46 +0400
Message-Id: <1370073169-29009-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1370073169-29009-1-git-send-email-antonynpavlov@gmail.com>
References: <1370073169-29009-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/6] MIPS: rzx50: pbl: use debug_ll
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/rzx50/include/board/board_pbl_start.h |    6 ++++++
 arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h  |    4 ++++
 2 files changed, 10 insertions(+)

diff --git a/arch/mips/boards/rzx50/include/board/board_pbl_start.h b/arch/mips/boards/rzx50/include/board/board_pbl_start.h
index cba3e7f..f71641a 100644
--- a/arch/mips/boards/rzx50/include/board/board_pbl_start.h
+++ b/arch/mips/boards/rzx50/include/board/board_pbl_start.h
@@ -18,6 +18,7 @@
  */
 
 #include <asm/pbl_macros.h>
+#include <mach/debug_ll.h>
 
 	.macro	board_pbl_start
 	.set	push
@@ -28,6 +29,11 @@
 	/* CPU/SoC specific setup ... */
 	/* ... absent */
 
+	debug_ll_ns16550_init
+
+	debug_ll_ns16550_outc '.'
+	debug_ll_ns16550_outnl
+
 	copy_to_link_location	pbl_start
 
 	.set	pop
diff --git a/arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h b/arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h
index 7bf66b1..2a55dea 100644
--- a/arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h
+++ b/arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h
@@ -34,4 +34,8 @@
 
 #define DEBUG_LL_UART_SHIFT	2
 
+#define DEBUG_LL_UART_CLK	(12000000 / 16)
+#define DEBUG_LL_UART_BPS	CONFIG_BAUDRATE
+#define DEBUG_LL_UART_DIVISOR	(DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
+
 #endif /* __INCLUDE_DEBUG_LL_JZ4750D_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
