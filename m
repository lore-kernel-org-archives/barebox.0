Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x243.google.com ([2a00:1450:400c:c0c::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d5sRM-00019v-Jo
 for barebox@lists.infradead.org; Wed, 03 May 2017 11:27:30 +0000
Received: by mail-wr0-x243.google.com with SMTP id v42so22250653wrc.3
 for <barebox@lists.infradead.org>; Wed, 03 May 2017 04:27:07 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  3 May 2017 14:26:59 +0300
Message-Id: <20170503112659.7506-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] net: rtl8139: drop unused rtl8139_intr_mask constant
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/rtl8139.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/rtl8139.c b/drivers/net/rtl8139.c
index a9eb865358..cfa34a2f2a 100644
--- a/drivers/net/rtl8139.c
+++ b/drivers/net/rtl8139.c
@@ -492,10 +492,6 @@ static int rtl8139_eth_send(struct eth_device *edev, void *packet,
 	return 0;
 }
 
-static const u16 rtl8139_intr_mask =
-		PCIErr | PCSTimeout | RxUnderrun | RxOverflow | RxFIFOOver |
-		TxErr | TxOK | RxErr | RxOK;
-
 static int rtl8139_eth_rx(struct eth_device *edev)
 {
 	struct rtl8139_priv *priv = edev->priv;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
