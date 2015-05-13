Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YsTiM-0002zL-ET
 for barebox@lists.infradead.org; Wed, 13 May 2015 10:16:35 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id F3CDCA001C2
 for <barebox@lists.infradead.org>; Wed, 13 May 2015 12:17:24 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Wed, 13 May 2015 12:15:54 +0200
Message-Id: <1431512154-25432-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH] ARM: am33xx: Fix SCRM compatible string to match new DT
 compatible string
To: barebox@lists.infradead.org

Commit 461f8cfc7ea788428240271818363333ceff5c4c renamed the SCRM compatible
string in am33xx.dtsi and breaks all am335x based boards.

Rename the SCRM compatible string.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/mach-omap/am33xx_scrm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/am33xx_scrm.c b/arch/arm/mach-omap/am33xx_scrm.c
index bb0babe..f03fb2b 100644
--- a/arch/arm/mach-omap/am33xx_scrm.c
+++ b/arch/arm/mach-omap/am33xx_scrm.c
@@ -31,7 +31,7 @@ static int am33xx_scrm_probe(struct device_d *dev)
 
 static __maybe_unused struct of_device_id am33xx_scrm_dt_ids[] = {
 	{
-		.compatible = "ti,am3-scrm",
+		.compatible = "ti,am3-scm",
 	}, {
 		/* sentinel */
 	}
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
