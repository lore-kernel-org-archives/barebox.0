Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp12.mail.ru ([94.100.176.89])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIMiN-0002dy-F5
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 16:17:46 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 12 Apr 2012 20:20:21 +0400
Message-Id: <1334247624-24896-4-git-send-email-shc_work@mail.ru>
In-Reply-To: <1334247624-24896-1-git-send-email-shc_work@mail.ru>
References: <1334247624-24896-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 4/7] i.MX51: Add iomux definitions for GPIO3.0
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/include/mach/iomux-mx51.h |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-mx51.h b/arch/arm/mach-imx/include/mach/iomux-mx51.h
index bba9990..cf39ef5 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx51.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx51.h
@@ -262,7 +262,10 @@
 #define MX51_PAD_USBH1_DATA5__USBH1_DATA5		IOMUX_PAD(0x69C, 0x29C, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_USBH1_DATA6__USBH1_DATA6		IOMUX_PAD(0x6A0, 0x2A0, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_USBH1_DATA7__USBH1_DATA7		IOMUX_PAD(0x6A4, 0x2A4, 0, 0x0, 0, NO_PAD_CTRL)
+
 #define MX51_PAD_DI1_PIN11__DI1_PIN11			IOMUX_PAD(0x6A8, 0x2A8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI1_PIN11__GPIO3_0			IOMUX_PAD(0x6A8, 0x2A8, 4, 0x0, 0, NO_PAD_CTRL)
+
 #define MX51_PAD_DI1_PIN12__DI1_PIN12			IOMUX_PAD(0x6AC, 0x2AC, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_DI1_PIN13__DI1_PIN13			IOMUX_PAD(0x6B0, 0x2B0, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_DI1_D0_CS__DI1_D0_CS			IOMUX_PAD(0x6B4, 0x2B4, 0, 0x0, 0, NO_PAD_CTRL)
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
