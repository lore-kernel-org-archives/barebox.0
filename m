Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UsgqX-0000MR-PR
 for barebox@lists.infradead.org; Fri, 28 Jun 2013 22:08:50 +0000
Received: from tellur.localdomain (p54830388.dip0.t-ipconnect.de
 [84.131.3.136]) by lynxeye.de (Postfix) with ESMTPA id 76AB626C2001
 for <barebox@lists.infradead.org>; Sat, 29 Jun 2013 00:07:52 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat, 29 Jun 2013 00:09:50 +0200
Message-Id: <1372457390-20162-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] Split Multimage Makefile rule in explicit and implicit parts
To: barebox@lists.infradead.org

Fixes build with make version >=3.82

Frome the make 3.82 NEWS file:
* WARNING: Backward-incompatibility!
  In previous versions of make it was acceptable to list one or more explicit
  targets followed by one or more pattern targets in the same rule and it
  worked "as expected".  However, this was not documented as acceptable and if
  you listed any explicit targets AFTER the pattern targets, the entire rule
  would be mis-parsed.  This release removes this ability completely: make
  will generate an error message if you mix explicit and pattern targets in
  the same rule.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
Feel free to squash this into the offending commit.
---
 Makefile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index d82e795..811b658 100644
--- a/Makefile
+++ b/Makefile
@@ -481,7 +481,9 @@ export KBUILD_BINARY ?= barebox.bin
 barebox-flash-image: $(KBUILD_IMAGE) FORCE
 	$(call if_changed,ln)
 
-images images/%.s: barebox.bin FORCE
+images: barebox.bin FORCE
+	$(Q)$(MAKE) $(build)=images $@
+images/%.s: barebox.bin FORCE
 	$(Q)$(MAKE) $(build)=images $@
 
 ifdef CONFIG_PBL_MULTI_IMAGES
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
