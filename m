Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fnt-0003w7-WF
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:47:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:46:10 +0100
Message-Id: <20200217124623.14520-30-s.hauer@pengutronix.de>
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
Subject: [PATCH 29/42] ARM: i.MX8M: Add some lowlevel clock functions
To: Barebox List <barebox@lists.infradead.org>

U-Boot has some lowlevel clock functions which take a clock slice index
as argument. Add them for barebox as well to make the code better
comparable to U-Boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c                     | 24 +++++++++++++++++++
 .../mach-imx/include/mach/imx8m-ccm-regs.h    |  4 ++++
 2 files changed, 28 insertions(+)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 031b25bfc1..596c4140b3 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -19,6 +19,7 @@
 #include <mach/generic.h>
 #include <mach/revision.h>
 #include <mach/imx8mq.h>
+#include <mach/imx8m-ccm-regs.h>
 #include <mach/reset-reason.h>
 #include <mach/ocotp.h>
 
@@ -28,6 +29,29 @@
 #define FSL_SIP_BUILDINFO			0xC2000003
 #define FSL_SIP_BUILDINFO_GET_COMMITHASH	0x00
 
+void imx8m_clock_set_target_val(int clock_id, u32 val)
+{
+	void *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
+
+	writel(val, ccm + IMX8M_CCM_TARGET_ROOTn(clock_id));
+}
+
+void imx8m_ccgr_clock_enable(int index)
+{
+	void *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
+
+	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + IMX8M_CCM_CCGRn_SET(index));
+}
+
+void imx8m_ccgr_clock_disable(int index)
+{
+	void *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
+
+	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + IMX8M_CCM_CCGRn_CLR(index));
+}
+
 u64 imx8mq_uid(void)
 {
 	return imx_ocotp_read_uid(IOMEM(MX8MQ_OCOTP_BASE_ADDR));
diff --git a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
index 66ace0f1c4..ff207b80f9 100644
--- a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
@@ -48,4 +48,8 @@
 #define IMX8M_CCM_CCGR_SETTINGn_NEEDED_RUN_WAIT(n)	IMX8M_CCM_CCGR_SETTINGn(n, 0b10)
 #define IMX8M_CCM_CCGR_SETTINGn_NEEDED(n)		IMX8M_CCM_CCGR_SETTINGn(n, 0b11)
 
+void imx8m_clock_set_target_val(int clock_id, u32 val);
+void imx8m_ccgr_clock_enable(int index);
+void imx8m_ccgr_clock_disable(int index);
+
 #endif
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
