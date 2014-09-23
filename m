Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XWLTt-0005jm-KQ
 for barebox@lists.infradead.org; Tue, 23 Sep 2014 08:29:53 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Tue, 23 Sep 2014 16:29:15 +0800
Message-ID: <1411460958-27491-2-git-send-email-voice.shen@atmel.com>
In-Reply-To: <1411460958-27491-1-git-send-email-voice.shen@atmel.com>
References: <1411460958-27491-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH v2 1/4] net: macb: enable GEM with only FE feature
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

If the GEM is used, however only FE featuren enabled, then it can not
support FBLDO configured as 16, and no RGMII/GMII configuratin bit.

So, in order to support GEM only with FE feature enabled, we do:
  - using default value for FBLDO.
  - using same bit for RMII/MII configuration as GEM for RGMII/GMII.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---
Changes in v2:
  - using the same bit for RMII/MII configuration for GEM only with FE feature.

 drivers/net/macb.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 12a2a3c..876af0d 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -304,7 +304,6 @@ static void macb_configure_dma(struct macb_device *bp)
 	if (macb_is_gem(bp)) {
 		dmacfg = gem_readl(bp, DMACFG) & ~GEM_BF(RXBS, -1L);
 		dmacfg |= GEM_BF(RXBS, bp->rx_buffer_size / RX_BUFFER_MULTIPLE);
-		dmacfg |= GEM_BF(FBLDO, 16);
 		dmacfg |= GEM_BIT(TXPBMS) | GEM_BF(RXBMS, -1L);
 		dmacfg |= GEM_BIT(DDRP);
 		dmacfg &= ~GEM_BIT(ENDIA);
@@ -352,7 +351,10 @@ static void macb_init(struct macb_device *macb)
 		break;
 	case PHY_INTERFACE_MODE_RMII:
 		if (IS_ENABLED(CONFIG_ARCH_AT91))
-			val = MACB_BIT(RMII) | MACB_BIT(CLKEN);
+			if (macb_is_gem(macb))
+				val = GEM_BIT(RGMII);
+			else
+				val = MACB_BIT(RMII) | MACB_BIT(CLKEN);
 		else
 			val = 0;
 		break;
-- 
2.1.0.24.g4109c28


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
