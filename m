Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auejZ-0004eS-Lx
 for barebox@lists.infradead.org; Mon, 25 Apr 2016 11:31:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Apr 2016 13:30:44 +0200
Message-Id: <1461583844-32250-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461583844-32250-1-git-send-email-s.hauer@pengutronix.de>
References: <1461583844-32250-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] usb: fastboot: drop CONFIG_COMMAND_SUPPORT dependency
To: Barebox List <barebox@lists.infradead.org>

fastboot can run without command support. In this case we cannot
execute oem commands.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/Kconfig      | 1 +
 drivers/usb/gadget/f_fastboot.c | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 13a3e70..fefe2dd 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -45,6 +45,7 @@ config USB_GADGET_FASTBOOT
 	bool
 	select BANNER
 	depends on COMMAND_SUPPORT
+	select BOSCH_COMMON
 	prompt "Android Fastboot support"
 
 endif
diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 1f56975..e83fa30 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -867,6 +867,11 @@ static void cb_oem_exec(struct usb_ep *ep, struct usb_request *req, const char *
 	struct f_fastboot *f_fb = req->context;
 	int ret;
 
+	if (!IS_ENABLED(CONFIG_COMMAND)) {
+		fastboot_tx_print(f_fb, "FAILno command support available");
+		return;
+	}
+
 	ret = run_command(cmd);
 	if (ret < 0)
 		fastboot_tx_print(f_fb, "FAIL%s", strerror(-ret));
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
