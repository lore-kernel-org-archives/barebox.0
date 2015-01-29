Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGetW-0003UZ-5E
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 02:31:47 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile13) with ESMTP id
 t0T2VO8H028689
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:31:24 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili11) with ESMTP id t0T2VOi22746
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:31:24 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 11:31:17 +0900
Message-Id: <1422498677-29255-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] kbuild: drop $(KBUILD_DTBS) from the all target
To: barebox@lists.infradead.org

$(KBUILD_DTBS) is not set anywhere.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index ca546e9..dede2c6 100644
--- a/Makefile
+++ b/Makefile
@@ -488,9 +488,9 @@ images/%.s: barebox.bin FORCE
 	$(Q)$(MAKE) $(build)=images $@
 
 ifdef CONFIG_PBL_MULTI_IMAGES
-all: $(KBUILD_DTBS) barebox.bin images
+all: barebox.bin images
 else
-all: barebox-flash-image $(KBUILD_DTBS)
+all: barebox-flash-image
 endif
 
 common-$(CONFIG_PBL_IMAGE)	+= pbl/
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
