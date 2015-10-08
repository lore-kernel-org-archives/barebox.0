Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x233.google.com ([2a00:1450:400c:c05::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkJKp-0001lv-Qg
 for barebox@lists.infradead.org; Thu, 08 Oct 2015 22:06:48 +0000
Received: by wicge5 with SMTP id ge5so44529880wic.0
 for <barebox@lists.infradead.org>; Thu, 08 Oct 2015 15:06:29 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  9 Oct 2015 00:06:10 +0200
Message-Id: <1444341979-19157-9-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 08/17] mtd: nand_mrvl_nfc: Fix num-cs property parsing
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

The "num-cs" property does not encode flashes CS line but number
of available CS signals. Fix wrong property parsing to ->cs by
adding proper ->num_cs variable to host struct.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: barebox@lists.infradead.org
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 9d1803ccc6ba..a472d072fd68 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -152,6 +152,7 @@ struct mrvl_nand_host {
 	int			ecc_strength;
 	int			ecc_step;
 
+	int			num_cs;		/* avaiable CS signals */
 	int			cs;		/* selected chip 0/1 */
 	int			use_ecc;	/* use HW ECC ? */
 	int			use_spare;	/* use spare ? */
@@ -928,6 +929,7 @@ static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
 
 	pdata = dev->platform_data;
 	host = xzalloc(sizeof(*host));
+	host->num_cs = 1;
 	host->cs = 0;
 	mtd = &host->mtd;
 	mtd->priv = &host->chip;
@@ -981,7 +983,7 @@ static int mrvl_nand_probe_dt(struct mrvl_nand_host *host)
 {
 	struct device_node *np = host->dev->device_node;
 
-	of_property_read_u32(np, "num-cs", &host->cs);
+	of_property_read_u32(np, "num-cs", &host->num_cs);
 	if (of_get_nand_on_flash_bbt(np))
 		host->flash_bbt = 1;
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
