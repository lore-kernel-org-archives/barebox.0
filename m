Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROAeb-00049L-F7
 for barebox@lists.infradead.org; Wed, 09 Nov 2011 16:05:37 +0000
Received: by faaq17 with SMTP id q17so2338052faa.36
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2011 08:05:28 -0800 (PST)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Wed,  9 Nov 2011 17:03:41 +0100
Message-Id: <1320854621-633-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH] at91: add config option for ohci driver
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/usb/host/Kconfig  |    4 ++++
 drivers/usb/host/Makefile |    2 +-
 2 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 929eb89..96e09e2 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -7,3 +7,7 @@ config USB_EHCI_OMAP

 config USB_OHCI
 	bool "OHCI driver"
+
+config USB_OHCI_AT91
+	depends on ARCH_AT91
+	bool "AT91 OHCI driver"
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
index 1c7e18f..00f5e24 100644
--- a/drivers/usb/host/Makefile
+++ b/drivers/usb/host/Makefile
@@ -1,4 +1,4 @@
 obj-$(CONFIG_USB_EHCI)		+= ehci-hcd.o
 obj-$(CONFIG_USB_EHCI_OMAP)	+= ehci-omap.o
 obj-$(CONFIG_USB_OHCI)		+= ohci-hcd.o
-obj-$(CONFIG_ARCH_AT91)		+= ohci-at91.o
+obj-$(CONFIG_USB_OHCI_AT91)	+= ohci-at91.o
--
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
