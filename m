Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2l0-0008R7-OZ
 for barebox@lists.infradead.org; Mon, 11 May 2020 07:21:50 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 May 2020 09:21:27 +0200
Message-Id: <20200511072140.29610-11-a.fatoum@pengutronix.de>
In-Reply-To: <20200511072140.29610-1-a.fatoum@pengutronix.de>
References: <20200511072140.29610-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 10/23] net: macb: depend on HAS_DMA
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The driver makes use of dma_alloc_coherent and brethren. Depend on
HAS_DMA to be sure, we don't run into link errors when compile-testing.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index ee8a716d9a3d..76509a52a1c7 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -181,6 +181,7 @@ config DRIVER_NET_KS8851_MLL
 config DRIVER_NET_MACB
 	bool "macb Ethernet driver"
 	depends on HAS_MACB || COMPILE_TEST
+	depends on HAS_DMA
 	select PHYLIB
 
 config DRIVER_NET_MICREL
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
