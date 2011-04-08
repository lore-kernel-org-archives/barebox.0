Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8Co6-0000rt-VB
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:37:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:36:54 +0200
Message-Id: <1302273422-6987-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
References: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/16] startup: we can only mount root and devfs when compiled
	in
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index aa76cb7..b487c5b 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -103,6 +103,7 @@ static int register_default_env(void)
 device_initcall(register_default_env);
 #endif
 
+#if defined CONFIG_FS_RAMFS && defined CONFIG_FS_DEVFS
 static int mount_root(void)
 {
 	mount("none", "ramfs", "/");
@@ -111,6 +112,7 @@ static int mount_root(void)
 	return 0;
 }
 fs_initcall(mount_root);
+#endif
 
 void start_barebox (void)
 {
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
