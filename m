Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YasNK-0002Hs-1E
 for barebox@lists.infradead.org; Wed, 25 Mar 2015 20:58:07 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1YasMw-0002eJ-J0
 for barebox@lists.infradead.org; Wed, 25 Mar 2015 21:57:42 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 25 Mar 2015 21:57:42 +0100
Message-Id: <1427317062-20969-4-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1427317062-20969-1-git-send-email-l.stach@pengutronix.de>
References: <1427317062-20969-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 4/4] usb: host: xhci: depend on HAS_DMA
To: barebox@lists.infradead.org

The driver needs the dma coherent function and thus can
only work on architectures implementing them.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/usb/host/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 12a090c5cc7c..54eaf468b7a0 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -26,6 +26,7 @@ endif
 
 config USB_XHCI
 	bool "xHCI driver"
+	depends on HAS_DMA
 	help
 	  The eXtensible Host Controller Interface (xHCI) is standard for
 	  USB 3.0 "SuperSpeed" host controller hardware. xHCI specification
@@ -37,6 +38,7 @@ config USB_XHCI
 
 config USB_XHCI_PCI
 	depends on PCI
+	depends on HAS_DMA
 	select USB_XHCI
 	bool "PCI xHCI driver"
 	help
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
