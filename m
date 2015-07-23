Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZIDFc-00036h-Lf
 for barebox@lists.infradead.org; Thu, 23 Jul 2015 09:57:17 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZIBNj-00021X-Od
 for barebox@lists.infradead.org; Thu, 23 Jul 2015 09:57:31 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 23 Jul 2015 11:56:53 +0200
Message-Id: <1437645413-18057-4-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1437645413-18057-1-git-send-email-l.stach@pengutronix.de>
References: <1437645413-18057-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: don't allow Thumb2 on AT91
To: barebox@lists.infradead.org

AT91 has a custom barebox head that doesn't support Thumb2.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index ef7b60d16819..d836f66854d9 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -279,7 +279,7 @@ config AEABI
 config THUMB2_BAREBOX
 	select ARM_ASM_UNIFIED
 	select AEABI
-	depends on !ARCH_TEGRA
+	depends on !ARCH_TEGRA && !ARCH_AT91
 	depends on CPU_V7 && !CPU_32v4T && !CPU_32v5 && !CPU_32v6
 	bool "Compile barebox in thumb-2 mode (read help)"
 	help
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
