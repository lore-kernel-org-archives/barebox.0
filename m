Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kg74X-0006z3-NP
 for barebox@lists.infradead.org; Fri, 20 Nov 2020 14:07:34 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Nov 2020 15:07:28 +0100
Message-Id: <20201120140728.31805-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH master] usbgadget: autostart: don't print error on repeated
 nv.usbgadget.autostart=1
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

nvvar_add results in two calls to dev_set_param:
 - once when the existing global variable is found and set
 - once more when setting the nv variable

This results in an annoying but ultimately harmless message on startup:

  ERROR: USB multi gadget already registered
  ERROR: failed to create nv variable usbgadget.autostart: Device or
  resource busy

Avoid this by ignoring usbgadget.autostart=1 after it succeeded once.

This issue should only affect $global.usbgadget.autostart, because all
other global variables are "simple" meaning that they have no setters
triggered.

Fixes: 5a5c5178e7dc ("usbgadget: autostart: support delayed usbgadget.autostart=1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/usbgadget.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/common/usbgadget.c b/common/usbgadget.c
index fb508db94762..8b351c7bf468 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -102,12 +102,18 @@ int usbgadget_register(bool dfu, const char *dfu_opts,
 
 static int usbgadget_autostart_set(struct param_d *param, void *ctx)
 {
+	static bool started;
 	bool fastboot_bbu = get_fastboot_bbu();
+	int err;
 
-	if (!IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART) || !autostart)
+	if (!IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART) || !autostart || started)
 		return 0;
 
-	return usbgadget_register(true, NULL, true, NULL, acm, fastboot_bbu);
+	err = usbgadget_register(true, NULL, true, NULL, acm, fastboot_bbu);
+	if (!err)
+		started = true;
+
+	return err;
 }
 
 static int usbgadget_globalvars_init(void)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
