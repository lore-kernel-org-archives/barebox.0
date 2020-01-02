Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imxdv-00074C-BD
 for barebox@lists.infradead.org; Thu, 02 Jan 2020 10:23:53 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu,  2 Jan 2020 11:23:35 +0100
Message-Id: <20200102102334.73726-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH] ARM: nitrogen6: add lowlevel UART initialization
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Mux UART1 and UART2 correctly to allow usage of DEBUG_LL.
This commit has only been tested on nitrogen6q.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 .../boundarydevices-nitrogen6/lowlevel.c      | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c b/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c
index 74ff71fc24..47c231396d 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c
+++ b/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c
@@ -1,16 +1,40 @@
 #include <common.h>
+#include <debug_ll.h>
 #include <mach/generic.h>
 #include <mach/esdctl.h>
 #include <asm/barebox-arm.h>
+#include <serial/imx-uart.h>
 
 extern char __dtb_imx6q_nitrogen6x_start[];
 
+static inline void setup_uart(void)
+{
+   void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
+
+   //UART 1
+   writel(0x1, iomuxbase + 0x02a8);
+   writel(0x1, iomuxbase + 0x02ac);
+
+   //UART 2
+   writel(0x4, iomuxbase + 0x00bc);
+   writel(0x4, iomuxbase + 0x00c0);
+   writel(0x0, iomuxbase + 0x0928);
+
+   imx6_ungate_all_peripherals();
+   imx6_uart_setup((void *)MX6_UART2_BASE_ADDR);
+   pbl_set_putc(imx_uart_putc, (void *)MX6_UART2_BASE_ADDR);
+}
+
+
 ENTRY_FUNCTION(start_imx6q_nitrogen6x_1g, r0, r1, r2)
 {
 	void *fdt;
 
 	imx6_cpu_lowlevel_init();
 
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
 	fdt = __dtb_imx6q_nitrogen6x_start + get_runtime_offset();
 
 	imx6q_barebox_entry(fdt);
-- 
2.24.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
