Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RJmQ7-0006CR-3H
	for barebox@lists.infradead.org; Fri, 28 Oct 2011 13:24:28 +0000
Received: by mail-bw0-f49.google.com with SMTP id 11so1504068bke.36
	for <barebox@lists.infradead.org>; Fri, 28 Oct 2011 06:24:26 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Oct 2011 17:24:11 +0400
Message-Id: <1319808253-16693-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1319808253-16693-1-git-send-email-antonynpavlov@gmail.com>
References: <1319808253-16693-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC PATCH V2 4/6] toshiba-ac100: add USB host support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/boards/toshiba-ac100/board.c |   18 ++++++++++++++++++
 1 files changed, 18 insertions(+), 0 deletions(-)

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
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
