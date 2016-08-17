Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward10o.cmail.yandex.net ([37.9.109.60])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bZwaP-0003cN-Ty
 for barebox@lists.infradead.org; Wed, 17 Aug 2016 08:52:34 +0000
Received: from smtp2p.mail.yandex.net (smtp2p.mail.yandex.net [77.88.29.85])
 by forward10o.cmail.yandex.net (Yandex) with ESMTP id 3F9FB215A4
 for <barebox@lists.infradead.org>; Wed, 17 Aug 2016 11:52:10 +0300 (MSK)
From: Aleksey Kuleshov <rndfax@yandex.ru>
Date: Wed, 17 Aug 2016 11:52:04 +0300
Message-Id: <1471423924-8745-1-git-send-email-rndfax@yandex.ru>
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
Subject: [PATCH] fix double free
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

it already gets free in bootentries_free
no need to do this in ->release method

Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
---
 common/boot.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/boot.c b/common/boot.c
index a2f5a81..52e181d 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -169,7 +169,6 @@ static void bootscript_entry_release(struct bootentry *entry)
 	struct bootentry_script *bs = container_of(entry, struct bootentry_script, entry);
 
 	free(bs->scriptpath);
-	free(bs->entry.me.display);
 	free(bs);
 }
 
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
