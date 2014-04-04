Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WW4K9-0001OD-1W
 for barebox@lists.infradead.org; Fri, 04 Apr 2014 13:38:26 +0000
Received: by mail-bk0-f49.google.com with SMTP id my13so286168bkb.8
 for <barebox@lists.infradead.org>; Fri, 04 Apr 2014 06:37:57 -0700 (PDT)
From: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
Date: Fri,  4 Apr 2014 15:37:39 +0200
Message-Id: <1396618659-27627-1-git-send-email-wjatscheslaw.stoljarski@kiwigrid.com>
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
Subject: [PATCH 1/3] imx-spi: enable v0.7 spi driver for imx53-cspi
To: barebox@lists.infradead.org

From: "Wjatscheslaw Stoljarski" <wjatscheslaw.stoljarski@kiwigrid.com>


Signed-off-by: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
---
 drivers/spi/Kconfig |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 422693c..e429ea1 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -25,7 +25,7 @@ config DRIVER_SPI_IMX_0_0
 
 config DRIVER_SPI_IMX_0_7
 	bool
-	depends on ARCH_IMX25 || ARCH_IMX35
+	depends on ARCH_IMX25 || ARCH_IMX35 || ARCH_IMX53
 	default y
 
 config DRIVER_SPI_IMX_2_3
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
