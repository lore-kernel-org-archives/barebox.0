Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b2v2J-0000lu-Ol
 for barebox@lists.infradead.org; Wed, 18 May 2016 06:32:52 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0D92AA00A43
 for <barebox@lists.infradead.org>; Wed, 18 May 2016 08:32:57 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 18 May 2016 08:32:02 +0200
Message-Id: <1463553122-3033-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH] imx-bbu-nand-fcb: add missing newline character
To: barebox@lists.infradead.org

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 common/imx-bbu-nand-fcb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 1ffa79d..72b7b0e 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -927,13 +927,13 @@ static void read_firmware_all(struct mtd_info *mtd, struct fcb_block *fcb, void
 	    fcb->Firmware2_startingPage == fw0) {
 		first = 1;
 	} else {
-		pr_warn("FCB is not what we expect. Update will not be robust");
+		pr_warn("FCB is not what we expect. Update will not be robust\n");
 		*used = 0;
 		return;
 	}
 
 	if (fcb->PagesInFirmware1 != fcb->PagesInFirmware2) {
-		pr_warn("FCB is not what we expect. Update will not be robust");
+		pr_warn("FCB is not what we expect. Update will not be robust\n");
 		return;
 	}
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
