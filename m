Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22a.google.com ([2a00:1450:4013:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UvDSI-0006WG-Ue
 for barebox@lists.infradead.org; Fri, 05 Jul 2013 21:22:15 +0000
Received: by mail-ee0-f42.google.com with SMTP id c4so1596720eek.15
 for <barebox@lists.infradead.org>; Fri, 05 Jul 2013 14:21:53 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  5 Jul 2013 23:21:45 +0200
Message-Id: <1373059305-20443-1-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <20130705065137.GH516@pengutronix.de>
References: <20130705065137.GH516@pengutronix.de>
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
Subject: [PATCH RESEND] ARM: mvebu: add clock aliases for spi0/spi1 on Dove
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This adds clock aliases for spi controllers found on Dove to allow
spi driver to get tclk frequency.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
@Sascha: I forgot to update MVEBU SPI v4 patch numbering to indicate
that this patch is also required for the SPI driver to find its clock
with clk_get instead of clk_fixup.

As stated in the original patch for SPI clock aliases, I am not planing
to add any more clk aliases like this but prefer to work on DT clk
provider first.

Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/dove.c                   |    2 ++
 arch/arm/mach-mvebu/include/mach/dove-regs.h |    3 +++
 2 files changed, 5 insertions(+)

diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index 3909bf4..16ee116 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -124,6 +124,8 @@ static int dove_init_soc(void)
 	dove_remap_mc_regs();
 	dove_init_clocks();
 	clkdev_add_physbase(tclk, (unsigned int)DOVE_TIMER_BASE, NULL);
+	clkdev_add_physbase(tclk, (unsigned int)DOVE_SPI0_BASE, NULL);
+	clkdev_add_physbase(tclk, (unsigned int)DOVE_SPI1_BASE, NULL);
 	add_generic_device("orion-timer", DEVICE_ID_SINGLE, NULL,
 			   (unsigned int)DOVE_TIMER_BASE, 0x30,
 			   IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-mvebu/include/mach/dove-regs.h b/arch/arm/mach-mvebu/include/mach/dove-regs.h
index 519457e..8b4319b 100644
--- a/arch/arm/mach-mvebu/include/mach/dove-regs.h
+++ b/arch/arm/mach-mvebu/include/mach/dove-regs.h
@@ -33,6 +33,9 @@
 #define DOVE_UART_BASE		(DOVE_INT_REGS_BASE + 0x12000)
 #define DOVE_UARTn_BASE(n)	(DOVE_UART_BASE + ((n) * 0x100))
 
+#define DOVE_SPI0_BASE		(DOVE_INT_REGS_BASE + 0x10600)
+#define DOVE_SPI1_BASE		(DOVE_INT_REGS_BASE + 0x14600)
+
 #define DOVE_BRIDGE_BASE	(DOVE_INT_REGS_BASE + 0x20000)
 #define  INT_REGS_BASE_MAP	0x080
 #define  BRIDGE_RSTOUT_MASK	0x108
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
