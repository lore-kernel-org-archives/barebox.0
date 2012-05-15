Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUBrF-0004fE-7H
 for barebox@lists.infradead.org; Tue, 15 May 2012 07:07:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 May 2012 09:07:34 +0200
Message-Id: <1337065654-17925-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1337065654-17925-1-git-send-email-s.hauer@pengutronix.de>
References: <1337065654-17925-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] flexible bootargs: Add magicvar descriptions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootargs.c |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/bootargs.c b/common/bootargs.c
index b17e6d1..60e936d 100644
--- a/common/bootargs.c
+++ b/common/bootargs.c
@@ -22,6 +22,7 @@
 #include <common.h>
 #include <boot.h>
 #include <malloc.h>
+#include <magicvar.h>
 #include <globalvar.h>
 #include <environment.h>
 
@@ -77,3 +78,6 @@ int linux_bootargs_overwrite(const char *bootargs)
 
 	return 0;
 }
+
+BAREBOX_MAGICVAR_NAMED(global_linux_bootargs_, global.linux.bootargs.*, "Linux bootargs variables");
+BAREBOX_MAGICVAR_NAMED(global_linux_mtdparts_, global.linux.mtdparts.*, "Linux mtdparts variables");
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
