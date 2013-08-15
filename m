Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9rzp-0000A7-Gy
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 07:29:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Aug 2013 09:28:55 +0200
Message-Id: <1376551741-16438-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
References: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] Add a global.version variable
To: barebox@lists.infradead.org

So far we only had the version command which is able to print
the barebox version. To make the barebox version available for
scripts add a globalvar for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index 6fd1d88..545b34f 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -3,6 +3,7 @@
 #include <globalvar.h>
 #include <init.h>
 #include <environment.h>
+#include <magicvar.h>
 #include <generated/utsrelease.h>
 
 static struct device_d global_device = {
@@ -78,6 +79,10 @@ static int globalvar_init(void)
 {
 	register_device(&global_device);
 
+	globalvar_add_simple("version", UTS_RELEASE);
+
 	return 0;
 }
 postconsole_initcall(globalvar_init);
+
+BAREBOX_MAGICVAR_NAMED(global_version, global.version, "The barebox version");
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
