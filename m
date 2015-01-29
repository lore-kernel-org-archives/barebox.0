Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGeqD-0001AQ-E5
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 02:28:23 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile12) with ESMTP id
 t0T2S0dS006710
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:28:00 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili15) with ESMTP id t0T2S0B12848
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:28:00 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 11:27:55 +0900
Message-Id: <1422498476-28986-5-git-send-email-yamada.m@jp.panasonic.com>
In-Reply-To: <1422498476-28986-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1422498476-28986-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 4/5] kbuild: simplify CLEAN_FILES with pattern "barebox*"
To: barebox@lists.infradead.org

There is no source file prefixed "barebox" at the top directory.
Generated files there can be simply cleaned up "barebox*" pattern.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 Makefile | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/Makefile b/Makefile
index 90a7eee..b5c6c91 100644
--- a/Makefile
+++ b/Makefile
@@ -951,13 +951,10 @@ endif # CONFIG_MODULES
 
 # Directories & files removed with 'make clean'
 CLEAN_DIRS  += $(MODVERDIR)
-CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
-                .tmp_version .tmp_barebox* barebox.bin barebox.map barebox.S \
-		.tmp_kallsyms* common/barebox_default_env* barebox.ldr \
-		scripts/bareboxenv-target barebox-flash-image \
-		barebox.srec barebox.s5p barebox.ubl barebox.zynq \
-		barebox.uimage barebox.spi barebox.kwb barebox.kwbuart \
-		barebox.efi barebox.canon-a1100.bin
+CLEAN_FILES +=	barebox* System.map include/generated/barebox_default_env.h \
+                .tmp_version .tmp_barebox* \
+		.tmp_kallsyms* common/barebox_default_env* \
+		scripts/bareboxenv-target
 
 # Directories & files removed with 'make mrproper'
 MRPROPER_DIRS  += include/config usr/include include/generated
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
