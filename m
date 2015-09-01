Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZWkzN-00075T-Oh
 for barebox@lists.infradead.org; Tue, 01 Sep 2015 12:48:38 +0000
Received: by lbvd4 with SMTP id d4so41916097lbv.3
 for <barebox@lists.infradead.org>; Tue, 01 Sep 2015 05:48:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  1 Sep 2015 15:48:07 +0300
Message-Id: <1441111688-25418-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] usb: ehci: fix include/usb/usb.h:'struct
 usb_configuration' misuse
To: barebox@lists.infradead.org

See the commit

    commit 245069bcef15ecc19db616a967501349b76c84d0
    Author: Sascha Hauer <s.hauer@pengutronix.de>
    Date:   Thu Jul 10 11:36:12 2014 +0200

        USB: introduce usb_interface/usb_configuration structs

On little endian systems like ARM the le16_to_cpus() macro
is a no op, defined as:

    #define le16_to_cpus __le16_to_cpus
    #define __le16_to_cpus(x) do {} while (0)

So struct usb_configuration field misuse was discovered
on big-endian MIPS machine.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/usb/core/usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 9073fff..f8d6014 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -191,7 +191,7 @@ static int usb_parse_config(struct usb_device *dev, unsigned char *buffer, int c
 		return -1;
 	}
 	memcpy(&dev->config, buffer, buffer[0]);
-	le16_to_cpus(&(dev->config.wTotalLength));
+	le16_to_cpus(&(dev->config.desc.wTotalLength));
 	dev->config.no_of_if = 0;
 
 	index = dev->config.desc.bLength;
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
