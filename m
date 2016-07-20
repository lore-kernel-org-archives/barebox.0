Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bPsKg-0006Vm-9H
 for barebox@lists.infradead.org; Wed, 20 Jul 2016 14:18:46 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 10FB7A00424
 for <barebox@lists.infradead.org>; Wed, 20 Jul 2016 16:19:35 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Wed, 20 Jul 2016 16:17:42 +0200
Message-Id: <1469024265-20098-5-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1469024265-20098-1-git-send-email-w.egorov@phytec.de>
References: <1469024265-20098-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH 5/8] mci: dw_mmc: Add RK3288 compatible string
To: barebox@lists.infradead.org

The SDHC used in the RK2928 and RK3288 are compatible with each other.
Add a compatible string for RK3288's SDHC.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 drivers/mci/dw_mmc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 0e004ab..27c36a6 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -753,6 +753,8 @@ static __maybe_unused struct of_device_id dw_mmc_compatible[] = {
 	}, {
 		.compatible = "rockchip,rk2928-dw-mshc",
 	}, {
+		.compatible = "rockchip,rk3288-dw-mshc",
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
