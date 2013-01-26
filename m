Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tz6xB-0006XU-U8
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 14:41:59 +0000
Received: from mail174.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id C0814FF88AE
 for <barebox@lists.infradead.org>; Sat, 26 Jan 2013 15:56:21 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 26 Jan 2013 15:40:29 +0100
Message-Id: <1359211229-15058-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] gpio_keys: fix loop on buttons for request and
 configuration
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/input/gpio_keys.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index 6f3c912..543ad1a 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -79,7 +79,7 @@ static int __init gpio_keys_probe(struct device_d *dev)
 	pdata->recv_fifo = kfifo_alloc(pdata->fifo_size);
 
 	for (i = 0; i < pdata->nbuttons; i++) {
-		gpio = pdata->buttons->gpio;
+		gpio = pdata->buttons[i].gpio;
 		ret = gpio_request(gpio, "gpio_keys");
 		if (ret) {
 			pr_err("gpio_keys: (%d) can not be requested\n", gpio);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
