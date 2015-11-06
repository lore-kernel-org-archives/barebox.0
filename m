Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zujpy-00034j-B3
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 16:26:04 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1Zujpb-0000Eo-FX
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 17:25:39 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri,  6 Nov 2015 17:25:33 +0100
Message-Id: <1446827139-339-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/7] ARM: imx6: add MMDC arbitration control register define
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx6-ddr-regs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/include/mach/imx6-ddr-regs.h b/arch/arm/mach-imx/include/mach/imx6-ddr-regs.h
index ac2764f1b6ef..fd1de8e074fa 100644
--- a/arch/arm/mach-imx/include/mach/imx6-ddr-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-ddr-regs.h
@@ -24,6 +24,7 @@
 #define MX6_MMDC_P0_MDRWD		0x021b002c
 #define MX6_MMDC_P0_MDOR		0x021b0030
 #define MX6_MMDC_P0_MDASP		0x021b0040
+#define MX6_MMDC_P0_MAARCR		0x021b0400
 #define MX6_MMDC_P0_MAPSR		0x021b0404
 #define MX6_MMDC_P0_MPZQHWCTRL		0x021b0800
 #define MX6_MMDC_P0_MPWLDECTRL0		0x021b080c
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
