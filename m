Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XtfTx-0002ci-Ux
 for barebox@lists.infradead.org; Wed, 26 Nov 2014 16:30:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Nov 2014 17:29:47 +0100
Message-Id: <1417019394-23683-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417019394-23683-1-git-send-email-s.hauer@pengutronix.de>
References: <1417019394-23683-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/11] net: fec_imx: Add i.MX6sx compatible entry
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 4ed5e8e..a2852ed 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -772,6 +772,9 @@ static __maybe_unused struct of_device_id imx_fec_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx6q-fec",
 		.data = FEC_TYPE_IMX6,
+	},  {
+		.compatible = "fsl,imx6sx-fec",
+		.data = FEC_TYPE_IMX6,
 	}, {
 		/* sentinel */
 	}
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
