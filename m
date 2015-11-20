Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x234.google.com ([2a00:1450:400c:c09::234])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzVtS-0007q0-2L
 for barebox@lists.infradead.org; Thu, 19 Nov 2015 20:33:22 +0000
Received: by wmdw130 with SMTP id w130so31972416wmd.0
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:24 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:36:04 +0100
Message-Id: <1448048172-10080-12-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 11/19] mtd: nand_mrvl_nfc: Get ecc parameters from DT
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

With DT helpers for ECC step size and strength, now use them on
Marvell NAND driver.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Tested-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 5374e64965a2..8dcbc3dc045e 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -994,6 +994,14 @@ static int mrvl_nand_probe_dt(struct mrvl_nand_host *host)
 	if (of_get_nand_on_flash_bbt(np))
 		host->flash_bbt = 1;
 
+	host->ecc_strength = of_get_nand_ecc_strength(np);
+	if (host->ecc_strength < 0)
+		host->ecc_strength = 0;
+
+	host->ecc_step = of_get_nand_ecc_step_size(np);
+	if (host->ecc_step < 0)
+		host->ecc_step = 0;
+
 	return 0;
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
