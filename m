Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM9Bj-0001IE-UM
 for barebox@lists.infradead.org; Fri, 13 Feb 2015 05:53:18 +0000
Received: by mail-lb0-f182.google.com with SMTP id f15so12766372lbj.13
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 21:52:50 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 13 Feb 2015 08:53:13 +0300
Message-Id: <1423806794-23881-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1423806794-23881-1-git-send-email-antonynpavlov@gmail.com>
References: <1423806794-23881-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3] MIPS: qemu-malta: debug_ll: fix serial port speed
To: barebox@lists.infradead.org

qemu-malta.dts uses clock-frequency = <1843200>,
but debug_ll.h for Malta uses another value.

This patch fixes this inconsistency.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/qemu-malta/include/board/debug_ll.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/mips/boards/qemu-malta/include/board/debug_ll.h b/arch/mips/boards/qemu-malta/include/board/debug_ll.h
index 1e56040..abeee53 100644
--- a/arch/mips/boards/qemu-malta/include/board/debug_ll.h
+++ b/arch/mips/boards/qemu-malta/include/board/debug_ll.h
@@ -22,6 +22,9 @@
 
 #define DEBUG_LL_UART_ADDR	MALTA_PIIX4_UART0
 #define DEBUG_LL_UART_SHIFT	0
-#define DEBUG_LL_UART_DIVISOR 1843200 /* no matter for emulated port */
+
+#define DEBUG_LL_UART_CLK       1843200
+#define DEBUG_LL_UART_BPS       CONFIG_BAUDRATE
+#define DEBUG_LL_UART_DIVISOR   (DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
 
 #endif /* __INCLUDE_BOARD_DEBUG_LL_QEMU_MALTA_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
