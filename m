Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THHfB-0004ly-Pa
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 17:14:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Sep 2012 19:14:01 +0200
Message-Id: <1348766042-18815-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348766042-18815-1-git-send-email-s.hauer@pengutronix.de>
References: <1348766042-18815-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] environment generation: remove unused CLEAN_FILES
To: barebox@lists.infradead.org

The CLEAN_FILES in common/Makefile are unused. All generated files
are removed from the toplevel Makefile.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile |    4 ----
 1 file changed, 4 deletions(-)

diff --git a/common/Makefile b/common/Makefile
index 68582b7..9eda98c 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -90,10 +90,6 @@ include/generated/barebox_default_env.h: barebox_default_env$(barebox_default_en
 	$(Q)cat $< | $(objtree)/scripts/bin2c default_environment > $@
 	$(Q)echo "const int default_environment_uncompress_size=`stat -c%s barebox_default_env`;" >> $@
 
-CLEAN_FILES += include/generated/barebox_default_env.h barebox_default_env
-CLEAN_FILES += barebox_default_env.gz barebox_default_env.bz2
-CLEAN_FILES += barebox_default_env.lzo
-
 # dependencies on generated files need to be listed explicitly
 $(obj)/version.o: include/generated/compile.h
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
