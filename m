Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo1.mail-out.ovh.net ([87.98.158.110]
	helo=mo1.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R5d6v-0000Vx-Ms
	for barebox@lists.infradead.org; Mon, 19 Sep 2011 12:38:11 +0000
Received: from mail179.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id 878D510140A3
	for <barebox@lists.infradead.org>;
	Mon, 19 Sep 2011 14:39:01 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 19 Sep 2011 14:15:44 +0200
Message-Id: <1316434549-15243-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
References: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 07/12] usb/core: make print dev like linux lsusb
To: barebox@lists.infradead.org

and busnum start at 1

as this
Bus 001 Device 002: ID 0b95:7720 AX88772

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/usb/core/usb.c |   11 ++++++-----
 1 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 5dc8afe..24fa94a 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -78,13 +78,14 @@ static LIST_HEAD(usb_device_list);
 
 static void print_usb_device(struct usb_device *dev)
 {
-	printf("%s: %04x:%04x %s\n", dev->dev.name,
-			dev->descriptor.idVendor,
-			dev->descriptor.idProduct,
-			dev->prod);
+	printf("Bus %03d Device %03d: ID %04x:%04x %s\n",
+		dev->host->busnum, dev->devnum,
+		dev->descriptor.idVendor,
+		dev->descriptor.idProduct,
+		dev->prod);
 }
 
-static int host_busnum;
+static int host_busnum = 1;
 
 int usb_register_host(struct usb_host *host)
 {
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
