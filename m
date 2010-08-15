Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OkdRI-0000Kd-FD
	for barebox@lists.infradead.org; Sun, 15 Aug 2010 13:39:54 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Sun, 15 Aug 2010 16:39:26 +0300
Message-Id: <1387839ffef9c528aa0cc461e280ab0a1944d190.1281877781.git.baruch@tkos.co.il>
In-Reply-To: <cover.1281877781.git.baruch@tkos.co.il>
References: <cover.1281877781.git.baruch@tkos.co.il>
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
Subject: [PATCH 3/5] imx25: add chip specific IIM fusebox defines
To: barebox@lists.infradead.org

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm/mach-imx/include/mach/imx25-regs.h |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index 7c2b5f9..f8908f2 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -143,5 +143,10 @@
 /* IIM fuse definitions */
 #define IIM_UID		0x820
 
+#define IIM_BANK_SIZE	32	/* excluding alignment padding for each row */
+#define IIM_BANK0_BASE	(IMX_IIM_BASE + 0x800)
+#define IIM_BANK1_BASE	(IMX_IIM_BASE + 0xc00)
+#define IIM_BANK2_BASE	(IMX_IIM_BASE + 0x1000)
+
 #endif /* __ASM_ARCH_MX25_REGS_H */
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
