Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyvcx-0000fY-8d
 for barebox@lists.infradead.org; Fri, 24 Jul 2020 11:12:36 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1jyvcw-0001UT-1J
 for barebox@lists.infradead.org; Fri, 24 Jul 2020 13:12:34 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 24 Jul 2020 13:12:30 +0200
Message-Id: <20200724111233.23725-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: imx8mm: select FIRMWARE_IMX_LPDDR4_PMU_TRAIN from
 IMX8MM_EVK
To: barebox@lists.infradead.org

Without this select the necessary DDR PHY firmware files will be missing
when only building for the i.MX8MM-EVK board.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 6dd5cb2aca15..7617a5ccd4b3 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -515,6 +515,7 @@ config MACH_NXP_IMX6ULL_EVK
 config MACH_NXP_IMX8MM_EVK
 	bool "NXP i.MX8MM EVK Board"
 	select ARCH_IMX8MM
+	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
 	select FIRMWARE_IMX8MM_ATF
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
