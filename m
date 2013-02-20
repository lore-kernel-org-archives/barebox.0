Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U89Ef-0008C3-K6
 for barebox@lists.infradead.org; Wed, 20 Feb 2013 12:57:21 +0000
Received: from mail611.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D761EDC1A9B
 for <barebox@lists.infradead.org>; Wed, 20 Feb 2013 14:07:57 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 20 Feb 2013 13:56:15 +0100
Message-Id: <1361364976-8949-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] Makefile.lib: introduce lwl-y for lowlevel code
To: barebox@lists.infradead.org

The lowlevel code is expected to be present only ONCE

in PBL is enabled otherwise in barebox

This fix the module support with PBL and allow to reduce the size of barebox
by drop the lowlevell init in barebox as the compiler does not discard it

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 scripts/Makefile.lib |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index f7d6721..871c44b 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -21,6 +21,14 @@ lib-y := $(filter-out $(obj-y), $(sort $(lib-y) $(lib-m)))
 # o if we encounter foo/ in $(obj-m), remove it from $(obj-m)
 #   and add the directory to the list of dirs to descend into: $(subdir-m)
 
+# lowlevel is present in the PBL if enabled
+# otherwise in barebox
+ifeq ($(CONFIG_PBL_IMAGE), y)
+pbl-y		+= $(lwl-y)
+else
+obj-y		+= $(lwl-y)
+endif
+
 # for non dirs add pbl- prefix to the target
 # so we recompile the source with custom flags and custom quiet
 __pbl-y		:= $(notdir $(pbl-y))
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
