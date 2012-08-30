Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T73to-0001si-W4
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 12:31:05 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 30 Aug 2012 14:30:48 +0200
Message-Id: <1346329850-3866-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1346329850-3866-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1346329850-3866-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/3] ARM i.MX6: add the usbphy1 base addr
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx6-regs.h |    1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index e62cc79..c7b7481 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -74,6 +74,7 @@
 #define MX6_WDOG2_BASE_ADDR             (MX6_AIPS1_OFF_BASE_ADDR + 0x40000)
 #define MX6_CCM_BASE_ADDR               (MX6_AIPS1_OFF_BASE_ADDR + 0x44000)
 #define MX6_ANATOP_BASE_ADDR            (MX6_AIPS1_OFF_BASE_ADDR + 0x48000)
+#define MX6_USBPHY1_BASE_ADDR		(MX6_AIPS1_OFF_BASE_ADDR + 0x4a000)
 #define MX6_SNVS_BASE_ADDR              (MX6_AIPS1_OFF_BASE_ADDR + 0x4C000)
 #define MX6_EPIT1_BASE_ADDR             (MX6_AIPS1_OFF_BASE_ADDR + 0x50000)
 #define MX6_EPIT2_BASE_ADDR             (MX6_AIPS1_OFF_BASE_ADDR + 0x54000)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
