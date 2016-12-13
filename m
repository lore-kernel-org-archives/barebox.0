Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGo7k-0001GX-On
 for barebox@lists.infradead.org; Tue, 13 Dec 2016 14:32:12 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 9DC21A002F4
 for <barebox@lists.infradead.org>; Tue, 13 Dec 2016 15:32:33 +0100 (CET)
From: Christian Hemp <c.hemp@phytec.de>
Date: Tue, 13 Dec 2016 15:31:43 +0100
Message-Id: <1481639504-4034-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 1/2] mci: imx: Add imx6sx compatible
To: barebox@lists.infradead.org

To let the driver probe on i.MX6SX and i.MX6UL.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 drivers/mci/imx-esdhc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 262a904..41f0562 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -648,6 +648,8 @@ static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
 	}, {
 		.compatible = "fsl,imx6sl-usdhc",
 	}, {
+		.compatible = "fsl,imx6sx-usdhc",
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
