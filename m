Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYGzt-00068f-Df
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 12:53:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 Dec 2011 13:52:57 +0100
Message-Id: <1323262387-8012-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
References: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/11] mci s3c: remove unused code
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/s3c.c |   26 --------------------------
 1 files changed, 0 insertions(+), 26 deletions(-)

diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index f97e13a..89c8168 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -176,32 +176,6 @@ static void s3c_finish_request(struct device_d *hw_dev)
 	/* TODO ensure the engines are stopped */
 }
 
-/* TODO GPIO feature is required for this architecture */
-static unsigned gpio_get_value(unsigned val)
-{
-	return 0;
-}
-
-/**
- * Detect if a card is plugged in
- * @param hw_dev Host interface instance
- * @return 0 if a card is plugged in
- *
- * Note: If there is no GPIO registered to detect if a card is present, we
- * assume a card _is_ present.
- */
-static int s3c_mci_card_present(struct device_d *hw_dev)
-{
-	struct s3c_mci_platform_data *pd = GET_HOST_PDATA(hw_dev);
-	int ret;
-
-	if (pd->gpio_detect == 0)
-		return 0;	/* assume the card is present */
-
-	ret = gpio_get_value(pd->gpio_detect) ? 0 : 1;
-	return ret ^ pd->detect_invert;
-}
-
 /**
  * Setup a new clock frequency on this MCI bus
  * @param hw_dev Host interface instance
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
