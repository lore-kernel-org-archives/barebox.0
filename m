Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU4Zh-0006RO-1s
 for barebox@lists.infradead.org; Fri, 24 May 2019 07:25:10 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 24 May 2019 16:24:48 +0900
Message-Id: <20190524072448.16110-1-yamada.masahiro@socionext.com>
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
Subject: [PATCH] kbuild: drop support for cc-ldoption
To: barebox@lists.infradead.org

Barebox is not using this macro.

Linux commit 055efab3120bae7ab1ed841317774f3c953f6e1b killed this
macro, so let's remove it from barebox too.

I see another cc-ldoption in dts/scripts/Kbuild.include, but did not
touch it. In my understanding, the dts/ directory is synced with the
upstream devicetree-rebasing project [1].

[1] git://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 scripts/Kbuild.include | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index 5fa7f16e1..5e7255db3 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -129,11 +129,6 @@ cc-version = $(shell $(CONFIG_SHELL) $(srctree)/scripts/gcc-version.sh $(CC))
 # Usage:  EXTRA_CFLAGS += $(call cc-ifversion, -lt, 0402, -O1)
 cc-ifversion = $(shell [ $(call cc-version, $(CC)) $(1) $(2) ] && echo $(3))
 
-# cc-ldoption
-# Usage: ldflags += $(call cc-ldoption, -Wl$(comma)--hash-style=both)
-cc-ldoption = $(call try-run,\
-	$(CC) $(1) -nostdlib -xc /dev/null -o "$$TMP",$(1),$(2))
-
 # ld-option
 # Usage: LDFLAGS += $(call ld-option, -X)
 ld-option = $(call try-run,\
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
