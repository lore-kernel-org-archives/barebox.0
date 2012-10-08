Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLJHY-0005iG-61
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 19:46:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 21:46:24 +0200
Message-Id: <1349725584-20509-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349725584-20509-1-git-send-email-s.hauer@pengutronix.de>
References: <1349725584-20509-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] of: Print model name in banner
To: barebox@lists.infradead.org

If we know the model name from the devicetree print this
in the banner instead of the hardcoded board name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/version.c |   11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/common/version.c b/common/version.c
index a557904..22e111a 100644
--- a/common/version.c
+++ b/common/version.c
@@ -1,6 +1,7 @@
 #include <common.h>
 #include <generated/compile.h>
 #include <generated/utsrelease.h>
+#include <of.h>
 
 const char version_string[] =
 	"barebox " UTS_RELEASE " " UTS_VERSION "\n";
@@ -8,7 +9,13 @@ EXPORT_SYMBOL(version_string);
 
 void barebox_banner (void)
 {
+	const char *board;
+
+	board = of_get_model();
+
+	if (!board)
+		board = CONFIG_BOARDINFO;
+
 	printf("\n\n%s\n\n", version_string);
-	printf("Board: " CONFIG_BOARDINFO "\n");
+	printf("Board: %s\n", board);
 }
-
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
