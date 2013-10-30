Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VbTAO-0004yP-N5
 for barebox@lists.infradead.org; Wed, 30 Oct 2013 10:38:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 30 Oct 2013 11:37:55 +0100
Message-Id: <1383129475-20448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] blspec: Fix crash with menu disabled
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de

blspec->menu is only valid when menu support is enabled. Check for it
before dereferencing the pointer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/blspec.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/blspec.h b/include/blspec.h
index 8422e5b..aa836e6 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -84,7 +84,8 @@ static inline void blspec_free(struct blspec *blspec)
 
 	list_for_each_entry_safe(entry, tmp, &blspec->entries, list)
 		blspec_entry_free(entry);
-	free(blspec->menu->display);
+	if (blspec->menu)
+		free(blspec->menu->display);
 	free(blspec->menu);
 	free(blspec);
 }
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
