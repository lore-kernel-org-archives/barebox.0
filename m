Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pv0-f177.google.com ([74.125.83.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P1WCZ-00084R-5R
	for barebox@lists.infradead.org; Fri, 01 Oct 2010 03:22:28 +0000
Received: by pvg12 with SMTP id 12so889332pvg.36
	for <barebox@lists.infradead.org>; Thu, 30 Sep 2010 20:22:25 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Fri,  1 Oct 2010 13:21:37 +1000
Message-Id: <1285903297-6779-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH] imx35: add base addresses for I2C and SDHC
To: barebox@lists.infradead.org

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 arch/arm/mach-imx/include/mach/imx35-regs.h |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-imx/include/mach/imx35-regs.h
index c394a2a..b24674c 100644
--- a/arch/arm/mach-imx/include/mach/imx35-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
@@ -46,6 +46,11 @@
 #define IMX_NFC_BASE		0xBB000000
 #define IMX_FEC_BASE		0x50038000
 #define IMX_I2C1_BASE		0x43F80000
+#define IMX_I2C2_BASE		0x43F98000
+#define IMX_IC23_BASE		0x43F84000
+#define IMX_SDHC1_BASE		0x53FB4000
+#define IMX_SDHC2_BASE		0x53FB8000
+#define IMX_SDHC3_BASE		0x53FBC000
 
 /*
  * Clock Controller Module (CCM)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
