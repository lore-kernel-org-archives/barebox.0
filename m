Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ueh9f-0002Qk-1A
 for barebox@lists.infradead.org; Tue, 21 May 2013 07:38:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 21 May 2013 09:38:15 +0200
Message-Id: <1369121895-11282-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369121895-11282-1-git-send-email-s.hauer@pengutronix.de>
References: <1369121895-11282-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] net: fec: Add imx25 compatible property
To: barebox@lists.infradead.org

The i.MX53 fec claims to be compatible to i.MX25 and i.MX53. In barebox
we do not have to make differences between i.MX25 and i.MX27 though, so
just fall back to i.MX27.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 1a85d15..96c4ac3 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -746,6 +746,9 @@ static void fec_remove(struct device_d *dev)
 
 static __maybe_unused struct of_device_id imx_fec_dt_ids[] = {
 	{
+		.compatible = "fsl,imx25-fec",
+		.data = FEC_TYPE_IMX27,
+	}, {
 		.compatible = "fsl,imx27-fec",
 		.data = FEC_TYPE_IMX27,
 	}, {
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
