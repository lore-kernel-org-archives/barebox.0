Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQzY-00050P-2M
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 16:15:15 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 Sep 2019 18:15:08 +0200
Message-Id: <20190923161508.9163-1-a.fatoum@pengutronix.de>
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
Subject: [RFC PATCH] ARM: layerscape: zero-index DEBUG_LAYERSCAPE_UART_PORT
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The layerscape features four UART ports termed UART{1-4} in the
reference manual.
In the upstream device tree they have the phandles &duart{0-3}.

Currently, barebox follows the numbering used in the reference manual
for the DEBUG_LL port, because that's what the <soc/fsl/immap_lsch2.h>
header does as well.

It's arguable however that the DEBUG_LL port should be 0-indexed,
because users are most likely to look in the board device tree for the
chosen stdout-path and that one's phandle is zero-indexed.

One notable example of a target with one-indexed DEBUG_LL port is the
i.MX, but there the uart port phandles are one-indexed, so there's no
discrepancy between DEBUG_LL and /chosen/stdout-path like it's the
case with the Layerscape.

Fix the discrepancy by zero-indexing the layerscape UART.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
I guess it can be argued that either way is the correct one.
But I'd say from the viewpoint of a barebox developer, changing it to
zero indexed makes the most sense.

If we go this route, should the config option be renamed to account
for existing configs that set it?
---
 arch/arm/mach-layerscape/include/mach/debug_ll.h | 7 ++++++-
 common/Kconfig                                   | 3 +--
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-layerscape/include/mach/debug_ll.h b/arch/arm/mach-layerscape/include/mach/debug_ll.h
index 2658a4a7c916..df044728c0ba 100644
--- a/arch/arm/mach-layerscape/include/mach/debug_ll.h
+++ b/arch/arm/mach-layerscape/include/mach/debug_ll.h
@@ -4,7 +4,12 @@
 #include <io.h>
 #include <soc/fsl/immap_lsch2.h>
 
-#define __LS_UART_BASE(num)	LSCH2_NS16550_COM##num
+#define LS_UART0	LSCH2_NS16550_COM1
+#define LS_UART1	LSCH2_NS16550_COM2
+#define LS_UART2	LSCH2_NS16550_COM3
+#define LS_UART3	LSCH2_NS16550_COM4
+
+#define __LS_UART_BASE(num)	LS_UART##num
 #define LS_UART_BASE(num) __LS_UART_BASE(num)
 
 static inline uint8_t debug_ll_read_reg(int reg)
diff --git a/common/Kconfig b/common/Kconfig
index 8aad5baecdda..f79bef01f8cf 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1264,10 +1264,9 @@ config DEBUG_SOCFPGA_UART_CLOCK
 config DEBUG_LAYERSCAPE_UART_PORT
 	int "Layerscape UART port selection"
 	depends on ARCH_LAYERSCAPE
-	default 1
 	help
 	  Select the UART port number used for early debugging here. Port
-	  numbers start counting from 1.
+	  numbers start counting from 0.
 
 config DEBUG_AT91_UART_BASE
 	hex "AT91 Debug UART Port Selection" if DEBUG_AT91_UART
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
