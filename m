Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAtHi-0000kw-B3
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 09:31:21 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 11:31:01 +0200
Message-Id: <20190401093106.4595-6-a.fatoum@pengutronix.de>
In-Reply-To: <20190401093106.4595-1-a.fatoum@pengutronix.de>
References: <20190401093106.4595-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 05/10] ARM: at91: remove duplicate get_ddram_size code
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

Both at91_get_ddram_size and at91sama5_get_ddram_size are the
same if is_sdram == false and is_nb == true.

is_sdram is always false, because according to the sama5d{2,3,4}
datasheets, the lowest possible value for AT91_DDRSDRC_MD is 3
(i.e. none of them supports SDR SDRAM).

Therefore have at91sama5_get_ddram_size call at91_get_ddram_size
with is_nb == true and remove the duplicate code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Tested-by: Sam Ravnborg <sam@ravnborg.org>
---
 .../mach-at91/include/mach/at91sam9_ddrsdr.h  | 27 ++-----------------
 1 file changed, 2 insertions(+), 25 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
index a775d3b19691..795eb0ce9a9f 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
@@ -148,6 +148,7 @@ static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
 	cr = readl(base + AT91_DDRSDRC_CR);
 	mdr = readl(base + AT91_DDRSDRC_MDR);
 
+	/* will always be false for sama5d2, sama5d3 or sama5d4 */
 	is_sdram = (mdr & AT91_DDRSDRC_MD) <= AT91_DDRSDRC_MD_LOW_POWER_SDR;
 
 	/* Formula:
@@ -224,31 +225,7 @@ static inline u32 at91sam9n12_get_ddram_size(void)
 #ifdef CONFIG_SOC_SAMA5
 static inline u32 at91sama5_get_ddram_size(void __iomem *base)
 {
-	u32 cr;
-	u32 mdr;
-	u32 size;
-
-	cr = readl(base + AT91_DDRSDRC_CR);
-	mdr = readl(base + AT91_DDRSDRC_MDR);
-
-	/* Formula:
-	 * size = bank << (col + row + 1);
-	 * if (bandwidth == 32 bits)
-	 *	size <<= 1;
-	 */
-	size = 1;
-	/* COL */
-	size += (cr & AT91_DDRSDRC_NC) + 9;
-	/* ROW */
-	size += ((cr & AT91_DDRSDRC_NR) >> 2) + 11;
-	/* BANK */
-	size = ((cr & AT91_DDRSDRC_NB) ? 8 : 4) << size;
-
-	/* bandwidth */
-	if (!(mdr & AT91_DDRSDRC_DBW))
-		size <<= 1;
-
-	return size;
+	return at91_get_ddram_size(base, true);
 }
 #else
 static inline u32 at91sama5_get_ddram_size(void __iomem *base)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
