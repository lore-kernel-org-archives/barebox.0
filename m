Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKrpP-0001Rx-Tx
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 18:45:45 +0000
Received: from antimon.Speedport_W_504V_Typ_A (p5483101C.dip0.t-ipconnect.de
 [84.131.16.28]) by lynxeye.de (Postfix) with ESMTPA id 37BDC26C2004
 for <barebox@lists.infradead.org>; Wed,  6 Jul 2016 20:44:48 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  6 Jul 2016 20:44:37 +0200
Message-Id: <1467830680-5909-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1467830680-5909-1-git-send-email-dev@lynxeye.de>
References: <1467830680-5909-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 4/7] imx-bbu-nand-fcb: don't drop error return code
To: barebox@lists.infradead.org

bit_to_flip might be negative if any uncorrectable bitflips
occured. Use int instead of unsigned type in order to properly
propagate the error.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 common/imx-bbu-nand-fcb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 72b7b0e..ce00ed4 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -259,8 +259,8 @@ static ssize_t raw_write_page(struct mtd_info *mtd, void *buf, loff_t offset)
 static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
 {
 	int i;
-	int bitflips = 0;
-	u8 parity, np, syndrome, bit_to_flip;
+	int bitflips = 0, bit_to_flip;
+	u8 parity, np, syndrome;
 	u8 *fcb, *ecc;
 	int ret;
 	void *rawpage;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
