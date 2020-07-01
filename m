Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVE1-00051I-Vz
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:24:05 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 07:23:33 +0200
Message-Id: <20200701052340.9462-22-a.fatoum@pengutronix.de>
In-Reply-To: <20200701052340.9462-1-a.fatoum@pengutronix.de>
References: <20200701052340.9462-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 21/28] at91: debug_ll: remove duplicated
 IS_ENABLED(CONFIG_DEBUG_LL) condition
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

There are three users of at91_dbgu_setup_ll and all already call this
function only when IS_ENABLED(CONFIG_DEBUG_LL). Remove the duplicated
condition from the function itself. This allows us to use the function
for pbl_set_console use later on, even with DEBUG_LL disabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/at91_dbgu.h | 34 ++++++++++-----------
 1 file changed, 16 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91_dbgu.h b/arch/arm/mach-at91/include/mach/at91_dbgu.h
index 0ba9cdae10ce..29aaa2dfe154 100644
--- a/arch/arm/mach-at91/include/mach/at91_dbgu.h
+++ b/arch/arm/mach-at91/include/mach/at91_dbgu.h
@@ -94,30 +94,28 @@ static inline void at91_dbgu_setup_ll(void __iomem *dbgu_base,
 				      unsigned mck,
 				      unsigned baudrate)
 {
-	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
-		u32 brgr = mck / (baudrate * 16);
+	u32 brgr = mck / (baudrate * 16);
 
-		if ((mck / (baudrate * 16)) % 10 >= 5)
-			brgr++;
+	if ((mck / (baudrate * 16)) % 10 >= 5)
+		brgr++;
 
-		writel(~0, dbgu_base + AT91_DBGU_IDR);
+	writel(~0, dbgu_base + AT91_DBGU_IDR);
 
-		writel(AT91_DBGU_RSTRX
-		       | AT91_DBGU_RSTTX
-		       | AT91_DBGU_RXDIS
-		       | AT91_DBGU_TXDIS,
-		       dbgu_base + AT91_DBGU_CR);
+	writel(AT91_DBGU_RSTRX
+	       | AT91_DBGU_RSTTX
+	       | AT91_DBGU_RXDIS
+	       | AT91_DBGU_TXDIS,
+	       dbgu_base + AT91_DBGU_CR);
 
-		writel(brgr, dbgu_base + AT91_DBGU_BRGR);
+	writel(brgr, dbgu_base + AT91_DBGU_BRGR);
 
-		writel(AT91_DBGU_PAR_NONE
-		       | AT91_DBGU_CHMODE_NORMAL
-		       | AT91_DBGU_CHRL_8BIT
-		       | AT91_DBGU_NBSTOP_1BIT,
-		       dbgu_base + AT91_DBGU_MR);
+	writel(AT91_DBGU_PAR_NONE
+	       | AT91_DBGU_CHMODE_NORMAL
+	       | AT91_DBGU_CHRL_8BIT
+	       | AT91_DBGU_NBSTOP_1BIT,
+	       dbgu_base + AT91_DBGU_MR);
 
-		writel(AT91_DBGU_RXEN | AT91_DBGU_TXEN, dbgu_base + AT91_DBGU_CR);
-	}
+	writel(AT91_DBGU_RXEN | AT91_DBGU_TXEN, dbgu_base + AT91_DBGU_CR);
 }
 
 #endif
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
