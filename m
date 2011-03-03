Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUC-0003OY-Ow
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:12 +0000
Received: by mail-wy0-f177.google.com with SMTP id 23so1676066wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:08 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:32 +0100
Message-Id: <4d701d3c.9009d80a.2cd3.5e83@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 18/54] Add arch/nios2/boards/generic/config.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/boards/generic/config.h

---
 arch/nios2/boards/generic/config.h |   64 ++++++++++++++++++++++++++++++++++++
 1 files changed, 64 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/boards/generic/config.h

diff --git a/arch/nios2/boards/generic/config.h b/arch/nios2/boards/generic/config.h
new file mode 100644
index 0000000..53362d2
--- /dev/null
+++ b/arch/nios2/boards/generic/config.h
@@ -0,0 +1,64 @@
+#ifndef _GENERIC_NAMES_H_
+#define _GENERIC_NAMES_H_
+
+#include "nios_sopc.h"
+
+#ifndef MMU_PRESENT
+#define IO_REGION_BASE		0x80000000
+#define KERNEL_REGION_BASE 	0x00000000
+#endif
+
+/*Name of the RAM memory in your SOPC project */
+#define NIOS_SOPC_MEMORY_BASE		(KERNEL_REGION_BASE | DDR_SDRAM_BASE)
+#define NIOS_SOPC_MEMORY_SIZE		DDR_SDRAM_SPAN
+
+/*Name of the timer in your SOPC project */
+#define NIOS_SOPC_TIMER_BASE		(IO_REGION_BASE | SYS_CLK_TIMER_BASE)
+#define NIOS_SOPC_TIMER_FREQ		SYS_CLK_TIMER_FREQ
+
+/*Name of TSE and SGDMA in your SOPC project */
+#define NIOS_SOPC_SGDMA_RX_BASE		(IO_REGION_BASE | SGDMA_RX_BASE)
+#define NIOS_SOPC_SGDMA_TX_BASE		(IO_REGION_BASE | SGDMA_TX_BASE)
+#define NIOS_SOPC_TSE_BASE		(IO_REGION_BASE | TSE_BASE)
+#define NIOS_SOPC_TSE_DESC_MEM_BASE     (IO_REGION_BASE | DESCRIPTOR_MEMORY_BASE)
+
+/*Name of the UART in your SOPC project */
+#define NIOS_SOPC_UART_BASE		(IO_REGION_BASE | UART_BASE)
+
+/*Name of the JTAG UART in your SOPC project */
+#define NIOS_SOPC_JTAG_UART_BASE	(IO_REGION_BASE | JTAG_UART_BASE)
+
+/*Name of the CFI flash in your SOPC project */
+#define NIOS_SOPC_FLASH_BASE		(IO_REGION_BASE | CFI_FLASH_BASE)
+#define NIOS_SOPC_FLASH_SIZE		CFI_FLASH_SPAN
+
+/*Name of the EPCS flash controller in your SOPC project */
+/*
+#define NIOS_SOPC_EPCS_BASE		(IO_REGION_BASE | (EPCS_FLASH_CONTROLLER_BASE + EPCS_FLASH_CONTROLLER_REGISTER_OFFSET))
+*/
+
+/* PHY MDIO Address */
+#define NIOS_SOPC_PHY_ADDR		1
+
+/* We reserve 256K for barebox */
+#define BAREBOX_RESERVED_SIZE		0x80000	
+
+/* Barebox will be at top of main memory */
+#define NIOS_SOPC_TEXT_BASE		(NIOS_SOPC_MEMORY_BASE + NIOS_SOPC_MEMORY_SIZE - BAREBOX_RESERVED_SIZE)
+
+/*
+* TEXT_BASE is defined here because STACK_BASE definition
+*  in include/asm-generic/memory_layout.h uses this name      
+*/
+
+#define TEXT_BASE			NIOS_SOPC_TEXT_BASE
+
+/* Board banner */
+
+#define BOARD_BANNER "\
+\033[44;1m***********************************************\e[0m\n\
+\033[44;1m*             Altera generic board            *\e[0m\n\
+\033[44;1m***********************************************\e[0m\
+\e[0m\n\n"
+
+#endif
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
