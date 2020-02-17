Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fo9-0000r1-3f
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:47:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:45:48 +0100
Message-Id: <20200217124623.14520-8-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/42] ARM: i.MX8M: Add ARCH_IMX8M symbol
To: Barebox List <barebox@lists.infradead.org>

Several things are common between the different i.MX8M variants. Add a
Kconfig symbol for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index f5c8a4242b..d717d83865 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -174,7 +174,7 @@ config ARCH_IMX7
 	select ARCH_HAS_IMX_GPT
 	select HW_HAS_PCI
 
-config ARCH_IMX8MQ
+config ARCH_IMX8M
 	bool
 	select CPU_V8
 	select PINCTRL_IMX_IOMUX_V3
@@ -185,6 +185,10 @@ config ARCH_IMX8MQ
 	select HW_HAS_PCI
 	select PBL_VERIFY_PIGGY if HABV4
 
+config ARCH_IMX8MQ
+	select ARCH_IMX8M
+	bool
+
 config ARCH_VF610
 	bool
 	select ARCH_HAS_L2X0
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
