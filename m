Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3.mail.ru ([94.100.176.131])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WeIPB-0003yD-UA
 for barebox@lists.infradead.org; Sun, 27 Apr 2014 06:17:38 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 27 Apr 2014 10:17:06 +0400
Message-Id: <1398579427-24306-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] ARM: Remove excess "select GENERIC_GPIO"
To: barebox@lists.infradead.org

GENERIC_GPIO is selected automatically by GPIOLIB

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/Kconfig | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3754646..11b9a85 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -79,7 +79,6 @@ config ARCH_HIGHBANK
 
 config ARCH_IMX
 	bool "Freescale iMX-based"
-	select GENERIC_GPIO
 	select GPIOLIB
 	select COMMON_CLK
 	select CLKDEV_LOOKUP
@@ -132,7 +131,6 @@ config ARCH_SOCFPGA
 	select CPU_V7
 	select COMMON_CLK
 	select CLKDEV_LOOKUP
-	select GENERIC_GPIO
 	select GPIOLIB
 	select HAVE_PBL_MULTI_IMAGES
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
