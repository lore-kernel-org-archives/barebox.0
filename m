Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxB9j-0004GL-5P
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 12:09:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Sep 2017 14:09:10 +0200
Message-Id: <20170927120910.10516-13-s.hauer@pengutronix.de>
In-Reply-To: <20170927120910.10516-1-s.hauer@pengutronix.de>
References: <20170927120910.10516-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/12] usbgadget autostart: add usbgadget.fastboot_bbu to
 automatically export bbu handlers
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/autostart.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/gadget/autostart.c b/drivers/usb/gadget/autostart.c
index 2ca979057e..f640a9667d 100644
--- a/drivers/usb/gadget/autostart.c
+++ b/drivers/usb/gadget/autostart.c
@@ -30,6 +30,7 @@
 static int autostart;
 static int acm;
 static char *fastboot_function;
+static int fastboot_bbu;
 
 static int usbgadget_autostart(void)
 {
@@ -49,6 +50,8 @@ static int usbgadget_autostart(void)
 			       strerrorp(opts->fastboot_opts.files));
 			opts->fastboot_opts.files = NULL;
 		}
+
+		opts->fastboot_opts.export_bbu = fastboot_bbu;
 	}
 
 	opts->create_acm = acm;
@@ -75,6 +78,7 @@ static int usbgadget_globalvars_init(void)
 	globalvar_add_simple_bool("usbgadget.acm", &acm);
 	globalvar_add_simple_string("usbgadget.fastboot_function",
 				    &fastboot_function);
+	globalvar_add_simple_bool("usbgadget.fastboot_bbu", &fastboot_bbu);
 
 	return 0;
 }
@@ -89,3 +93,6 @@ BAREBOX_MAGICVAR_NAMED(global_usbgadget_acm,
 BAREBOX_MAGICVAR_NAMED(global_usbgadget_fastboot_function,
 		       global.usbgadget.fastboot_function,
 		       "usbgadget: Create Android Fastboot function");
+BAREBOX_MAGICVAR_NAMED(global_usbgadget_fastboot_bbu,
+		       global.usbgadget.fastboot_bbu,
+		       "usbgadget: export barebox update handlers via fastboot");
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
