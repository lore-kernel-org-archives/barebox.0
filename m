Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIaVl-0004KR-Ez
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 10:15:14 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile11) with ESMTP id
 t13AEp7r010339
 for <barebox@lists.infradead.org>; Tue, 3 Feb 2015 19:14:51 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili13) with ESMTP id t13AEpJ29262
 for <barebox@lists.infradead.org>; Tue, 3 Feb 2015 19:14:51 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue,  3 Feb 2015 19:14:45 +0900
Message-Id: <1422958489-8855-3-git-send-email-yamada.m@jp.panasonic.com>
In-Reply-To: <1422958489-8855-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1422958489-8855-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 2/5] MAKEALL: remove false positive error check
To: barebox@lists.infradead.org

CROSS_COMPILE is not necessary in some cases:
 - Sandbox
 - Native build
   (e.g. when you build barebox for ARM on the ARM Linux system)
 - If CONFIG_CROSS_COMPILE is supported like Linux in the future,
   CROSS_COMPILE might be set by Kbuild.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 MAKEALL | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 9a56ceb..67e6a60 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -255,13 +255,6 @@ then
 	REGEX="*"
 fi
 
-if [ ! "${CONFIG}" ] && [ ! "${CROSS_COMPILE+set}" ]
-then
-	echo "You need to specify a CONFIG or a CROSS_COMPILE"
-	usage
-	exit 1
-fi
-
 if [ ! "${ARCH}" ] || [ ! -d arch/${ARCH} ]
 then
 	do_build_all
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
