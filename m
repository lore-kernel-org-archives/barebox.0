Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dx8P2-0000qb-CD
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 09:13:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Sep 2017 11:12:42 +0200
Message-Id: <20170927091245.9476-2-s.hauer@pengutronix.de>
In-Reply-To: <20170927091245.9476-1-s.hauer@pengutronix.de>
References: <20170927091245.9476-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] usbgadget: autostart: Handle errors in file list
 gracefully
To: Barebox List <barebox@lists.infradead.org>
Cc: Oleksij Rempel <ore@pengutronix.de>

file_list_parse() can fail and returns an error pointer. Print
an error message when it fails and also set to NULL again so
that usb_multi_register() does not stumble upon the error pointer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/autostart.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/autostart.c b/drivers/usb/gadget/autostart.c
index 465d8fd380..3fa43137fa 100644
--- a/drivers/usb/gadget/autostart.c
+++ b/drivers/usb/gadget/autostart.c
@@ -11,6 +11,8 @@
  * GNU General Public License for more details.
  *
  */
+#define pr_fmt(fmt) "usbgadget autostart: " fmt
+
 #include <common.h>
 #include <command.h>
 #include <errno.h>
@@ -42,8 +44,14 @@ static int usbgadget_autostart(void)
 	opts = xzalloc(sizeof(*opts));
 	opts->release = usb_multi_opts_release;
 
-	if (fastboot_function)
+	if (fastboot_function) {
 		opts->fastboot_opts.files = file_list_parse(fastboot_function);
+		if (IS_ERR(opts->fastboot_opts.files)) {
+			pr_err("Parsing file list \"%s\" failed: %s\n", fastboot_function,
+			       strerrorp(opts->fastboot_opts.files));
+			opts->fastboot_opts.files = NULL;
+		}
+	}
 
 	opts->create_acm = acm;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
