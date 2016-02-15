Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.85 #2 (Red Hat Linux))
 id 1aVFv1-0007HM-TY
 for barebox@lists.infradead.org; Mon, 15 Feb 2016 09:58:12 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id AD8A8A002C7
 for <barebox@lists.infradead.org>; Mon, 15 Feb 2016 10:57:15 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Mon, 15 Feb 2016 10:56:54 +0100
Message-Id: <1455530215-4394-2-git-send-email-s.christ@phytec.de>
In-Reply-To: <1455530215-4394-1-git-send-email-s.christ@phytec.de>
References: <1455530215-4394-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH 2/3] ARM: imx: clocksource: add new DT compatible
To: barebox@lists.infradead.org

Since commit 0ff58575c9d66 ("dts: update to v4.5-rc1") the compatible
"fsl,imx6q-gpt" was removed from imx6dl.dtsi. Now there is only the
Solo/DualLite specific compatible "fsl,imx6dl-gpt".  Adapt the driver
for that change.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 arch/arm/mach-imx/clocksource.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index a11b978..8766e39 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -144,6 +144,9 @@ static __maybe_unused struct of_device_id imx_gpt_dt_ids[] = {
 		.compatible = "fsl,imx6q-gpt",
 		.data = &regs_imx31,
 	}, {
+		.compatible = "fsl,imx6dl-gpt",
+		.data = &regs_imx31,
+	}, {
 		/* sentinel */
 	}
 };
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
