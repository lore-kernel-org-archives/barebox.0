Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui1Me-0005Zx-Sk
 for barebox@lists.infradead.org; Thu, 30 May 2013 11:49:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 13:49:21 +0200
Message-Id: <1369914567-15650-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369914567-15650-1-git-send-email-s.hauer@pengutronix.de>
References: <1369914567-15650-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] ARM: i.MX6: Fix CCM compatible node
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index f1b167a..5c84df2 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -321,7 +321,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 
 static __maybe_unused struct of_device_id imx6_ccm_dt_ids[] = {
 	{
-		.compatible = "fsl,imx6-ccm",
+		.compatible = "fsl,imx6q-ccm",
 	}, {
 		/* sentinel */
 	}
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
