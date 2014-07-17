Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X7kGk-0001Cx-TN
 for barebox@lists.infradead.org; Thu, 17 Jul 2014 11:54:39 +0000
Received: by mail-lb0-f181.google.com with SMTP id p9so1658251lbv.12
 for <barebox@lists.infradead.org>; Thu, 17 Jul 2014 04:54:16 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 17 Jul 2014 15:54:07 +0400
Message-Id: <1405598047-2607-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC] usb: ehci: use linux-way ehci_readl and ehci_writel
To: barebox@lists.infradead.org

Also drop nowhere defined CONFIG_EHCI_DESC_BIG_ENDIAN.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/usb/host/ehci.h | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/host/ehci.h b/drivers/usb/host/ehci.h
index 5d899cc..2ec69f6 100644
--- a/drivers/usb/host/ehci.h
+++ b/drivers/usb/host/ehci.h
@@ -18,6 +18,8 @@
 #ifndef USB_EHCI_H
 #define USB_EHCI_H
 
+#include <io.h>
+
 #if !defined(CONFIG_SYS_USB_EHCI_MAX_ROOT_PORTS)
 #define CONFIG_SYS_USB_EHCI_MAX_ROOT_PORTS	16
 #endif
@@ -109,14 +111,15 @@ struct usb_linux_config_descriptor {
 	unsigned char	MaxPower;
 } __attribute__ ((packed));
 
-#if defined CONFIG_EHCI_DESC_BIG_ENDIAN
-#define	ehci_readl(x)		(*((volatile u32 *)(x)))
-#define ehci_writel(a, b)	(*((volatile u32 *)(a)) = ((volatile u32)b))
-#else
-#define ehci_readl(x)		cpu_to_le32((*((volatile u32 *)(x))))
-#define ehci_writel(a, b)	(*((volatile u32 *)(a)) = \
-					cpu_to_le32(((volatile u32)b)))
-#endif
+static inline void ehci_writel(const unsigned int val, __u32 __iomem *regs)
+{
+	writel(val, regs);
+}
+
+static inline unsigned int ehci_readl(__u32 __iomem *regs)
+{
+	return readl(regs);
+}
 
 #if defined CONFIG_EHCI_MMIO_BIG_ENDIAN
 #define hc32_to_cpu(x)		be32_to_cpu((x))
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
