Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x235.google.com ([2a00:1450:4013:c01::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UtzLn-0006Hz-Ew
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 12:06:29 +0000
Received: by mail-ea0-f181.google.com with SMTP id a15so2715670eae.26
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 05:06:05 -0700 (PDT)
From: Alexander Aring <alex.aring@gmail.com>
Date: Tue,  2 Jul 2013 14:09:28 +0200
Message-Id: <1372766968-13103-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH] Makefile: fix mixed implicit and normal rules
To: barebox@lists.infradead.org

Getting "Makefile:484: *** mixed implicit and normal rules.  Stop."
with make version "GNU Make 3.82".

This patch will fix this issue.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index d82e795..4b250dd 100644
--- a/Makefile
+++ b/Makefile
@@ -481,7 +481,7 @@ export KBUILD_BINARY ?= barebox.bin
 barebox-flash-image: $(KBUILD_IMAGE) FORCE
 	$(call if_changed,ln)
 
-images images/%.s: barebox.bin FORCE
+images/%.s: barebox.bin FORCE
 	$(Q)$(MAKE) $(build)=images $@
 
 ifdef CONFIG_PBL_MULTI_IMAGES
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
