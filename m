Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R33i0-0007QU-BE
	for barebox@lists.infradead.org; Mon, 12 Sep 2011 10:25:48 +0000
Received: by mail-bw0-f49.google.com with SMTP id t2so2850975bka.36
	for <barebox@lists.infradead.org>; Mon, 12 Sep 2011 03:25:48 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 12 Sep 2011 14:25:46 +0400
Message-Id: <1315823146-11632-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] usb.c: warning on USB_MAXINTERFACES overflow
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/usb/core/usb.c |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index b01a797..5dc8afe 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -207,6 +207,16 @@ static int usb_parse_config(struct usb_device *dev, unsigned char *buffer, int c
 			     &buffer[index])->bInterfaceNumber != curr_if_num) {
 				/* this is a new interface, copy new desc */
 				ifno = dev->config.no_of_if;
+				/* if ifno > USB_MAXINTERFACES, then
+				 * next memcpy() will corrupt dev->config
+				 */
+				if (ifno > USB_MAXINTERFACES) {
+					printf("ifno = %d > "
+						"USB_MAXINTERFACES = %d !\n",
+						ifno,
+						USB_MAXINTERFACES);
+					break;
+				}
 				dev->config.no_of_if++;
 				memcpy(&dev->config.if_desc[ifno],
 					&buffer[index], buffer[index]);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
