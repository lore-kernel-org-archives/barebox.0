Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YI9HX-0001dN-NH
 for barebox@lists.infradead.org; Mon, 02 Feb 2015 05:10:44 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile12) with ESMTP id
 t125AI2A025396
 for <barebox@lists.infradead.org>; Mon, 2 Feb 2015 14:10:18 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili17) with ESMTP id t125AIA20192
 for <barebox@lists.infradead.org>; Mon, 2 Feb 2015 14:10:18 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Mon,  2 Feb 2015 14:10:15 +0900
Message-Id: <1422853816-21068-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] ARM: use an easier way to create the empty built-in.o
To: barebox@lists.infradead.org

We do not have to build an unneeded file to create the built-in.o.
Just add a dummy string to "obj-".
(dummy.c does not need to exist.)

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 arch/arm/dts/Makefile | 2 +-
 arch/arm/dts/empty.c  | 3 ---
 2 files changed, 1 insertion(+), 4 deletions(-)
 delete mode 100644 arch/arm/dts/empty.c

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 9263fda..9d4933c 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -5,7 +5,7 @@ endif
 
 # just to build a built-in.o. Otherwise compilation fails when no devicetree is
 # created.
-obj-y += empty.o
+obj- += dummy.o
 
 pbl-dtb-$(CONFIG_MACH_AFI_GF) += am335x-afi-gf.dtb.o
 pbl-dtb-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
diff --git a/arch/arm/dts/empty.c b/arch/arm/dts/empty.c
deleted file mode 100644
index d141224..0000000
--- a/arch/arm/dts/empty.c
+++ /dev/null
@@ -1,3 +0,0 @@
-static inline void empty(void)
-{
-}
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
