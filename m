Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f174.google.com ([209.85.217.174])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjSoH-0004xU-HA
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 11:20:22 +0000
Received: by mail-lb0-f174.google.com with SMTP id u10so3598089lbi.5
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2013 04:19:57 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  3 Jun 2013 14:53:23 +0400
Message-Id: <1370256807-26755-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1370256807-26755-1-git-send-email-antonynpavlov@gmail.com>
References: <1370256807-26755-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 1/5] MIPS: rzx50: prepare for new debug_ll
To: barebox@lists.infradead.org

Set DEBUG_LL_UART_DIVISOR to use <asm/debug_ll_ns16550.h>.

The JZ4755 uses 24 MHz as the main reference frequency (EXCLK).
The UART controller can work on full EXCLK or on EXCLK/2.
Just now we use EXCLK/2 legacy clock setup made by U-Boot.
So set UART controller base frequency to 12 MHz.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h |    4 ++++
 1 file changed, 4 insertions(+)

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
