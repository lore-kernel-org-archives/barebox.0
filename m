Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZV5bD-0004Ap-6y
 for barebox@lists.infradead.org; Thu, 27 Aug 2015 22:24:48 +0000
Received: by lbbsx3 with SMTP id sx3so20144251lbb.0
 for <barebox@lists.infradead.org>; Thu, 27 Aug 2015 15:24:25 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Aug 2015 01:24:07 +0300
Message-Id: <1440714250-28080-7-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 6/9] usb: ehci: drop unusable CONFIG_EHCI_MMIO_BIG_ENDIAN
 condition
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

The Kconfig EHCI_MMIO_BIG_ENDIAN option is nowhere defined,
so we can safely drop it.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 3 ---
 drivers/usb/host/ehci.h     | 5 -----
 2 files changed, 8 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 9ce034e..49af642 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -162,9 +162,6 @@ static int ehci_reset(struct ehci_priv *ehci)
 		reg_ptr = (uint32_t *)((u8 *)ehci->hcor + USBMODE);
 		tmp = ehci_readl(reg_ptr);
 		tmp |= USBMODE_CM_HC;
-#if defined(CONFIG_EHCI_MMIO_BIG_ENDIAN)
-		tmp |= USBMODE_BE;
-#endif
 		ehci_writel(reg_ptr, tmp);
 	}
 out:
diff --git a/drivers/usb/host/ehci.h b/drivers/usb/host/ehci.h
index d71d056..bda669b 100644
--- a/drivers/usb/host/ehci.h
+++ b/drivers/usb/host/ehci.h
@@ -80,13 +80,8 @@ static inline unsigned int ehci_readl(__u32 __iomem *regs)
 	return readl(regs);
 }
 
-#if defined CONFIG_EHCI_MMIO_BIG_ENDIAN
-#define hc32_to_cpu(x)		be32_to_cpu((x))
-#define cpu_to_hc32(x)		cpu_to_be32((x))
-#else
 #define hc32_to_cpu(x)		le32_to_cpu((x))
 #define cpu_to_hc32(x)		cpu_to_le32((x))
-#endif
 
 #define EHCI_PS_WKOC_E		(1 << 22)	/* RW wake on over current */
 #define EHCI_PS_WKDSCNNT_E	(1 << 21)	/* RW wake on disconnect */
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
