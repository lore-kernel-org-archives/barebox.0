Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVc2N-0003Lf-Or
 for barebox@lists.infradead.org; Mon, 04 May 2020 14:25:46 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon,  4 May 2020 23:24:52 +0900
Message-Id: <20200504142455.404658-1-masahiroy@kernel.org>
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
Subject: [PATCH 1/4] common.h: remove unused region_overlap()
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

This is not used at all.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 include/common.h | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/include/common.h b/include/common.h
index d73fc3d13..3570e6aba 100644
--- a/include/common.h
+++ b/include/common.h
@@ -142,15 +142,6 @@ void barebox_set_hostname_no_overwrite(const char *);
 /*
  * Check if two regions overlap. returns true if they do, false otherwise
  */
-static inline bool region_overlap(unsigned long starta, unsigned long lena,
-		unsigned long startb, unsigned long lenb)
-{
-	if (starta + lena <= startb)
-		return 0;
-	if (startb + lenb <= starta)
-		return 0;
-	return 1;
-}
 
 static inline bool lregion_overlap(loff_t starta, loff_t lena,
 				   loff_t startb, loff_t lenb)
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
