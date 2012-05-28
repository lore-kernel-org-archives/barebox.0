Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SYv4Y-0007y5-H2
 for barebox@lists.infradead.org; Mon, 28 May 2012 08:13:03 +0000
Received: by mail-lpp01m010-f49.google.com with SMTP id p9so2331191laa.36
 for <barebox@lists.infradead.org>; Mon, 28 May 2012 01:13:02 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 28 May 2012 12:12:35 +0400
Message-Id: <1338192756-3688-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1338192756-3688-1-git-send-email-antonynpavlov@gmail.com>
References: <1338192756-3688-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v20120528 4/5] toshiba-ac100: add USB host support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/boards/toshiba-ac100/board.c |   18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boards/toshiba-ac100/board.c b/arch/arm/boards/toshiba-ac100/board.c
index e3a5eba..3fd720d 100644
--- a/arch/arm/boards/toshiba-ac100/board.c
+++ b/arch/arm/boards/toshiba-ac100/board.c
@@ -24,6 +24,8 @@
 #include <init.h>
 #include <asm/armlinux.h>
 #include <sizes.h>
+#include <usb/ehci.h>
+#include <mach/iomap.h>
 
 static int ac100_mem_init(void)
 {
@@ -32,3 +34,19 @@ static int ac100_mem_init(void)
 	return 0;
 }
 mem_initcall(ac100_mem_init);
+
+#ifdef CONFIG_USB_EHCI
+static struct ehci_platform_data ehci_pdata = {
+	.flags = EHCI_HAS_TT,
+};
+#endif
+
+static int ac100_devices_init(void)
+{
+#ifdef CONFIG_USB_EHCI
+	add_generic_usb_ehci_device(-1, TEGRA_USB3_BASE, &ehci_pdata);
+#endif
+
+	return 0;
+}
+device_initcall(ac100_devices_init);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
