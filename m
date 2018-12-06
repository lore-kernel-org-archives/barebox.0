Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUs5q-00043b-Tp
 for barebox@lists.infradead.org; Thu, 06 Dec 2018 11:45:27 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gUs5e-0006pV-Ui
 for barebox@lists.infradead.org; Thu, 06 Dec 2018 12:45:10 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  6 Dec 2018 12:45:09 +0100
Message-Id: <20181206114510.20643-3-l.stach@pengutronix.de>
In-Reply-To: <20181206114510.20643-1-l.stach@pengutronix.de>
References: <20181206114510.20643-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: at91: add architecture dependecy to KSZ9477_EVB board
To: barebox@lists.infradead.org

This board is part of the SAMA5D3 architecture.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index bb8305fd1675..e6b4f99c969b 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -539,6 +539,7 @@ config MACH_AT91SAM9X5EK
 
 config MACH_MICROCHIP_KSZ9477_EVB
 	bool "Microchip EVB-KSZ9477 Evaluation Kit"
+	depends on ARCH_SAMA5D3
 	select OFDEVICE
 	select COMMON_CLK_OF_PROVIDER
 	help
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
