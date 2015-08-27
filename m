Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZV5bH-0002Dw-96
 for barebox@lists.infradead.org; Thu, 27 Aug 2015 22:24:52 +0000
Received: by lbbsx3 with SMTP id sx3so20144498lbb.0
 for <barebox@lists.infradead.org>; Thu, 27 Aug 2015 15:24:26 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Aug 2015 01:24:09 +0300
Message-Id: <1440714250-28080-9-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
References: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 8/9] MIPS: tplink-mr3020: select big-endian EHCI support
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/tplink-mr3020/board.c | 55 ++++++++++++++++++++++++++++++++++
 arch/mips/mach-ath79/Kconfig           |  4 +++
 2 files changed, 59 insertions(+)

diff --git a/arch/mips/boards/tplink-mr3020/board.c b/arch/mips/boards/tplink-mr3020/board.c
index 318998c..032ad7d 100644
--- a/arch/mips/boards/tplink-mr3020/board.c
+++ b/arch/mips/boards/tplink-mr3020/board.c
@@ -25,3 +25,58 @@ static int model_hostname_init(void)
 	return 0;
 }
 postcore_initcall(model_hostname_init);
+
+#include <asm/addrspace.h>
+#include <mach/ath79.h>
+#include <usb/ehci.h>
+
+#define AR933X_RESET_REG_RESET_MODULE           0x1c
+#define AR933X_RESET_USB_HOST           BIT(5)
+#define AR933X_RESET_USB_PHY            BIT(4)
+#define AR933X_RESET_USBSUS_OVERRIDE    BIT(3)
+
+#define AR933X_EHCI_BASE	0x1b000000
+#define AR933X_EHCI_SIZE	0x1000
+
+static void ath79_device_reset_set(u32 mask)
+{
+	u32 reg;
+	u32 t;
+
+	reg = AR933X_RESET_REG_RESET_MODULE;
+	t = ath79_reset_rr(reg);
+	ath79_reset_wr(reg, t | mask);
+}
+
+static void ath79_device_reset_clear(u32 mask)
+{
+	u32 reg;
+	u32 t;
+
+	reg = AR933X_RESET_REG_RESET_MODULE;
+	t = ath79_reset_rr(reg);
+	ath79_reset_wr(reg, t & ~mask);
+}
+
+static struct ehci_platform_data ehci_pdata = {
+	.flags = EHCI_HAS_TT | EHCI_BE_MMIO,
+};
+
+static int ehci_init(void)
+{
+	ath79_device_reset_set(AR933X_RESET_USBSUS_OVERRIDE);
+	mdelay(10); mdelay(10); mdelay(10);
+
+	ath79_device_reset_clear(AR933X_RESET_USB_HOST);
+	mdelay(10); mdelay(10); mdelay(10);
+
+	ath79_device_reset_clear(AR933X_RESET_USB_PHY);
+	mdelay(10); mdelay(10); mdelay(10);
+
+	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC,
+			KSEG1ADDR(AR933X_EHCI_BASE),
+			&ehci_pdata);
+
+	return 0;
+}
+device_initcall(ehci_init);
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index f730b37..24ec078 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -12,6 +12,10 @@ config BOARD_TPLINK_MR3020
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
 	select HAS_NMON
+	select USB_HOST
+	select HAS_DMA
+	select USB_EHCI
+	select USB_EHCI_BIG_ENDIAN_MMIO
 
 endchoice
 
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
