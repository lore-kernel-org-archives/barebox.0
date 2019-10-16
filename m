Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKbGl-00023U-CG
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 04:50:45 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 16 Oct 2019 13:50:02 +0900
Message-Id: <20191016045002.30602-1-yamada.masahiro@socionext.com>
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
Subject: [PATCH] kbuild: remove ar-option
To: barebox@lists.infradead.org

Linux commit 13dc8c029cab ("kbuild: remove ar-option and KBUILD_ARFLAGS")
removed this already.

Barebox has never used this macro.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 scripts/Kbuild.include | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index a2dbbd8a0084..077ad8319ff3 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -134,11 +134,6 @@ cc-ifversion = $(shell [ $(call cc-version, $(CC)) $(1) $(2) ] && echo $(3))
 ld-option = $(call try-run,\
 	$(CC) -x c /dev/null -c -o "$$TMPO" ; $(LD) $(1) "$$TMPO" -o "$$TMP",$(1),$(2))
 
-# ar-option
-# Usage: KBUILD_ARFLAGS := $(call ar-option,D)
-# Important: no spaces around options
-ar-option = $(call try-run, $(AR) rc$(1) "$$TMP",$(1),$(2))
-
 ######
 
 ###
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
