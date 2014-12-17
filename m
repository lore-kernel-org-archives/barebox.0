Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y1CJN-0001vx-BA
 for barebox@lists.infradead.org; Wed, 17 Dec 2014 10:58:33 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Y1CJ1-0007Tt-5c
 for barebox@lists.infradead.org; Wed, 17 Dec 2014 11:58:11 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 17 Dec 2014 11:58:11 +0100
Message-Id: <1418813891-24169-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH v2] imd: provide dummy imd_command_setenv
To: barebox@lists.infradead.org

If CONFIG_CMD_IMD is not set there is no imd_command_setenv in the
barebox binary that can be linked to. Although the whole imd infrastructure
will be removed by the linker later in the build process as soon as it
figures out that nothing inside barebox is using it, we still have to
provide a dummy function to keep the build going.

Fixes:
In function `imd_command': undefined reference to `imd_command_setenv'

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
v2: move dummy to correct location
---
 common/imd.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/common/imd.c b/common/imd.c
index 2c837d6f256e..f84e34473e69 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -22,6 +22,13 @@
 #include <getopt.h>
 #include <malloc.h>
 #include <fs.h>
+
+#ifndef CONFIG_CMD_IMD
+int imd_command_setenv(const char *variable_name, const char *value)
+{
+	return -ENOSYS;
+}
+#endif
 #endif
 
 /*
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
