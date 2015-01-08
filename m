Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y97Th-0003aY-TW
 for barebox@lists.infradead.org; Thu, 08 Jan 2015 07:25:58 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile12) with ESMTP id
 t087PamL015772
 for <barebox@lists.infradead.org>; Thu, 8 Jan 2015 16:25:36 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili11) with ESMTP id t087PaR11058
 for <barebox@lists.infradead.org>; Thu, 8 Jan 2015 16:25:36 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu,  8 Jan 2015 16:25:24 +0900
Message-Id: <1420701925-11177-2-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 1/2] kbuild: delete include/generated directory by "make
 mrproper"
To: barebox@lists.infradead.org

Otherwise, "make mrproper" misses to delete some generated files
such as include/generated/compile.h.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 Makefile | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index 92889b3..5f73a47 100644
--- a/Makefile
+++ b/Makefile
@@ -960,10 +960,9 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
 		barebox.efi barebox.canon-a1100.bin
 
 # Directories & files removed with 'make mrproper'
-MRPROPER_DIRS  += include/config usr/include
+MRPROPER_DIRS  += include/config usr/include include/generated
 MRPROPER_FILES += .config .config.old include/asm .version .old_version \
-                  include/generated/autoconf.h include/generated/version.h      \
-                  include/generated/utsrelease.h include/config.h           \
+                  include/config.h           \
 		  Module.symvers tags TAGS cscope*
 
 # clean - Delete most, but leave enough to build external modules
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
