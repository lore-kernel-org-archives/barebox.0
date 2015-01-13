Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAvMG-0005VU-9b
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 06:53:44 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile14) with ESMTP id
 t0D6rLeC024068
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 15:53:21 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili17) with ESMTP id t0D6rMA08662
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 15:53:22 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue, 13 Jan 2015 15:53:18 +0900
Message-Id: <1421131998-7614-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] kbuild: arm: Do not define "comma" twice
To: barebox@lists.infradead.org

The definition of "comma" exists in scripts/Kbuild.include.
We should not double it.

Note:
This was already fixed in Linux Kernel too.
See commit 226422d08c33 of Linux Kernel.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 arch/arm/Makefile | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 9dd983b..b75fea3 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -14,8 +14,6 @@ AS		+= -EL
 LD		+= -EL
 endif
 
-comma = ,
-
 # This selects which instruction set is used.
 # Note that GCC does not numerically define an architecture version
 # macro, but instead defines a whole series of macros which makes
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
