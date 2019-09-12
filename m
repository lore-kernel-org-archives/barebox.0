Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Izm-0003x2-Oi
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 06:54:23 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Sep 2019 08:54:12 +0200
Message-Id: <20190912065412.9459-3-a.fatoum@pengutronix.de>
In-Reply-To: <20190912065412.9459-1-a.fatoum@pengutronix.de>
References: <20190912065412.9459-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 2/2] ARM: imx_v7_defconfig: enable Embdest MarS board
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>, eric@eukrea.com

From: Ahmad Fatoum <ahmad@a3f.at>

Have it compile as part of the defconfig, to improve coverage.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/configs/imx_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 18c27756870e..8b8178a96fc9 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -27,6 +27,7 @@ CONFIG_MACH_NITROGEN6=y
 CONFIG_MACH_SOLIDRUN_MICROSOM=y
 CONFIG_MACH_TECHNEXION_PICO_HOBBIT=y
 CONFIG_MACH_TECHNEXION_WANDBOARD=y
+CONFIG_MACH_EMBEST_MARSBOARD=y
 CONFIG_MACH_EMBEST_RIOTBOARD=y
 CONFIG_MACH_UDOO=y
 CONFIG_MACH_VARISCITE_MX6=y
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
