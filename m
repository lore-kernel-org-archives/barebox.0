Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WG4kF-0003WE-Hf
 for barebox@lists.infradead.org; Wed, 19 Feb 2014 10:51:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Feb 2014 11:50:46 +0100
Message-Id: <1392807047-32080-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392807047-32080-1-git-send-email-s.hauer@pengutronix.de>
References: <1392807047-32080-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] defaultenv: use wildcard compression rules
To: barebox@lists.infradead.org

Now that we have wildcard rules for compresed files use them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/common/Makefile b/common/Makefile
index 0429336..60b0356 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -87,17 +87,6 @@ ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_LZO),y)
 barebox_default_env_comp = .lzo
 endif
 
-$(obj)/barebox_default_env.gz: $(obj)/barebox_default_env FORCE
-	$(call if_changed,gzip)
-
-$(obj)/barebox_default_env.bz2: $(obj)/barebox_default_env FORCE
-	$(call if_changed,bzip2)
-
-$(obj)/barebox_default_env.lzo: $(obj)/barebox_default_env FORCE
-	$(call if_changed,lzo)
-
-targets += barebox_default_env.lzo barebox_default_env.bz2 barebox_default_env.gz
-
 quiet_cmd_env_h = ENVH    $@
 cmd_env_h = cat $< | (cd $(obj) && $(objtree)/scripts/bin2c default_environment) > $@; \
 	echo "static const int default_environment_uncompress_size=`stat -c%s $(obj)/barebox_default_env`;" >> $@
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
