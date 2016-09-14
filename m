Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bk6Fj-0006rH-Lg
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 09:13:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Sep 2016 11:12:47 +0200
Message-Id: <1473844368-13030-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1473844368-13030-1-git-send-email-s.hauer@pengutronix.de>
References: <1473844368-13030-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/12] ARM: imx_v7_defconfig: Enable Vincell support
To: Barebox List <barebox@lists.infradead.org>

Now that we can start images bigger than internal SRAM size we can
enable the Vincell support in the imx_v7_defconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/imx_v7_defconfig | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index e3a8f47..51cbf60 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -3,8 +3,10 @@ CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_EFIKA_MX_SMARTBOOK=y
 CONFIG_MACH_EMBEDSKY_E9=y
 CONFIG_MACH_FREESCALE_MX51_PDK=y
-CONFIG_MACH_FREESCALE_MX53_LOCO=y
 CONFIG_MACH_CCMX53=y
+CONFIG_MACH_FREESCALE_MX53_LOCO=y
+CONFIG_MACH_GUF_VINCELL=y
+CONFIG_MACH_GUF_VINCELL_XLOAD=y
 CONFIG_MACH_TQMA53=y
 CONFIG_MACH_FREESCALE_MX53_VMX53=y
 CONFIG_MACH_PHYTEC_SOM_IMX6=y
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
