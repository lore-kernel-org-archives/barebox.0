Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLli-0002N5-OA
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:44 +0000
Received: by mail-pf1-x441.google.com with SMTP id q17so855572pfq.8
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:34 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:34:10 -0700
Message-Id: <20190522073414.9308-15-andrew.smirnov@gmail.com>
In-Reply-To: <20190522073414.9308-1-andrew.smirnov@gmail.com>
References: <20190522073414.9308-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/18] usb: host: ehci: Replace explicit printf() with
 dev_err()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index a6f497925..050a3166e 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -542,7 +542,9 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 	case USB_REQ_SET_FEATURE | ((USB_DIR_OUT | USB_RT_PORT) << 8):
 	case USB_REQ_CLEAR_FEATURE | ((USB_DIR_OUT | USB_RT_PORT) << 8):
 		if (!port || port > CONFIG_SYS_USB_EHCI_MAX_ROOT_PORTS) {
-			printf("The request port(%d) is not configured\n", port - 1);
+			dev_err(ehci->dev,
+				"The request port(%d) is not configured\n",
+				port - 1);
 			return -1;
 		}
 		status_reg = (uint32_t *)&ehci->hcor->or_portsc[port - 1];
@@ -972,7 +974,8 @@ disable_periodic(struct ehci_host *ehci)
 	ret = handshake((uint32_t *)&hcor->or_usbsts,
 			STS_PSS, 0, 100 * 1000);
 	if (ret < 0) {
-		printf("EHCI failed: timeout when disabling periodic list\n");
+		dev_err(ehci->dev,
+			"EHCI failed: timeout when disabling periodic list\n");
 		return -ETIMEDOUT;
 	}
 	return 0;
@@ -993,7 +996,8 @@ enable_periodic(struct ehci_host *ehci)
 	ret = handshake((uint32_t *)&hcor->or_usbsts,
 			STS_PSS, STS_PSS, 100 * 1000);
 	if (ret < 0) {
-		printf("EHCI failed: timeout when enabling periodic list\n");
+		dev_err(ehci->dev,
+			"EHCI failed: timeout when enabling periodic list\n");
 		return -ETIMEDOUT;
 	}
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
