Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFhMH-0004mC-5M
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 08:48:26 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 13 Mar 2013 09:48:14 +0100
Message-Id: <1363164494-3614-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1363164494-3614-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1363164494-3614-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/2] net: macb: turn off endian_swp_pkt_en
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, Nicolas Ferre <nicolas.ferre@atmel.com>

The core has a bit for swapping packet data endianism.
Reset default from Cadence is off. Xilinx however, that uses this core on the
Zynq SoCs, opted for on. Turn it off for all devices.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c | 1 +
 drivers/net/macb.h | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index a12eea7..005234e 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -277,6 +277,7 @@ static void macb_configure_dma(struct macb_device *bp)
 		dmacfg |= GEM_BF(FBLDO, 16);
 		dmacfg |= GEM_BIT(TXPBMS) | GEM_BF(RXBMS, -1L);
 		dmacfg |= GEM_BIT(DDRP);
+		dmacfg &= ~GEM_BIT(ENDIA);
 		gem_writel(bp, DMACFG, dmacfg);
 	}
 }
diff --git a/drivers/net/macb.h b/drivers/net/macb.h
index cadd561..1be9ff9 100644
--- a/drivers/net/macb.h
+++ b/drivers/net/macb.h
@@ -168,6 +168,8 @@
 /* Bitfields in DMACFG. */
 #define GEM_FBLDO_OFFSET			0
 #define GEM_FBLDO_SIZE				5
+#define GEM_ENDIA_OFFSET			7
+#define GEM_ENDIA_SIZE				1
 #define GEM_RXBMS_OFFSET			8
 #define GEM_RXBMS_SIZE				2
 #define GEM_TXPBMS_OFFSET			10
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
