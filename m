Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3IZZ-0006uF-Ih
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 06:36:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 08:35:42 +0200
Message-Id: <1434090946-6574-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434090946-6574-1-git-send-email-s.hauer@pengutronix.de>
References: <1434090946-6574-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/10] imx-bbu-nand-fcb: Use barebox partition instead of
 whole device
To: Barebox List <barebox@lists.infradead.org>

We used to use nand0 device for storing barebox and made the assumption
that there is enough space at the beginning of the first device. Instead,
use the barebox partition directly. This requires that the partition
where barebox should be stored is named 'barebox', that is the case for
all boards currently.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 5b984d4..ca7df97 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -370,7 +370,7 @@ static int imx6_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *da
 	if (ret)
 		return ret;
 
-	bcb_cdev = cdev_by_name("nand0");
+	bcb_cdev = cdev_by_name(handler->devicefile);
 	if (!bcb_cdev) {
 		pr_err("%s: No FCB device!\n", __func__);
 		return -ENODEV;
@@ -478,7 +478,7 @@ int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
 	int ret;
 
 	handler = xzalloc(sizeof(*handler));
-	handler->devicefile = "/dev/nand0";
+	handler->devicefile = "nand0.barebox";
 	handler->name = name;
 	handler->flags = flags;
 	handler->handler = imx6_bbu_nand_update;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
