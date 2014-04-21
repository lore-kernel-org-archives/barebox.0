Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WcKdh-0001VX-Sj
 for barebox@lists.infradead.org; Mon, 21 Apr 2014 20:16:31 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p54831C5A.dip0.t-ipconnect.de [84.131.28.90])
 by lynxeye.de (Postfix) with ESMTPA id 8E42818B425B
 for <barebox@lists.infradead.org>; Mon, 21 Apr 2014 22:15:37 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 21 Apr 2014 22:15:26 +0200
Message-Id: <1398111326-21783-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1398111326-21783-1-git-send-email-dev@lynxeye.de>
References: <1398111326-21783-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 5/5] video: imx-ipu-v3: fix possible NULL ptr dereference
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/video/imx-ipu-v3/ipu-dmfc.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/ipu-dmfc.c b/drivers/video/imx-ipu-v3/ipu-dmfc.c
index 7b54e25001c6..61704f4a9c06 100644
--- a/drivers/video/imx-ipu-v3/ipu-dmfc.c
+++ b/drivers/video/imx-ipu-v3/ipu-dmfc.c
@@ -146,16 +146,18 @@ EXPORT_SYMBOL_GPL(ipu_dmfc_disable_channel);
 static int ipu_dmfc_setup_channel(struct dmfc_channel *dmfc, int slots,
 		int segment, int burstsize)
 {
-	struct ipu_dmfc_priv *priv = dmfc->priv;
+	struct ipu_dmfc_priv *priv;
 	u32 val, field;
 
+	if (!dmfc)
+		return -EINVAL;
+
+	priv = dmfc->priv;
+
 	dev_dbg(priv->dev,
 			"dmfc: using %d slots starting from segment %d for IPU channel %d\n",
 			slots, segment, dmfc->data->ipu_channel);
 
-	if (!dmfc)
-		return -EINVAL;
-
 	switch (slots) {
 	case 1:
 		field = DMFC_FIFO_SIZE_64;
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
