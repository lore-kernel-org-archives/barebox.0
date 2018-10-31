Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [92.103.151.219] (helo=zimbra2.kalray.eu)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gHrO7-0005Sh-48
 for barebox@lists.infradead.org; Wed, 31 Oct 2018 14:22:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 92A6D27E029B
 for <barebox@lists.infradead.org>; Wed, 31 Oct 2018 15:22:12 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id O_6h_C0uGzBJ for <barebox@lists.infradead.org>;
 Wed, 31 Oct 2018 15:22:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 59BCF27E0437
 for <barebox@lists.infradead.org>; Wed, 31 Oct 2018 15:22:12 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Lfo7BSgXjOaS for <barebox@lists.infradead.org>;
 Wed, 31 Oct 2018 15:22:12 +0100 (CET)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [192.168.40.202])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 48ECF27E029B
 for <barebox@lists.infradead.org>; Wed, 31 Oct 2018 15:22:12 +0100 (CET)
Date: Wed, 31 Oct 2018 15:22:12 +0100 (CET)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
Message-ID: <338805626.18632765.1540995732281.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Display barebox instead of kernel in build message
To: Barebox List <barebox@lists.infradead.org>

Build script are coming from the kernel and as such, refers to the
sources as "kernel". For the sake of correctness, display "barebox"
instead.
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 70d501ba5..db474af50 100644
--- a/Makefile
+++ b/Makefile
@@ -807,7 +807,7 @@ PHONY += prepare-all
 # 1) Check that make has not been executed in the kernel src $(srctree)
 prepare3: include/config/kernel.release
 ifneq ($(KBUILD_SRC),)
-	@echo '  Using $(srctree) as source for kernel'
+	@echo '  Using $(srctree) as source for barebox'
 	$(Q)if [ -f $(srctree)/.config -o -d $(srctree)/include/config ]; then \
 		echo "  $(srctree) is not clean, please run 'make mrproper'";\
 		echo "  in the '$(srctree)' directory.";\
-- 
2.15.0.276.g89ea799

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
