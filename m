Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4.mail.ru ([94.100.176.44])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9uqE-0007Ki-Ia
 for barebox@lists.infradead.org; Tue, 20 Mar 2012 08:54:56 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 20 Mar 2012 12:54:26 +0400
Message-Id: <1332233666-5422-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <20120318151242.GP3852@pengutronix.de>
References: <20120318151242.GP3852@pengutronix.de>
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
Subject: [PATCH 3/3] i.MX51: Fix name definition for SSI3
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/include/mach/imx51-regs.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx51-regs.h b/arch/arm/mach-imx/include/mach/imx51-regs.h
index c6d14cd..90e81cb 100644
--- a/arch/arm/mach-imx/include/mach/imx51-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx51-regs.h
@@ -94,7 +94,7 @@
 #define MX51_MIPI_HSC_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000DC000)
 #define MX51_ATA_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000E0000)
 #define MX51_SIM_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000E4000)
-#define MX51_SSI3BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000E8000)
+#define MX51_SSI3_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000E8000)
 #define MX51_MXC_FEC_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000EC000)
 #define MX51_TVE_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000F0000)
 #define MX51_VPU_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000F4000)
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
