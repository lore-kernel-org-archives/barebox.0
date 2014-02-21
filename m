Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x230.google.com ([2607:f8b0:4002:c07::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGdoU-0000dR-UY
 for barebox@lists.infradead.org; Fri, 21 Feb 2014 00:17:59 +0000
Received: by mail-yk0-f176.google.com with SMTP id 19so3899601ykq.7
 for <barebox@lists.infradead.org>; Thu, 20 Feb 2014 16:17:37 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 20 Feb 2014 21:17:28 -0300
Message-Id: <1392941848-26624-1-git-send-email-festevam@gmail.com>
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
Subject: [PATCH] ARM: imx_v7_defconfig: Enable CONFIG_MACH_SABRESD
To: s.hauer@pengutronix.de
Cc: Fabio Estevam <fabio.estevam@freescale.com>, barebox@lists.infradead.org

From: Fabio Estevam <fabio.estevam@freescale.com>

Allow mx6sabresd board be built by default.

Signed-off-by: Fabio Estevam <fabio.estevam@freescale.com>
---
 arch/arm/configs/imx_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 0f8b3ef..ceeb752 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -11,6 +11,7 @@ CONFIG_MACH_REALQ7=y
 CONFIG_MACH_GK802=y
 CONFIG_MACH_TQMA6X=y
 CONFIG_MACH_SABRELITE=y
+CONFIG_MACH_SABRESD=y
 CONFIG_MACH_NITROGEN6X=y
 CONFIG_MACH_SOLIDRUN_HUMMINGBOARD=y
 CONFIG_IMX_IIM=y
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
