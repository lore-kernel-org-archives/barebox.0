Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL3TI-0002hW-Bu
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 09:53:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Nov 2018 10:52:35 +0100
Message-Id: <20181109095246.15068-10-s.hauer@pengutronix.de>
In-Reply-To: <20181109095246.15068-1-s.hauer@pengutronix.de>
References: <20181109095246.15068-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/20] ARM: i.MX50: Make locally used function static
To: Barebox List <barebox@lists.infradead.org>

imx50_init_lowlevel_early() is only used locally, so make it static.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx50.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx50.c b/arch/arm/mach-imx/imx50.c
index 4fd5481670..b76e3794e3 100644
--- a/arch/arm/mach-imx/imx50.c
+++ b/arch/arm/mach-imx/imx50.c
@@ -86,7 +86,7 @@ int imx50_devices_init(void)
 	return 0;
 }
 
-void imx50_init_lowlevel_early(unsigned int cpufreq_mhz)
+static void imx50_init_lowlevel_early(unsigned int cpufreq_mhz)
 {
 	void __iomem *ccm = IOMEM(MX50_CCM_BASE_ADDR);
 	u32 r;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
