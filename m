Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVDSe-0006Z0-Hw
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 10:34:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Dec 2018 11:34:05 +0100
Message-Id: <20181207103405.27365-8-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] usb: gadget: fastboot: print fastboot messages also to
 the logs
To: Barebox List <barebox@lists.infradead.org>

It's nice to also see on the barebox side what is going on with
fastboot, so print the messages to the logs also.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 067b43ebed..bdf0c807df 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -608,8 +608,11 @@ int fastboot_tx_print(struct f_fastboot *f_fb, enum fastboot_msg_type type,
 		break;
 	case FASTBOOT_MSG_FAIL:
 		f_fb->active = false;
+		pr_err("%pV\n", &vaf);
 		break;
 	case FASTBOOT_MSG_INFO:
+		pr_info("%pV\n", &vaf);
+		break;
 	case FASTBOOT_MSG_DATA:
 		break;
 	}
@@ -702,12 +705,12 @@ static void rx_handler_dl_image(struct usb_ep *ep, struct usb_request *req)
 		req->length = EP_BUFFER_SIZE;
 		close(f_fb->download_fd);
 
+		printf("\n");
+
 		fastboot_tx_print(f_fb, FASTBOOT_MSG_INFO, "Downloading %d bytes finished",
 				  f_fb->download_bytes);
 
 		fastboot_tx_print(f_fb, FASTBOOT_MSG_OKAY, "");
-
-		printf("\n");
 	}
 
 	req->actual = 0;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
