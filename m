Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yn6yb-0000CK-Kw
 for barebox@lists.infradead.org; Tue, 28 Apr 2015 14:59:10 +0000
Received: by lbcga7 with SMTP id ga7so109540023lbc.1
 for <barebox@lists.infradead.org>; Tue, 28 Apr 2015 07:58:47 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 28 Apr 2015 17:59:41 +0300
Message-Id: <1430233181-17135-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] net: e1000: add HAS_DMA dependency
To: barebox@lists.infradead.org

The e1000 driver uses the dma coherent functions
and thus can only be build for architectures implementing them.

Here is mips malta build error log:

  drivers/built-in.o: In function `e1000_transmit':
  drivers/net/e1000.c:(.text.e1000_transmit+0x80): undefined reference to
  `dma_sync_single_for_device'
  drivers/built-in.o: In function `e1000_poll':
  drivers/net/e1000.c:(.text.e1000_poll+0x60): undefined reference to
  `dma_sync_single_for_cpu'

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 41f033f..b723a12 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -79,6 +79,7 @@ config DRIVER_NET_DM9K
 config DRIVER_NET_E1000
 	bool "Intel e1000 ethernet driver"
 	depends on PCI
+	depends on HAS_DMA
 	select PHYLIB
 	help
 	  This is a driver for the Gigabit Ethernet PCI network cards based on
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
