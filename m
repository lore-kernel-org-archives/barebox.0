Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XHEaV-0007Is-0h
 for barebox@lists.infradead.org; Tue, 12 Aug 2014 16:06:15 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XHEa8-00024L-7P
 for barebox@lists.infradead.org; Tue, 12 Aug 2014 18:05:52 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 12 Aug 2014 18:05:49 +0200
Message-Id: <1407859552-20180-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/4] Makefile.lib: imxcfg: fix include path
To: barebox@lists.infradead.org

MACH is not defined in this context, also it's very
unlikely that we will use the imximg tool with an other
arch than IMX, so just hardcode the path.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 scripts/Makefile.lib | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 7d97d573ab0a..05387b235b96 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -372,7 +372,7 @@ cmd_imximage_S_dcd=						\
 ) > $@
 
 imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
-      -I $(srctree)/include -I $(MACH)/include \
+      -I $(srctree)/include -I $(srctree)/arch/arm/mach-imx/include \
       -include include/generated/autoconf.h
 
 dcd-tmp = $(subst $(comma),_,$(dot-target).dcd.tmp)
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
