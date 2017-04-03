Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cuzeN-0007YN-FL
 for barebox@lists.infradead.org; Mon, 03 Apr 2017 10:55:58 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  3 Apr 2017 12:55:19 +0200
Message-Id: <20170403105523.16797-4-s.trumtrar@pengutronix.de>
In-Reply-To: <20170403105523.16797-1-s.trumtrar@pengutronix.de>
References: <20170403105523.16797-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/7] net: designware: add dwmac-3.72a compatible
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/designware.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index bd20a8793ae2..1d3a68384edb 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -520,6 +520,9 @@ static __maybe_unused struct of_device_id dwc_ether_compatible[] = {
 		.compatible = "snps,dwmac-3.70a",
 		.data = &dwmac_370a_drvdata,
 	}, {
+		.compatible = "snps,dwmac-3.72a",
+		.data = &dwmac_370a_drvdata,
+	}, {
 		/* sentinel */
 	}
 };
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
