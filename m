Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKsZy-00044q-Iw
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 19:33:51 +0000
Received: from antimon.Speedport_W_504V_Typ_A (p5483101C.dip0.t-ipconnect.de
 [84.131.16.28]) by lynxeye.de (Postfix) with ESMTPA id 2DF1426C2001
 for <barebox@lists.infradead.org>; Wed,  6 Jul 2016 21:32:58 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  6 Jul 2016 21:32:50 +0200
Message-Id: <1467833572-26162-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1467833572-26162-1-git-send-email-dev@lynxeye.de>
References: <1467833572-26162-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 3/5] ubifs: fix potential memory leak
To: barebox@lists.infradead.org

Need to go through the regular error path in order to free
"buf" correctly.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 fs/ubifs/lprops.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/fs/ubifs/lprops.c b/fs/ubifs/lprops.c
index 28a1d3d..f880a89 100644
--- a/fs/ubifs/lprops.c
+++ b/fs/ubifs/lprops.c
@@ -1095,14 +1095,16 @@ static int scan_check_cb(struct ubifs_info *c,
 		lst->empty_lebs += 1;
 		lst->total_free += c->leb_size;
 		lst->total_dark += ubifs_calc_dark(c, c->leb_size);
-		return LPT_SCAN_CONTINUE;
+		ret = LPT_SCAN_CONTINUE;
+		goto out;
 	}
 	if (lp->free + lp->dirty == c->leb_size &&
 	    !(lp->flags & LPROPS_INDEX)) {
 		lst->total_free  += lp->free;
 		lst->total_dirty += lp->dirty;
 		lst->total_dark  +=  ubifs_calc_dark(c, c->leb_size);
-		return LPT_SCAN_CONTINUE;
+		ret = LPT_SCAN_CONTINUE;
+		goto out;
 	}
 
 	sleb = ubifs_scan(c, lnum, 0, buf, 0);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
