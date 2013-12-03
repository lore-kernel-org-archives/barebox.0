Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vnk89-0002Ni-Fg
 for barebox@lists.infradead.org; Tue, 03 Dec 2013 07:10:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Dec 2013 08:10:25 +0100
Message-Id: <1386054625-9541-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Karo TX25: Enable debug uart early
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx25/lowlevel.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index d010043..742100d 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -29,6 +29,27 @@
 #include <asm/system.h>
 #include <asm/sections.h>
 #include <asm-generic/memory_layout.h>
+#include <debug_ll.h>
+
+static inline void setup_uart(void)
+{
+	void __iomem *uartbase = (void *)MX25_UART1_BASE_ADDR;
+	void __iomem *iomuxbase = (void *)MX25_IOMUXC_BASE_ADDR;
+
+	writel(0x0, iomuxbase + 0x174);
+
+	writel(0x00000000, uartbase + 0x80);
+	writel(0x00004027, uartbase + 0x84);
+	writel(0x00000704, uartbase + 0x88);
+	writel(0x00000a81, uartbase + 0x90);
+	writel(0x0000002b, uartbase + 0x9c);
+	writel(0x00013880, uartbase + 0xb0);
+	writel(0x0000047f, uartbase + 0xa4);
+	writel(0x0000a259, uartbase + 0xa8);
+	writel(0x00000001, uartbase + 0x80);
+
+	putc_ll('>');
+}
 
 static inline void __bare_init  setup_sdram(uint32_t base, uint32_t esdctl,
 		uint32_t esdcfg)
@@ -113,6 +134,8 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	writel(0xffffffff, MX25_CCM_BASE_ADDR + MX25_CCM_CGCR1);
 	writel(0x000fdfff, MX25_CCM_BASE_ADDR + MX25_CCM_CGCR2);
 
+	setup_uart();
+
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x80000000 && r < 0xa0000000)
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
