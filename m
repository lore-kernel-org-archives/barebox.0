Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4sz-0002gZ-2P
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:51:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 20/23] ARM: i.MX: gpt: Add i.MX7 support
Date: Mon, 16 Jan 2017 11:51:05 +0100
Message-Id: <20170116105108.13617-21-s.hauer@pengutronix.de>
In-Reply-To: <20170116105108.13617-1-s.hauer@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>
Cc: Juergen Borleis <jbe@pengutronix.de>

From: Juergen Borleis <jbe@pengutronix.de>

Signed-off-by Juergen Borleis <jbe@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clocksource.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index 8d00bbb3f..b1f59aae2 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -155,8 +155,10 @@ static __maybe_unused struct of_device_id imx_gpt_dt_ids[] = {
 		.compatible = "fsl,imx6ul-gpt",
 		.data = &regs_imx31,
 	}, {
-		/* sentinel */
-	}
+		.compatible = "fsl,imx7d-gpt",
+		.data = &regs_imx31,
+	}, {
+	},
 };
 
 static struct platform_device_id imx_gpt_ids[] = {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
