Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XuMY8-0000VK-31
 for barebox@lists.infradead.org; Fri, 28 Nov 2014 14:29:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Nov 2014 15:29:02 +0100
Message-Id: <1417184946-16128-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
References: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/14] spi: mxs-spi: Allow compilation on i.MX28 only
To: barebox@lists.infradead.org

The driver does not compile on i.MX23, so remove the i.MX23 from
the dependency list.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 8a9bbd7..e4fa6a2 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -39,7 +39,7 @@ config DRIVER_SPI_IMX_2_3
 
 config DRIVER_SPI_MXS
 	bool "i.MX (23,28) SPI Master driver"
-	depends on ARCH_IMX23 || ARCH_IMX28
+	depends on ARCH_IMX28
 	depends on SPI
 
 config DRIVER_SPI_MVEBU
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
