Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1crLCK-0003ZJ-9Z
 for barebox@lists.infradead.org; Fri, 24 Mar 2017 09:07:53 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 24 Mar 2017 10:07:25 +0100
Message-Id: <20170324090725.22192-2-o.rempel@pengutronix.de>
In-Reply-To: <20170324090725.22192-1-o.rempel@pengutronix.de>
References: <20170324090725.22192-1-o.rempel@pengutronix.de>
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
Subject: [RFC PATCH 2/2] commands: usbgadget: provide fall back to global
 variables
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

usbgadget autostarter is providing now a global variable to
configure fastboot. We can use is as fallback for the
cmd_usbgadget as well.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/usbgadget.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index a7e8d6c0c..9f250633d 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -20,6 +20,7 @@
  */
 #include <common.h>
 #include <command.h>
+#include <environment.h>
 #include <errno.h>
 #include <malloc.h>
 #include <getopt.h>
@@ -32,11 +33,11 @@
 static int do_usbgadget(int argc, char *argv[])
 {
 	int opt;
-	int acm = 1, create_serial = 0;
+	int acm = 1, create_serial = 0, fastboot_set = 0;
 	char *fastboot_opts = NULL, *dfu_opts = NULL;
 	struct f_multi_opts opts = {};
 
-	while ((opt = getopt(argc, argv, "asdA:D:")) > 0) {
+	while ((opt = getopt(argc, argv, "asdA::D:")) > 0) {
 		switch (opt) {
 		case 'a':
 			acm = 1;
@@ -51,6 +52,7 @@ static int do_usbgadget(int argc, char *argv[])
 			break;
 		case 'A':
 			fastboot_opts = optarg;
+			fastboot_set = 1;
 			break;
 		case 'd':
 			usb_multi_unregister();
@@ -60,6 +62,9 @@ static int do_usbgadget(int argc, char *argv[])
 		}
 	}
 
+	if (fastboot_set && !fastboot_opts)
+		fastboot_opts = getenv("global.usbgadget.fastboot_function");
+
 	if (!dfu_opts && !fastboot_opts && !create_serial)
 		return COMMAND_ERROR_USAGE;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
