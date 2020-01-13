Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir5X6-0007no-83
 for barebox@lists.infradead.org; Mon, 13 Jan 2020 19:37:53 +0000
Received: from astat.fritz.box (a89-183-121-189.net-htp.de [89.183.121.189])
 by lynxeye.de (Postfix) with ESMTPA id EF449E7421F
 for <barebox@lists.infradead.org>; Mon, 13 Jan 2020 20:37:18 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 13 Jan 2020 20:37:14 +0100
Message-Id: <20200113193716.133305-1-dev@lynxeye.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] serial: cadence: move register definitions into header
 file
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/serial/serial_cadence.c | 41 ++++-----------------------------
 include/serial/cadence.h        | 37 +++++++++++++++++++++++++++++
 2 files changed, 42 insertions(+), 36 deletions(-)
 create mode 100644 include/serial/cadence.h

diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
index 6454888e3c5b..416800b84723 100644
--- a/drivers/serial/serial_cadence.c
+++ b/drivers/serial/serial_cadence.c
@@ -12,47 +12,16 @@
  * GNU General Public License for more details.
  *
  */
+
 #include <common.h>
 #include <driver.h>
 #include <init.h>
-#include <malloc.h>
-#include <notifier.h>
 #include <io.h>
-#include <linux/err.h>
 #include <linux/clk.h>
-
-#define CADENCE_UART_CONTROL		0x00
-#define CADENCE_UART_MODE		0x04
-#define CADENCE_UART_BAUD_GEN		0x18
-#define CADENCE_UART_CHANNEL_STS	0x2C
-#define CADENCE_UART_RXTXFIFO		0x30
-#define CADENCE_UART_BAUD_DIV		0x34
-
-#define CADENCE_CTRL_RXRES		(1 << 0)
-#define CADENCE_CTRL_TXRES		(1 << 1)
-#define CADENCE_CTRL_RXEN		(1 << 2)
-#define CADENCE_CTRL_RXDIS		(1 << 3)
-#define CADENCE_CTRL_TXEN		(1 << 4)
-#define CADENCE_CTRL_TXDIS		(1 << 5)
-#define CADENCE_CTRL_RSTTO		(1 << 6)
-#define CADENCE_CTRL_STTBRK		(1 << 7)
-#define CADENCE_CTRL_STPBRK		(1 << 8)
-
-#define CADENCE_MODE_CLK_REF		(0 << 0)
-#define CADENCE_MODE_CLK_REF_DIV	(1 << 0)
-#define CADENCE_MODE_CHRL_6		(3 << 1)
-#define CADENCE_MODE_CHRL_7		(2 << 1)
-#define CADENCE_MODE_CHRL_8		(0 << 1)
-#define CADENCE_MODE_PAR_EVEN		(0 << 3)
-#define CADENCE_MODE_PAR_ODD		(1 << 3)
-#define CADENCE_MODE_PAR_SPACE		(2 << 3)
-#define CADENCE_MODE_PAR_MARK		(3 << 3)
-#define CADENCE_MODE_PAR_NONE		(4 << 3)
-
-#define CADENCE_STS_REMPTY		(1 << 1)
-#define CADENCE_STS_RFUL		(1 << 2)
-#define CADENCE_STS_TEMPTY		(1 << 3)
-#define CADENCE_STS_TFUL		(1 << 4)
+#include <linux/err.h>
+#include <malloc.h>
+#include <notifier.h>
+#include <serial/cadence.h>
 
 /*
  * create default values for different platforms
diff --git a/include/serial/cadence.h b/include/serial/cadence.h
new file mode 100644
index 000000000000..014fb01203a9
--- /dev/null
+++ b/include/serial/cadence.h
@@ -0,0 +1,37 @@
+#ifndef __CADENCE_UART_H__
+#define __CADENCE_UART_H__
+
+#define CADENCE_UART_CONTROL		0x00
+#define CADENCE_UART_MODE		0x04
+#define CADENCE_UART_BAUD_GEN		0x18
+#define CADENCE_UART_CHANNEL_STS	0x2C
+#define CADENCE_UART_RXTXFIFO		0x30
+#define CADENCE_UART_BAUD_DIV		0x34
+
+#define CADENCE_CTRL_RXRES		(1 << 0)
+#define CADENCE_CTRL_TXRES		(1 << 1)
+#define CADENCE_CTRL_RXEN		(1 << 2)
+#define CADENCE_CTRL_RXDIS		(1 << 3)
+#define CADENCE_CTRL_TXEN		(1 << 4)
+#define CADENCE_CTRL_TXDIS		(1 << 5)
+#define CADENCE_CTRL_RSTTO		(1 << 6)
+#define CADENCE_CTRL_STTBRK		(1 << 7)
+#define CADENCE_CTRL_STPBRK		(1 << 8)
+
+#define CADENCE_MODE_CLK_REF		(0 << 0)
+#define CADENCE_MODE_CLK_REF_DIV	(1 << 0)
+#define CADENCE_MODE_CHRL_6		(3 << 1)
+#define CADENCE_MODE_CHRL_7		(2 << 1)
+#define CADENCE_MODE_CHRL_8		(0 << 1)
+#define CADENCE_MODE_PAR_EVEN		(0 << 3)
+#define CADENCE_MODE_PAR_ODD		(1 << 3)
+#define CADENCE_MODE_PAR_SPACE		(2 << 3)
+#define CADENCE_MODE_PAR_MARK		(3 << 3)
+#define CADENCE_MODE_PAR_NONE		(4 << 3)
+
+#define CADENCE_STS_REMPTY		(1 << 1)
+#define CADENCE_STS_RFUL		(1 << 2)
+#define CADENCE_STS_TEMPTY		(1 << 3)
+#define CADENCE_STS_TFUL		(1 << 4)
+
+#endif /* __CADENCE_UART_H__ */
-- 
2.24.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
