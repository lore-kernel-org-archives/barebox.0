Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cltaY-0007UX-77
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 08:38:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Mar 2017 09:37:58 +0100
Message-Id: <20170309083759.32239-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] usb: gadget: print a meaningful error message
To: Barebox List <barebox@lists.infradead.org>

We can only register one USB multi gadget, so check for it being
already registered and print a meaningful error message if it is.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/multi.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/usb/gadget/multi.c b/drivers/usb/gadget/multi.c
index 13fa622f01..a2cfc8d850 100644
--- a/drivers/usb/gadget/multi.c
+++ b/drivers/usb/gadget/multi.c
@@ -234,6 +234,11 @@ static struct usb_composite_driver multi_driver = {
 
 int usb_multi_register(struct f_multi_opts *opts)
 {
+	if (gadget_multi_opts) {
+		pr_err("USB multi gadget already registered\n");
+		return -EBUSY;
+	}
+
 	gadget_multi_opts = opts;
 
 	return usb_composite_probe(&multi_driver);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
