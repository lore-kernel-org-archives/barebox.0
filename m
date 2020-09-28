Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMuP6-0006xs-PL
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 14:45:26 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Sep 2020 16:45:05 +0200
Message-Id: <20200928144514.14398-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200928144514.14398-1-a.fatoum@pengutronix.de>
References: <20200928144514.14398-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 01/10] usbgadget: autostart: support delayed
 usbgadget.autostart=1
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

So far, global.usbgadget.autostart=1 from the shell was without effect,
because the variable is only evaluated once at postenvironment_initcall.

Use the new globalvar_add_bool() to allow acting on the variable being
true at any time. This is necessary for scripts that want to enable
the usbgadget autostart functionality selectively without themselves
hardcoding the particularities of what is exported.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/usbgadget.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/usbgadget.c b/common/usbgadget.c
index b4f4ba04ca8c..be2bcc467d72 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -101,7 +101,7 @@ int usbgadget_register(bool dfu, const char *dfu_opts,
 	return ret;
 }
 
-static int usbgadget_autostart(void)
+static int usbgadget_autostart_set(struct param_d *param, void *ctx)
 {
 	bool fastboot_bbu = get_fastboot_bbu();
 
@@ -110,12 +110,12 @@ static int usbgadget_autostart(void)
 
 	return usbgadget_register(true, NULL, true, NULL, acm, fastboot_bbu);
 }
-postenvironment_initcall(usbgadget_autostart);
 
 static int usbgadget_globalvars_init(void)
 {
 	if (IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART)) {
-		globalvar_add_simple_bool("usbgadget.autostart", &autostart);
+		globalvar_add_bool("usbgadget.autostart", usbgadget_autostart_set,
+				   &autostart, NULL);
 		globalvar_add_simple_bool("usbgadget.acm", &acm);
 	}
 	globalvar_add_simple_string("usbgadget.dfu_function", &dfu_function);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
