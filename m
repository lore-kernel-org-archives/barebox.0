Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ag6rU-0001aG-Th
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 08:31:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 Mar 2016 09:31:01 +0100
Message-Id: <1458117061-23914-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX27: Fix gpt compatible for latest device trees
To: Barebox List <barebox@lists.infradead.org>

In v4.2-rc3 the "fsl,imx1-gpt" compatible was replaced with
"fsl,imx21-gpt" so i.MX27 currently ends up without clocksource. Fix
this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clocksource.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index 66dcea4..b6873a7 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -140,6 +140,9 @@ static __maybe_unused struct of_device_id imx_gpt_dt_ids[] = {
 		.compatible = "fsl,imx1-gpt",
 		.data = &regs_imx1,
 	}, {
+		.compatible = "fsl,imx21-gpt",
+		.data = &regs_imx1,
+	}, {
 		.compatible = "fsl,imx31-gpt",
 		.data = &regs_imx31,
 	}, {
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
