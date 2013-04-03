Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNHpG-0000Kc-JY
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 07:09:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Apr 2013 09:09:38 +0200
Message-Id: <1364972980-32527-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1364972980-32527-1-git-send-email-s.hauer@pengutronix.de>
References: <1364972980-32527-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] ARM: i.MX53: split lowlevel function into early/nonearly
 version
To: barebox@lists.infradead.org

clock_notifier_call_chain() can't be called before init time. Protecting
it with IS_ENABLED(__PBL__) is not enough. This patch splits out a new
imx53_init_lowlevel_early which can be called before init time and does
not have the call to clock_notifier_call_chain() in it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx53.c             | 12 ++++++++----
 arch/arm/mach-imx/include/mach/imx5.h |  1 +
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index b06a5d0..193406f 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -75,7 +75,7 @@ static int imx53_init(void)
 }
 postcore_initcall(imx53_init);
 
-void imx53_init_lowlevel(unsigned int cpufreq_mhz)
+void imx53_init_lowlevel_early(unsigned int cpufreq_mhz)
 {
 	void __iomem *ccm = (void __iomem *)MX53_CCM_BASE_ADDR;
 	u32 r;
@@ -188,8 +188,12 @@ void imx53_init_lowlevel(unsigned int cpufreq_mhz)
 	writel(0xffffffff, ccm + MX5_CCM_CCGR6);
 	writel(0xffffffff, ccm + MX53_CCM_CCGR7);
 
-	if (!IS_ENABLED(__PBL__))
-		clock_notifier_call_chain();
-
 	writel(0, ccm + MX5_CCM_CCDR);
 }
+
+void imx53_init_lowlevel(unsigned int cpufreq_mhz)
+{
+	imx53_init_lowlevel_early(cpufreq_mhz);
+
+	clock_notifier_call_chain();
+}
diff --git a/arch/arm/mach-imx/include/mach/imx5.h b/arch/arm/mach-imx/include/mach/imx5.h
index ff570c4..7f5c2ef 100644
--- a/arch/arm/mach-imx/include/mach/imx5.h
+++ b/arch/arm/mach-imx/include/mach/imx5.h
@@ -3,6 +3,7 @@
 
 void imx51_init_lowlevel(unsigned int cpufreq_mhz);
 void imx53_init_lowlevel(unsigned int cpufreq_mhz);
+void imx53_init_lowlevel_early(unsigned int cpufreq_mhz);
 void imx5_init_lowlevel(void);
 
 void imx5_setup_pll(void __iomem *base, int freq, u32 op, u32 mfd, u32 mfn);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
