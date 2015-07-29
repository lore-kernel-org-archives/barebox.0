Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZKWUR-0003xo-Rq
 for barebox@lists.infradead.org; Wed, 29 Jul 2015 18:54:08 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZKUck-0007JB-WA
 for barebox@lists.infradead.org; Wed, 29 Jul 2015 18:54:35 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 29 Jul 2015 20:53:43 +0200
Message-Id: <1438196023-30888-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: socfpga: select OFTREE and OFDEVICE
To: barebox@lists.infradead.org

SoCFPGA is completely multi-image enabled and probes the barebox
from a built-in DT, so there is no point in building a barebox
image that isn't able to probe from DT.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index d836f66854d9..9da2ec7cf933 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -172,6 +172,8 @@ config ARCH_SOCFPGA
 	select CLKDEV_LOOKUP
 	select GPIOLIB
 	select HAVE_PBL_MULTI_IMAGES
+	select OFDEVICE
+	select OFTREE
 
 config ARCH_S3C24xx
 	bool "Samsung S3C2410, S3C2440"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
