Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Whwqp-0008L4-L1
 for barebox@lists.infradead.org; Wed, 07 May 2014 08:05:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 May 2014 10:04:39 +0200
Message-Id: <1399449884-19089-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
References: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/14] video: i.MX IPUv3: remove debug leftover
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-v3/imx-ldb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index 7367fbe..bbdbe40 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -178,7 +178,7 @@ static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di)
 		dev_err(ldb->dev, "failed to set display clock parent: %s\n", strerror(-ret));
 		return ret;
 	}
-printk("%s: %d\n", __func__, di);
+
 	val = readl(gpr3);
 	shift = (imx_ldb_ch->chno == 0) ? 6 : 8;
 	val &= ~(3 << shift);
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
