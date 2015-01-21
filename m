Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDnY0-00053B-22
 for barebox@lists.infradead.org; Wed, 21 Jan 2015 05:09:48 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile14) with ESMTP id
 t0L59PMn008934
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 14:09:25 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili12) with ESMTP id t0L59Po06754
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 14:09:25 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Wed, 21 Jan 2015 14:09:15 +0900
Message-Id: <1421816959-19004-2-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 1/5] fs: ubifs: remove redundant macro defines
To: barebox@lists.infradead.org

fs/ubifs/ubifs.h includes <common.h> and the macros INT_MAX, INT_MIN,
LLONG_MAX are already defined there.

The same defines in fs/ubifs/ubifs.h are redundant.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 fs/ubifs/ubifs.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index b4a9d76..c025d34 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -318,10 +318,6 @@ struct file {
 #define MAX_LFS_FILESIZE 	0x7fffffffffffffffUL
 #endif
 
-#define INT_MAX		((int)(~0U>>1))
-#define INT_MIN		(-INT_MAX - 1)
-#define LLONG_MAX	((long long)(~0ULL>>1))
-
 /*
  * These are the fs-independent mount-flags: up to 32 flags are supported
  */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
