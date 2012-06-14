Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sf9z5-0003kt-Aa
 for barebox@lists.infradead.org; Thu, 14 Jun 2012 13:21:12 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Thu, 14 Jun 2012 15:21:01 +0200
Message-Id: <1339680065-12169-5-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1339680065-12169-1-git-send-email-w.sang@pengutronix.de>
References: <1339680065-12169-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH V2 4/8] arm: mxs: add POWER_BASE for MX28, too
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/mach-mxs/include/mach/imx28-regs.h |    1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-mxs/include/mach/imx28-regs.h b/arch/arm/mach-mxs/include/mach/imx28-regs.h
index 9a2052c..23ac306 100644
--- a/arch/arm/mach-mxs/include/mach/imx28-regs.h
+++ b/arch/arm/mach-mxs/include/mach/imx28-regs.h
@@ -32,6 +32,7 @@
 #define IMX_OCOTP_BASE		0x8002c000
 #define IMX_FB_BASE		0x80030000
 #define IMX_CCM_BASE		0x80040000
+#define IMX_POWER_BASE		0x80044000
 #define IMX_WDT_BASE		0x80056000
 #define IMX_I2C0_BASE		0x80058000
 #define IMX_I2C1_BASE		0x8005a000
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
