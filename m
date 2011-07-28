Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLVU-0007jL-Pn
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 07:59:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 09:59:38 +0200
Message-Id: <1311839985-11285-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311839985-11285-1-git-send-email-s.hauer@pengutronix.de>
References: <1311839985-11285-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/9] ARM i.MX IIM: add support for more SoCs
To: barebox@lists.infradead.org

Do not depend on the specific SoCs for the IIM module, but
instead exclude the one that don't have this unit.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index f497d35..f99fcb3 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -480,7 +480,7 @@ config IMX_CLKO
 
 config IMX_IIM
 	tristate "IIM fusebox device"
-	depends on ARCH_IMX25 || ARCH_IMX35
+	depends on !ARCH_IMX21 && !ARCH_IMX21
 	help
 	  Device driver for the IC Identification Module (IIM) fusebox. Use the 
 	  regular md/mw commands to program and read the fusebox.
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
