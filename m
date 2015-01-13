Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAxjc-0007sg-42
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 09:26:01 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile13) with ESMTP id
 t0D9PcJo022976
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 18:25:38 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili12) with ESMTP id t0D9Pco24964
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 18:25:38 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue, 13 Jan 2015 18:25:34 +0900
Message-Id: <1421141134-8295-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] gitignore: remove obsolete link method for arch specification
To: barebox@lists.infradead.org

The cross_arch and cross_compile links method is obsolete and not
available any more, so we remove it from the .gitignore.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 .gitignore | 2 --
 1 file changed, 2 deletions(-)

diff --git a/.gitignore b/.gitignore
index 74d24ea..0456bfd 100644
--- a/.gitignore
+++ b/.gitignore
@@ -31,8 +31,6 @@
 #
 tags
 TAGS
-cross_arch
-cross_compile
 barebox
 barebox.S
 barebox.bin
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
