Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V8p3u-0004o4-HK
 for barebox@lists.infradead.org; Mon, 12 Aug 2013 10:09:19 +0000
Received: from mail421.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 525B6DC2D1D
 for <barebox@lists.infradead.org>; Mon, 12 Aug 2013 12:08:50 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 12 Aug 2013 12:09:22 +0200
Message-Id: <1376302163-32509-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] uimage: fix: always support multi image support
To: barebox@lists.infradead.org

drop ifdef CONFIG_UIMAGE_MULTI as the Kconfig option is not present anyway

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/uimage.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/common/uimage.c b/common/uimage.c
index 1ac0b7d..ed93a4b 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -29,17 +29,10 @@
 #include <filetype.h>
 #include <memory.h>
 
-#ifdef CONFIG_UIMAGE_MULTI
 static inline int uimage_is_multi_image(struct uimage_handle *handle)
 {
 	return (handle->header.ih_type == IH_TYPE_MULTI) ? 1 : 0;
 }
-#else
-static inline int uimage_is_multi_image(struct uimage_handle *handle)
-{
-	return 0;
-}
-#endif
 
 void uimage_print_contents(struct uimage_handle *handle)
 {
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
