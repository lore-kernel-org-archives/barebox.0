Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tod6R-0003pb-7U
 for barebox@lists.infradead.org; Fri, 28 Dec 2012 16:48:11 +0000
Received: from mail632.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id BC4D1FF9B53
 for <barebox@lists.infradead.org>; Fri, 28 Dec 2012 18:00:48 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 28 Dec 2012 17:46:30 +0100
Message-Id: <1356713191-9614-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1356713191-9614-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121228164327.GB7216@game.jcrosoft.org>
 <1356713191-9614-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] usb: at91_udc: request and configure vbus pin via gpiolib
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/usb/gadget/at91_udc.c |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 8a678f9..3899db2 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -1497,6 +1497,13 @@ static int __init at91udc_probe(struct device_d *dev)
 	clk_disable(udc->iclk);
 
 	if (gpio_is_valid(udc->board.vbus_pin)) {
+		retval = gpio_request(udc->board.vbus_pin, "udc_vbus");
+		if (retval < 0) {
+			dev_err(dev, "request vbus pin failed\n");
+			goto fail0a;
+		}
+		gpio_direction_input(udc->board.vbus_pin);
+
 		/*
 		 * Get the initial state of VBUS - we cannot expect
 		 * a pending interrupt.
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
