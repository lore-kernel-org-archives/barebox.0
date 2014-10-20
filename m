Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XgHP8-0006sS-1v
 for barebox@lists.infradead.org; Mon, 20 Oct 2014 18:10:02 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 350A326C2002
 for <barebox@lists.infradead.org>; Mon, 20 Oct 2014 20:09:10 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 20 Oct 2014 20:15:55 +0200
Message-Id: <1413828961-12605-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/7] imx: ipu-v3: fix typo leading to build warning
To: barebox@lists.infradead.org

This PAGE_SIZE clearly should not be there.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/video/imx-ipu-v3/ipu-common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/imx-ipu-v3/ipu-common.c b/drivers/video/imx-ipu-v3/ipu-common.c
index c602363..f13cf01 100644
--- a/drivers/video/imx-ipu-v3/ipu-common.c
+++ b/drivers/video/imx-ipu-v3/ipu-common.c
@@ -796,7 +796,7 @@ static int ipu_probe(struct device_d *dev)
 	dev_dbg(dev, "vdi:      0x%p\n",
 			ipu_base + devtype->vdi_ofs);
 
-	ipu->cm_reg = ipu_base + devtype->cm_ofs, PAGE_SIZE;
+	ipu->cm_reg = ipu_base + devtype->cm_ofs;
 	ipu->idmac_reg = ipu_base + devtype->cm_ofs + IPU_CM_IDMAC_REG_OFS;
 	ipu->cpmem_base = ipu_base + devtype->cpmem_ofs;
 
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
