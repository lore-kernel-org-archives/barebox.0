Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMq4r-0003w8-Dp
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 10:08:14 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Sep 2020 12:08:09 +0200
Message-Id: <20200928100809.25868-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] ARM: at91: support sama5 low level clock setup with oscillator
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Michael Grzeschik <mgr@pengutronix.de>

AT91Bootstrap has a CONFIG_MCK_BYPASS option with following help text:

  "Use external 8 to 24 Mhz clock signal as source of main clock
  instead of an external crystal oscillator.
  This option disables the internal driving on the XOUT pin.
  The external source has to provide a stable clock on the XIN pin.
  If this option is disabled, the SoC expects a crystal oscillator
  that needs driving on both XIN and XOUT lines."

When the low level clock setup was ported over from AT91Bootstrap,
this config option was dropped. It wasn't necessary for the xplained
boards that have a crystal, but for ones with an oscillator, it's
required. Add the bit flag back.

Suggested-by: Michael Grzeschik <mgr@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/at91_pmc_ll.c              | 2 ++
 arch/arm/mach-at91/include/mach/at91_pmc_ll.h | 5 +++++
 2 files changed, 7 insertions(+)

diff --git a/arch/arm/mach-at91/at91_pmc_ll.c b/arch/arm/mach-at91/at91_pmc_ll.c
index 9205322db972..e561f207551d 100644
--- a/arch/arm/mach-at91/at91_pmc_ll.c
+++ b/arch/arm/mach-at91/at91_pmc_ll.c
@@ -88,6 +88,8 @@ void at91_pmc_init(void __iomem *pmc_base, unsigned int flags)
 		tmp &= ~AT91_PMC_OSCBYPASS;
 		tmp &= ~AT91_PMC_KEY_MASK;
 		tmp |= AT91_PMC_KEY;
+		if (flags & AT91_PMC_LL_FLAG_MCK_BYPASS)
+			tmp |= AT91_PMC_OSCBYPASS;
 		at91_pmc_write(AT91_CKGR_MOR, tmp);
 
 		tmp = at91_pmc_read(AT91_CKGR_MOR);
diff --git a/arch/arm/mach-at91/include/mach/at91_pmc_ll.h b/arch/arm/mach-at91/include/mach/at91_pmc_ll.h
index 6ec3ae0852c6..85896a01d5b5 100644
--- a/arch/arm/mach-at91/include/mach/at91_pmc_ll.h
+++ b/arch/arm/mach-at91/include/mach/at91_pmc_ll.h
@@ -16,6 +16,7 @@
 #define AT91_PMC_LL_FLAG_H32MXDIV	(1 << 3)
 #define AT91_PMC_LL_FLAG_PMC_UTMI	(1 << 4)
 #define AT91_PMC_LL_FLAG_GCSR		(1 << 5)
+#define AT91_PMC_LL_FLAG_MCK_BYPASS	(1 << 6)
 
 #define AT91_PMC_LL_AT91RM9200	(0)
 #define AT91_PMC_LL_AT91SAM9260	(0)
@@ -30,6 +31,10 @@
 #define AT91_PMC_LL_SAMA5D2	(AT91_PMC_LL_FLAG_SAM9X5_PMC | \
 				 AT91_PMC_LL_FLAG_MEASURE_XTAL | \
 				 AT91_PMC_LL_FLAG_PMC_UTMI)
+/* This assumes a crystal on both XIN and XOUT. If your board
+ * instead has an extenal oscillator on XIN only,
+ * AT91_PMC_LL_FLAG_MCK_BYPASS needs to be OR`ed in as well
+ */
 #define AT91_PMC_LL_SAMA5D3	(AT91_PMC_LL_FLAG_SAM9X5_PMC | \
 				 AT91_PMC_LL_FLAG_DISABLE_RC | \
 				 AT91_PMC_LL_FLAG_PMC_UTMI)
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
