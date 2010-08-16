Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ol0P4-0000ag-84
	for barebox@lists.infradead.org; Mon, 16 Aug 2010 14:11:13 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Mon, 16 Aug 2010 17:10:36 +0300
Message-Id: <0c648f6900c08f4c3db74b5a2eb9878e393bca69.1281966840.git.baruch@tkos.co.il>
In-Reply-To: <cover.1281966840.git.baruch@tkos.co.il>
References: <cover.1281966840.git.baruch@tkos.co.il>
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
Subject: [PATCH v2 4/6] imx25: add chip specific IIM fusebox defines
To: barebox@lists.infradead.org

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm/mach-imx/include/mach/imx25-regs.h |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index 7c2b5f9..ac590d9 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -141,7 +141,13 @@
 #define WCR_WDE 0x04
 
 /* IIM fuse definitions */
-#define IIM_UID		0x820
+#define IIM_BANK_SIZE	32	/* excluding alignment padding for each row */
+#define IIM_BANK0_BASE	(IMX_IIM_BASE + 0x800)
+#define IIM_BANK1_BASE	(IMX_IIM_BASE + 0xc00)
+#define IIM_BANK2_BASE	(IMX_IIM_BASE + 0x1000)
+
+#define IIM_UID		(IIM_BANK0_BASE + 0x20)
+#define IIM_MAC_ADDR	(IIM_BANK0_BASE + 0x68)
 
 #endif /* __ASM_ARCH_MX25_REGS_H */
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
