Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PKVRn-0000dm-7m
	for barebox@lists.infradead.org; Mon, 22 Nov 2010 12:24:40 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 22 Nov 2010 13:24:24 +0100
Message-Id: <1290428665-23561-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1290428665-23561-1-git-send-email-jbe@pengutronix.de>
References: <1290428665-23561-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 5/6] i.MX23: Add framebuffer device support
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-stm/include/mach/imx23-regs.h |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-stm/include/mach/imx23-regs.h b/arch/arm/mach-stm/include/mach/imx23-regs.h
index 89ca453..caac19b 100644
--- a/arch/arm/mach-stm/include/mach/imx23-regs.h
+++ b/arch/arm/mach-stm/include/mach/imx23-regs.h
@@ -36,6 +36,7 @@
 #define IMX_CCM_BASE		0x80040000
 #define IMX_I2C1_BASE		0x80058000
 #define IMX_SSP1_BASE		0x80010000
+#define IMX_FB_BASE		0x80030000
 #define IMX_SSP2_BASE		0x80034000
 
 #endif /* __ASM_ARCH_MX23_REGS_H */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
