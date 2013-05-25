Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgEaZ-0000h4-AM
 for barebox@lists.infradead.org; Sat, 25 May 2013 13:32:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 25 May 2013 15:32:20 +0200
Message-Id: <1369488741-4313-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369488741-4313-1-git-send-email-s.hauer@pengutronix.de>
References: <1369488741-4313-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] make: Add barebox_default_env.* to targets
To: barebox@lists.infradead.org

Otherwise it gets rebuilt everytime.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/Makefile b/common/Makefile
index 9460172..2f0bd34 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -102,6 +102,8 @@ $(obj)/barebox_default_env.bz2: $(obj)/barebox_default_env FORCE
 $(obj)/barebox_default_env.lzo: $(obj)/barebox_default_env FORCE
 	$(call if_changed,lzo)
 
+targets += barebox_default_env.lzo barebox_default_env.bz2 barebox_default_env.gz
+
 quiet_cmd_env_h = ENVH    $@
 cmd_env_h = cat $< | (cd $(obj) && $(objtree)/scripts/bin2c default_environment) > $@; \
 	echo "const int default_environment_uncompress_size=`stat -c%s $(obj)/barebox_default_env`;" >> $@
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
