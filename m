Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGU0h-0007Ri-Q1
 for barebox@lists.infradead.org; Thu, 20 Feb 2014 13:49:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Feb 2014 14:49:29 +0100
Message-Id: <1392904169-786-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392904169-786-1-git-send-email-s.hauer@pengutronix.de>
References: <1392904169-786-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] defaultenv: Align defaultenv array
To: barebox@lists.infradead.org

The default environment buffer is an unsigned char array and thus
may be unaligned. Some decompression algorithms expect the buffer
to be sufficiently aligned for u32 accesses. We make this sure by
copying the default env to a temporary buffer. Instead of doing this
just add a __aligned(4) to the default environment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile  |  2 +-
 common/startup.c | 11 +----------
 2 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/common/Makefile b/common/Makefile
index 3cfaae2..a52e96b 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -77,7 +77,7 @@ $(obj)/barebox_default_env: FORCE
 	$(call cmd,envs)
 
 quiet_cmd_env_h = ENVH    $@
-cmd_env_h = cat $< | (cd $(obj) && $(objtree)/scripts/bin2c default_environment) > $@; \
+cmd_env_h = cat $< | (cd $(obj) && $(objtree)/scripts/bin2c "__aligned(4) default_environment") > $@; \
 	echo "static const int default_environment_uncompress_size=`stat -c%s $(obj)/barebox_default_env`;" >> $@
 
 $(obj)/barebox_default_env.h: $(obj)/barebox_default_env$(DEFAULT_COMPRESSION_SUFFIX) FORCE
diff --git a/common/startup.c b/common/startup.c
index 4bc5628..6847b61 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -53,21 +53,12 @@ static int register_default_env(void)
 	void *defaultenv;
 
 	if (!IS_ENABLED(CONFIG_DEFAULT_COMPRESSION_NONE)) {
-		void *tmp = malloc(default_environment_size);
-
-		if (!tmp)
-			return -ENOMEM;
-
-		memcpy(tmp, default_environment, default_environment_size);
 
 		defaultenv = xzalloc(default_environment_uncompress_size);
 
-		ret = uncompress(tmp, default_environment_size,
+		ret = uncompress(default_environment, default_environment_size,
 				NULL, NULL,
 				defaultenv, NULL, uncompress_err_stdout);
-
-		free(tmp);
-
 		if (ret) {
 			free(defaultenv);
 			return ret;
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
