Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QLh5K-0000Hh-VM
	for barebox@lists.infradead.org; Sun, 15 May 2011 19:34:40 +0000
Received: by wyb28 with SMTP id 28so3786468wyb.36
	for <barebox@lists.infradead.org>; Sun, 15 May 2011 12:34:37 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Sun, 15 May 2011 21:34:30 +0200
Message-Id: <1305488072-1765-4-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1305488072-1765-1-git-send-email-franck.jullien@gmail.com>
References: <1305488072-1765-1-git-send-email-franck.jullien@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/5] [Nios2]: Change system frequency in generic board
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

In order to match the example I'll provide on my website,
set the system frequency to 100MHz in the generic board
nios_sopc.h

Signed-off-by: Franck JULLIEN <franck.jullien@gmail.com>
---
 arch/nios2/boards/generic/nios_sopc.h |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/nios2/boards/generic/nios_sopc.h b/arch/nios2/boards/generic/nios_sopc.h
index 5ee3642..688bc44 100644
--- a/arch/nios2/boards/generic/nios_sopc.h
+++ b/arch/nios2/boards/generic/nios_sopc.h
@@ -28,7 +28,7 @@
  */
 #define CPU_IMPLEMENTATION "fast"
 #define BIG_ENDIAN 0
-#define CPU_FREQ 50000000
+#define CPU_FREQ 100000000
 #define ICACHE_LINE_SIZE 32
 #define ICACHE_LINE_SIZE_LOG2 5
 #define ICACHE_SIZE 8192
@@ -221,7 +221,7 @@
 #define SGDMA_TX_BASE 0x4204400
 #define SGDMA_TX_SPAN 64
 #define SGDMA_TX_END 0x420443f
-#define SGDMA_TX_IRQ 0
+#define SGDMA_TX_IRQ 5
 #define SGDMA_TX_READ_BLOCK_DATA_WIDTH 32
 #define SGDMA_TX_WRITE_BLOCK_DATA_WIDTH 32
 #define SGDMA_TX_STREAM_DATA_WIDTH 32
@@ -336,7 +336,7 @@
 #define UART_USE_EOP_REGISTER 0
 #define UART_SIM_TRUE_BAUD 0
 #define UART_SIM_CHAR_STREAM ""
-#define UART_FREQ 50000000
+#define UART_FREQ 100000000
 
 /*
  * Macros for device 'SYS_CLK_TIMER', class 'altera_avalon_timer'
@@ -356,8 +356,8 @@
 #define SYS_CLK_TIMER_PERIOD_UNITS "ms"
 #define SYS_CLK_TIMER_RESET_OUTPUT 0
 #define SYS_CLK_TIMER_TIMEOUT_PULSE_OUTPUT 0
-#define SYS_CLK_TIMER_FREQ 50000000
-#define SYS_CLK_TIMER_LOAD_VALUE 49999ULL
+#define SYS_CLK_TIMER_FREQ 100000000
+#define SYS_CLK_TIMER_LOAD_VALUE 99999ULL
 #define SYS_CLK_TIMER_COUNTER_SIZE 32
 #define SYS_CLK_TIMER_MULT 0.0010
 #define SYS_CLK_TIMER_TICKS_PER_SEC 1000
@@ -384,7 +384,7 @@
 #define LED_STATUS_RESET_VALUE 0x3
 #define LED_STATUS_EDGE_TYPE "NONE"
 #define LED_STATUS_IRQ_TYPE "NONE"
-#define LED_STATUS_FREQ 50000000
+#define LED_STATUS_FREQ 100000000
 
 /*
  * Macros for device 'JTAG_UART', class 'altera_avalon_jtag_uart'
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
