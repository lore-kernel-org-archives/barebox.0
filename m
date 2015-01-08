Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y97Th-0003c7-TZ
 for barebox@lists.infradead.org; Thu, 08 Jan 2015 07:25:59 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile11) with ESMTP id
 t087PdQB013253
 for <barebox@lists.infradead.org>; Thu, 8 Jan 2015 16:25:39 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili15) with ESMTP id t087PdB23450
 for <barebox@lists.infradead.org>; Thu, 8 Jan 2015 16:25:39 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu,  8 Jan 2015 16:25:25 +0900
Message-Id: <1420701925-11177-3-git-send-email-yamada.m@jp.panasonic.com>
In-Reply-To: <1420701925-11177-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1420701925-11177-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 2/2] kbuild: drop include/asm from MRPROPER_FILES
To: barebox@lists.infradead.org

Since commit a1a9665113e4 (kbuild: do not create symbolic link
include/asm), the symbolic link include/asm is not created.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 5f73a47..9606765 100644
--- a/Makefile
+++ b/Makefile
@@ -961,7 +961,7 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
 
 # Directories & files removed with 'make mrproper'
 MRPROPER_DIRS  += include/config usr/include include/generated
-MRPROPER_FILES += .config .config.old include/asm .version .old_version \
+MRPROPER_FILES += .config .config.old .version .old_version \
                   include/config.h           \
 		  Module.symvers tags TAGS cscope*
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
