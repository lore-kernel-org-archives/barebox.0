Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8ZmE-0005BB-6m
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 18:22:19 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 29 Jan 2014 22:21:48 +0400
Message-Id: <1391019709-30606-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1391019709-30606-1-git-send-email-shc_work@mail.ru>
References: <1391019709-30606-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/4] gadget: at91: Fix uninitialized variable
To: barebox@lists.infradead.org

Variable udc is used unitialized for DBG(xxx).

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/usb/gadget/at91_udc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index acd9e44..6eeef7d 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -1417,7 +1417,7 @@ static struct poller_struct poller = {
 
 static int __init at91udc_probe(struct device_d *dev)
 {
-	struct at91_udc	*udc;
+	struct at91_udc	*udc = &controller;
 	int		retval;
 
 	if (!dev->platform_data) {
@@ -1427,7 +1427,6 @@ static int __init at91udc_probe(struct device_d *dev)
 	}
 
 	/* init software state */
-	udc = &controller;
 	udc->dev = dev;
 	udc->board = *(struct at91_udc_data *) dev->platform_data;
 	udc->enabled = 0;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
