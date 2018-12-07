Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVDSs-0006aU-Jd
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 10:34:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Dec 2018 11:34:04 +0100
Message-Id: <20181207103405.27365-7-s.hauer@pengutronix.de>
In-Reply-To: <20181207103405.27365-1-s.hauer@pengutronix.de>
References: <20181207103405.27365-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/7] usb: gadget: fastboot: simplify reboot
To: Barebox List <barebox@lists.infradead.org>

Now that we end the fastboot session when shutting down barebox
we can call restart_machine() directly and not in the completion
callback of the answer request.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index f6eb30dec4..067b43ebed 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -622,15 +622,9 @@ int fastboot_tx_print(struct f_fastboot *f_fb, enum fastboot_msg_type type,
 	return fastboot_tx_write(f_fb, buf, n);
 }
 
-static void compl_do_reset(struct usb_ep *ep, struct usb_request *req)
-{
-	restart_machine();
-}
-
 static void cb_reboot(struct f_fastboot *f_fb, const char *cmd)
 {
-	f_fb->in_req->complete = compl_do_reset;
-	fastboot_tx_print(f_fb, FASTBOOT_MSG_OKAY, "");
+	restart_machine();
 }
 
 static int strcmp_l1(const char *s1, const char *s2)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
