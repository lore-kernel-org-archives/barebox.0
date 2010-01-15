Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4-g21.free.fr ([212.27.42.4])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NVjlD-0001ee-9c
	for barebox@lists.infradead.org; Fri, 15 Jan 2010 10:50:40 +0000
From: Eric Benard <eric@eukrea.com>
Date: Fri, 15 Jan 2010 11:50:16 +0100
Message-Id: <1263552619-4601-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 1/4] eukrea_cpuimx27 : update timings
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

use optimized DDR, NOR & QuadUART timings

Signed-off-by: Eric Benard <eric@eukrea.com>
---
 board/eukrea_cpuimx27/eukrea_cpuimx27.c |   12 ++++++------
 board/eukrea_cpuimx27/lowlevel_init.S   |    4 ++--
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/board/eukrea_cpuimx27/eukrea_cpuimx27.c b/board/eukrea_cpuimx27/eukrea_cpuimx27.c
index 6878044..629399f 100644
--- a/board/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/board/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -198,9 +198,9 @@ static int eukrea_cpuimx27_devices_init(void)
 	eukrea_cpuimx27_mmu_init();
 
 	/* configure 16 bit nor flash on cs0 */
-	CS0U = 0x0000CC03;
-	CS0L = 0xa0330D01;
-	CS0A = 0x00220800;
+	CS0U = 0x00008F03;
+	CS0L = 0xA0330D01;
+	CS0A = 0x002208C0;
 
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
@@ -244,9 +244,9 @@ static int eukrea_cpuimx27_console_init(void)
 #endif
 	/* configure 8 bit UART on cs3 */
 	FMCR &= ~0x2;
-	CS3U = 0x0000DCF6;
-	CS3L = 0x444A4541;
-	CS3A = 0x44443302;
+	CS3U = 0x0000D603;
+	CS3L = 0x0D1D0D01;
+	CS3A = 0x00D20000;
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
 	register_device(&quad_uart_serial_device);
 #endif
diff --git a/board/eukrea_cpuimx27/lowlevel_init.S b/board/eukrea_cpuimx27/lowlevel_init.S
index 4622af8..5295a8a 100644
--- a/board/eukrea_cpuimx27/lowlevel_init.S
+++ b/board/eukrea_cpuimx27/lowlevel_init.S
@@ -8,10 +8,10 @@
 
 #if defined CONFIG_EUKREA_CPUIMX27_SDRAM_256MB
 #define ROWS0	ESDCTL_ROW14
-#define CFG0	0x00695729
+#define CFG0	0x0029572D
 #elif defined CONFIG_EUKREA_CPUIMX27_SDRAM_128MB
 #define ROWS0	ESDCTL_ROW13
-#define CFG0	0x00395B28
+#define CFG0	0x00095728
 #endif
 
 #define ESDCTL0_VAL (ESDCTL0_SDE | ROWS0 | ESDCTL0_COL10)
-- 
1.6.3.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
