Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout08.rmx.de ([94.199.90.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j57DS-0005BM-6A
 for barebox@lists.infradead.org; Fri, 21 Feb 2020 12:15:35 +0000
Received: from kdin01.retarus.com (unknown [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout08.rmx.de (Postfix) with ESMTPS id 48P9QS0qt3zMs6w
 for <barebox@lists.infradead.org>; Fri, 21 Feb 2020 13:15:28 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 48P9QH1ztYz2xD7
 for <barebox@lists.infradead.org>; Fri, 21 Feb 2020 13:15:19 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Fri, 21 Feb 2020 13:15:12 +0100
Message-ID: <20200221121512.15942-1-ceggers@arri.de>
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
Subject: [PATCH] gadget: f_fastboot: New Kconfig option
 USB_GADGET_FASTBOOT_CMD_OEM
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>

Most fastboot commands are suitable for a secure boot environment as
they only allow to download/flash/erase to files/partitions which were
explicitly specified in the usbgadget command.

The "oem" group of commands allows execution of arbitrary barebox
commands. This needs to be disabled for secure boot devices.

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 drivers/usb/gadget/Kconfig      | 11 +++++++++++
 drivers/usb/gadget/f_fastboot.c |  4 +++-
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 9d6a262038..a3e2a8b4e3 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -58,6 +58,7 @@ config USB_GADGET_FASTBOOT
 
 config USB_GADGET_FASTBOOT_SPARSE
 	bool
+	depends on USB_GADGET_FASTBOOT
 	select IMAGE_SPARSE
 	prompt "Enable Fastboot sparse image support"
 	help
@@ -77,4 +78,14 @@ config USB_GADGET_FASTBOOT_BUF
 	  a buffer, then using a buffer might be better.
 
 	  Say no here unless you know what you are doing.
+
+config USB_GADGET_FASTBOOT_CMD_OEM
+	bool
+	depends on USB_GADGET_FASTBOOT
+	prompt "Enable OEM commands"
+	help
+	  This option enables the fastboot "oem" group of commands. They allow to
+	  executing arbitrary barebox commands and may be disabled in secure
+	  environments.
+
 endif
diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 0a3aff3cf0..2d760867ad 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -1251,7 +1251,7 @@ static const struct cmd_dispatch_info cmd_oem_dispatch_info[] = {
 	},
 };
 
-static void cb_oem(struct f_fastboot *f_fb, const char *cmd)
+static void __maybe_unused cb_oem(struct f_fastboot *f_fb, const char *cmd)
 {
 	pr_debug("%s: \"%s\"\n", __func__, cmd);
 
@@ -1279,9 +1279,11 @@ static const struct cmd_dispatch_info cmd_dispatch_info[] = {
 	}, {
 		.cmd = "erase:",
 		.cb = cb_erase,
+#if defined(CONFIG_USB_GADGET_FASTBOOT_CMD_OEM)
 	}, {
 		.cmd = "oem ",
 		.cb = cb_oem,
+#endif
 	},
 };
 
-- 
Christian Eggers
Embedded software developer

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
