Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x233.google.com ([2a00:1450:400c:c09::233])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzVtR-0007pz-GX
 for barebox@lists.infradead.org; Thu, 19 Nov 2015 20:33:22 +0000
Received: by wmww144 with SMTP id w144so33996675wmw.0
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:24 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:36:03 +0100
Message-Id: <1448048172-10080-11-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 10/19] mtd: nand_mrvl_nfc: Fix num-cs property parsing
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

The "num-cs" property does not encode flashes CS line but number
of available CS signals. Fix wrong property parsing to ->cs by
adding proper ->num_cs variable to host struct.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Tested-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 95abd4ddf243..5374e64965a2 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -153,6 +153,7 @@ struct mrvl_nand_host {
 	int			ecc_strength;
 	int			ecc_step;
 
+	int			num_cs;		/* avaiable CS signals */
 	int			cs;		/* selected chip 0/1 */
 	int			use_ecc;	/* use HW ECC ? */
 	int			use_spare;	/* use spare ? */
@@ -929,6 +930,7 @@ static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
 
 	pdata = dev->platform_data;
 	host = xzalloc(sizeof(*host));
+	host->num_cs = 1;
 	host->cs = 0;
 	mtd = &host->mtd;
 	mtd->priv = &host->chip;
@@ -988,7 +990,7 @@ static int mrvl_nand_probe_dt(struct mrvl_nand_host *host)
 
 	if (of_get_property(np, "marvell,nand-keep-config", NULL))
 		host->keep_config = 1;
-	of_property_read_u32(np, "num-cs", &host->cs);
+	of_property_read_u32(np, "num-cs", &host->num_cs);
 	if (of_get_nand_on_flash_bbt(np))
 		host->flash_bbt = 1;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
