Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aXYPv-0002LM-Sb
 for barebox@lists.infradead.org; Sun, 21 Feb 2016 18:07:37 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 21 Feb 2016 19:06:30 +0100
Message-Id: <1456077990-15003-3-git-send-email-akurz@blala.de>
In-Reply-To: <1456077990-15003-1-git-send-email-akurz@blala.de>
References: <1456077990-15003-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 3/3] net ep93xx mii: do not supress MII preamble transmission
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

PHY like the ks8721bl used on the edb9302 and similare evaluation boards
will initially not respond to the ep93xx_phy_read/write functions when
the MII-preamble is supressed. The supression is switched on by default
and must be switched off by clearing bit 8, see also EP93xx Users guide.
Removing the orphaned MII_SUPPRESS_PREAMBLE config option, note:
setting MII_SUPPRESS_PREAMBLE would actually enable the preamble transmission.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 drivers/net/ep93xx.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index d2458eb..226a3c6 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -599,14 +599,12 @@ static int ep93xx_phy_read(struct mii_bus *bus, int phy_addr, int phy_reg)
 	pr_debug("+ep93xx_phy_read\n");
 
 	/*
-	 * Save the current SelfCTL register value.  Set MAC to suppress
+	 * Save the current SelfCTL register value.  Set MAC to send
 	 * preamble bits.  Wait for any previous MII command to complete
 	 * before issuing the new command.
 	 */
 	self_ctl = readl(&regs->selfctl);
-#if defined(CONFIG_MII_SUPPRESS_PREAMBLE) /* TODO */
 	writel(self_ctl & ~(1 << 8), &regs->selfctl);
-#endif	/* defined(CONFIG_MII_SUPPRESS_PREAMBLE) */
 
 	while (readl(&regs->miists) & MIISTS_BUSY)
 		; /* noop */
@@ -642,14 +640,12 @@ static int ep93xx_phy_write(struct mii_bus *bus, int phy_addr,
 	pr_debug("+ep93xx_phy_write\n");
 
 	/*
-	 * Save the current SelfCTL register value.  Set MAC to suppress
+	 * Save the current SelfCTL register value.  Set MAC to send
 	 * preamble bits.  Wait for any previous MII command to complete
 	 * before issuing the new command.
 	 */
 	self_ctl = readl(&regs->selfctl);
-#if defined(CONFIG_MII_SUPPRESS_PREAMBLE) /* TODO */
 	writel(self_ctl & ~(1 << 8), &regs->selfctl);
-#endif	/* defined(CONFIG_MII_SUPPRESS_PREAMBLE) */
 
 	while (readl(&regs->miists) & MIISTS_BUSY)
 		; /* noop */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
