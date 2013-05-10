Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uahjy-0001Kq-DL
 for barebox@lists.infradead.org; Fri, 10 May 2013 07:27:43 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 10 May 2013 11:27:14 +0400
Message-Id: <1368170834-28657-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1368170834-28657-1-git-send-email-shc_work@mail.ru>
References: <1368170834-28657-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] GPIO: Remove unneeded "gpio_is_valid" calls
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mci/atmel_mci.c      | 3 +--
 drivers/w1/masters/w1-gpio.c | 6 ++----
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index c5fd306..9570d36 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -608,8 +608,7 @@ static int atmci_probe(struct device_d *hw_dev)
 	return 0;
 
 err_gpio_cd_request:
-	if (gpio_is_valid(pd->detect_pin))
-		gpio_free(pd->detect_pin);
+	gpio_free(pd->detect_pin);
 
 	return ret;
 }
diff --git a/drivers/w1/masters/w1-gpio.c b/drivers/w1/masters/w1-gpio.c
index 946e9d3..6e017c6 100644
--- a/drivers/w1/masters/w1-gpio.c
+++ b/drivers/w1/masters/w1-gpio.c
@@ -88,14 +88,12 @@ static int __init w1_gpio_probe(struct device_d *dev)
 	if (pdata->enable_external_pullup)
 		pdata->enable_external_pullup(1);
 
-	if (gpio_is_valid(pdata->ext_pullup_enable_pin))
-		gpio_set_value(pdata->ext_pullup_enable_pin, 1);
+	gpio_set_value(pdata->ext_pullup_enable_pin, 1);
 
 	return 0;
 
  free_gpio_ext_pu:
-	if (gpio_is_valid(pdata->ext_pullup_enable_pin))
-		gpio_free(pdata->ext_pullup_enable_pin);
+	gpio_free(pdata->ext_pullup_enable_pin);
  free_gpio:
 	gpio_free(pdata->pin);
  free_master:
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
