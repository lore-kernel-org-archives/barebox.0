Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9wxo-0006HX-RB
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 13:52:14 +0000
Received: by mail-wi0-f180.google.com with SMTP id n3so2262137wiv.13
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 06:51:50 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 15:51:47 +0200
Message-Id: <1406123512-26489-7-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406123512-26489-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406123512-26489-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 06/10] USB: EHCI: reuse ch9.h config and interface descriptors
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Now that usb_config_descriptor and usb_interface_descriptor are clean
of any additional fields, drop the duplication in EHCI code and use
the default ones.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 drivers/usb/host/ehci-hcd.c |  4 ++--
 drivers/usb/host/ehci.h     | 25 -------------------------
 2 files changed, 2 insertions(+), 27 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 9e30deb419cc..7857576738d7 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -57,8 +57,8 @@ struct ehci_priv {
 static struct descriptor {
 	struct usb_hub_descriptor hub;
 	struct usb_device_descriptor device;
-	struct usb_linux_config_descriptor config;
-	struct usb_linux_interface_descriptor interface;
+	struct usb_config_descriptor config;
+	struct usb_interface_descriptor interface;
 	struct usb_endpoint_descriptor endpoint;
 }  __attribute__ ((packed)) descriptor = {
 	{
diff --git a/drivers/usb/host/ehci.h b/drivers/usb/host/ehci.h
index b1e768b49304..8cc477aa4ffe 100644
--- a/drivers/usb/host/ehci.h
+++ b/drivers/usb/host/ehci.h
@@ -68,31 +68,6 @@ struct ehci_hcor {
 #define USBMODE_CM_HC	(3 << 0)	/* host controller mode */
 #define USBMODE_CM_IDLE	(0 << 0)	/* idle state */
 
-/* Interface descriptor */
-struct usb_linux_interface_descriptor {
-	unsigned char	bLength;
-	unsigned char	bDescriptorType;
-	unsigned char	bInterfaceNumber;
-	unsigned char	bAlternateSetting;
-	unsigned char	bNumEndpoints;
-	unsigned char	bInterfaceClass;
-	unsigned char	bInterfaceSubClass;
-	unsigned char	bInterfaceProtocol;
-	unsigned char	iInterface;
-} __attribute__ ((packed));
-
-/* Configuration descriptor information.. */
-struct usb_linux_config_descriptor {
-	unsigned char	bLength;
-	unsigned char	bDescriptorType;
-	unsigned short	wTotalLength;
-	unsigned char	bNumInterfaces;
-	unsigned char	bConfigurationValue;
-	unsigned char	iConfiguration;
-	unsigned char	bmAttributes;
-	unsigned char	MaxPower;
-} __attribute__ ((packed));
-
 #if defined CONFIG_EHCI_DESC_BIG_ENDIAN
 #define	ehci_readl(x)		(*((volatile u32 *)(x)))
 #define ehci_writel(a, b)	(*((volatile u32 *)(a)) = ((volatile u32)b))
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
