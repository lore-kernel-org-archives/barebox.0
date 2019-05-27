Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK9d-0001dO-NT
 for barebox@lists.infradead.org; Mon, 27 May 2019 18:15:28 +0000
Received: by mail-pg1-x544.google.com with SMTP id z3so4846407pgp.8
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 11:15:25 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 11:15:00 -0700
Message-Id: <20190527181500.17456-8-andrew.smirnov@gmail.com>
In-Reply-To: <20190527181500.17456-1-andrew.smirnov@gmail.com>
References: <20190527181500.17456-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 8/8] usb: ohci: Add dependency on HAS_DMA
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

OHCI driver uses varios DMA API functions (dma_alloc_coherent()
et. al), so add dependency on HAS_DMA to indicate that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index db4405252..d2029bc7d 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -15,7 +15,7 @@ config USB_EHCI_ATMEL
 
 config USB_OHCI
 	bool "OHCI driver"
-	depends on !MMU
+	depends on !MMU && HAS_DMA
 
 config USB_OHCI_AT91
 	depends on ARCH_AT91
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
