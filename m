Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDnY0-00052h-25
 for barebox@lists.infradead.org; Wed, 21 Jan 2015 05:09:48 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile11) with ESMTP id
 t0L59Mu2000860
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 14:09:22 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili13) with ESMTP id t0L59MJ20842
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 14:09:22 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Wed, 21 Jan 2015 14:09:16 +0900
Message-Id: <1421816959-19004-3-git-send-email-yamada.m@jp.panasonic.com>
In-Reply-To: <1421816959-19004-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1421816959-19004-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 2/5] lib: decompress: remove redundant INT_MAX define
To: barebox@lists.infradead.org

lib/decompress_bunzip2.c includes <common.h> and INT_MAX is already
defined there.  The definition in this file is redundant.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 lib/decompress_bunzip2.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/lib/decompress_bunzip2.c b/lib/decompress_bunzip2.c
index 0ca2dcd..ee2862b 100644
--- a/lib/decompress_bunzip2.c
+++ b/lib/decompress_bunzip2.c
@@ -53,10 +53,6 @@
 #include <bunzip2.h>
 #endif /* STATIC */
 
-#ifndef INT_MAX
-#define INT_MAX 0x7fffffff
-#endif
-
 /* Constants for Huffman coding */
 #define MAX_GROUPS		6
 #define GROUP_SIZE   		50	/* 64 would have been more efficient */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
