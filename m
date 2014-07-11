Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f46.google.com ([209.85.215.46])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X5Zxf-0003PE-54
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 12:30:00 +0000
Received: by mail-la0-f46.google.com with SMTP id el20so825654lab.19
 for <barebox@lists.infradead.org>; Fri, 11 Jul 2014 05:29:33 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 11 Jul 2014 16:29:18 +0400
Message-Id: <1405081759-15028-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] fixup! gpio: add driver for PCA95[357]x, PCA9698, TCA64xx,
 and MAX7310 SMBus I/O expanders
To: barebox@lists.infradead.org

---
 drivers/gpio/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 179c63d..6928fcb 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -67,7 +67,6 @@ config GPIO_ORION
 config GPIO_PCA953X
 	bool "PCA95[357]x, PCA9698, TCA64xx, and MAX7310 I/O ports"
 	depends on I2C
-	select I2C_SMBUS
 	help
 	  Say yes here to provide access to several register-oriented
 	  SMBus I/O expanders, made mostly by NXP or TI.  Compatible
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
