Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1Wy-0007oj-PA
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:55:12 +0000
Received: by mail-pf0-x242.google.com with SMTP id 67so14532805pfg.2
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:47 -0800
Message-Id: <20170306225356.31475-37-andrew.smirnov@gmail.com>
In-Reply-To: <20170306225356.31475-1-andrew.smirnov@gmail.com>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 36/45] usb/host: Allow USB_OHCI_AT91 even if USB_OHCI is
 disabled
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

When probing devices from DT, AT91 SoCs rely on OHCI driver to setup
various GPIO (e.g. VBUS enabled) for EHCI block as well. So enable
USB_OHCI_AT91 to be selected even if USB_OHCI is unavailible (due to its
dependency on !MMU).

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/Kconfig | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 54eaf46..db44052 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -10,20 +10,17 @@ config USB_EHCI_OMAP
 config USB_EHCI_ATMEL
 	depends on ARCH_AT91
 	depends on USB_EHCI
+	select USB_OHCI_AT91
 	bool "Atmel EHCI driver"
 
 config USB_OHCI
 	bool "OHCI driver"
 	depends on !MMU
 
-if USB_OHCI
-
 config USB_OHCI_AT91
 	depends on ARCH_AT91
 	bool "AT91 OHCI driver"
 
-endif
-
 config USB_XHCI
 	bool "xHCI driver"
 	depends on HAS_DMA
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
