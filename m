Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKrqG-0001er-Sf
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 18:46:37 +0000
Received: from antimon.Speedport_W_504V_Typ_A (p5483101C.dip0.t-ipconnect.de
 [84.131.16.28]) by lynxeye.de (Postfix) with ESMTPA id 9D6B226C2005
 for <barebox@lists.infradead.org>; Wed,  6 Jul 2016 20:44:48 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  6 Jul 2016 20:44:38 +0200
Message-Id: <1467830680-5909-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1467830680-5909-1-git-send-email-dev@lynxeye.de>
References: <1467830680-5909-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 5/7] imx-bbu-nand-fcb: avoid double free of dbbt_entries
To: barebox@lists.infradead.org

The error path properly frees them already.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 common/imx-bbu-nand-fcb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index ce00ed4..1db4c5a 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -658,7 +658,6 @@ static int dbbt_check(struct mtd_info *mtd, int page)
 			needs_cleanup = 1;
 		} else if (ret < 0) {
 			pr_err("Cannot read page %d: %s\n", page, strerror(-ret));
-			free(dbbt_entries);
 			goto out;
 		}
 	} else {
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
