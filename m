Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d4768-0005BL-VN
 for barebox@lists.infradead.org; Fri, 28 Apr 2017 14:42:18 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 28 Apr 2017 16:41:39 +0200
Message-Id: <86e09ed3bf8ded8bfa05d34e862a153f32ccf0ed.1493390425.git-series.s.trumtrar@pengutronix.de>
In-Reply-To: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
References: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
In-Reply-To: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
References: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 3/8] net: designware: add dwmac-3.72a compatible
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

This compatible will be needed for Arria10.

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
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
