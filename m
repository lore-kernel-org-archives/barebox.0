Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x235.google.com ([2a00:1450:400c:c05::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkJKq-0001li-RG
 for barebox@lists.infradead.org; Thu, 08 Oct 2015 22:06:49 +0000
Received: by wiclk2 with SMTP id lk2so47136801wic.0
 for <barebox@lists.infradead.org>; Thu, 08 Oct 2015 15:06:28 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  9 Oct 2015 00:06:07 +0200
Message-Id: <1444341979-19157-6-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 05/17] mtd: nand_mrvl_nfc: Remove keep_config
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

keep_config and it's corresponding DT property is meant for the
Linux kernel to keep the config setup by a boot-loader. As we
are the bootloader and it is not used at all, get rid of it.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: barebox@lists.infradead.org
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index bdf949de0e7f..d220900e10db 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -149,7 +149,6 @@ struct mrvl_nand_host {
 
 	unsigned char		*data_buff;
 
-	int			keep_config;
 	int			ecc_strength;
 	int			ecc_step;
 
@@ -962,7 +961,6 @@ static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
 	clk_enable(host->core_clk);
 
 	if (pdata) {
-		host->keep_config = pdata->keep_config;
 		host->flash_bbt = pdata->flash_bbt;
 		host->ecc_strength = pdata->ecc_strength;
 		host->ecc_step = pdata->ecc_step_size;
@@ -981,8 +979,6 @@ static int mrvl_nand_probe_dt(struct mrvl_nand_host *host)
 {
 	struct device_node *np = host->dev->device_node;
 
-	if (of_get_property(np, "marvell,nand-keep-config", NULL))
-		host->keep_config = 1;
 	of_property_read_u32(np, "num-cs", &host->cs);
 	if (of_get_nand_on_flash_bbt(np))
 		host->flash_bbt = 1;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
