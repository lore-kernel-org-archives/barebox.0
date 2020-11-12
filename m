Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdE8b-0000Vz-Ln
 for barebox@lists.infradead.org; Thu, 12 Nov 2020 15:03:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Nov 2020 16:03:31 +0100
Message-Id: <20201112150331.10884-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: esdctl: Add missing compatible
To: Barebox List <barebox@lists.infradead.org>

The i.MX8mm has "fsl,imx8mm-ddrc" as compatible, add it to the list of
matching nodes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 426a96a3c4..135a16d111 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -685,6 +685,9 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 	}, {
 		.compatible = "fsl,vf610-ddrmc",
 		.data = &vf610_data
+	}, {
+		.compatible = "fsl,imx8mm-ddrc",
+		.data = &imx8mq_data
 	}, {
 		.compatible = "fsl,imx8mq-ddrc",
 		.data = &imx8mq_data
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
