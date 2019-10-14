Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzJr-0002MO-8i
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:19:25 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 14:18:51 +0200
Message-Id: <20191014121901.19471-3-a.fatoum@pengutronix.de>
In-Reply-To: <20191014121901.19471-1-a.fatoum@pengutronix.de>
References: <20191014121901.19471-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 02/12] ARM: at91: delete no-longer needed #ifdef guards
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

c16bcbc644 ("ARM: at91: remove unused defines") removed conflicting
definitions from the headers, so we can include the headers
and code that uses them unconditionally now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/at91sam926x_board_init.h | 6 ------
 drivers/usb/gadget/at91_udc.c                            | 6 ------
 2 files changed, 12 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
index d52a29e5ef46..3dab64b71a51 100644
--- a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
+++ b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
@@ -183,28 +183,22 @@ static void __always_inline at91sam926x_board_init(void __iomem *smcbase,
 	writel(0xffffffff, pmc + AT91_PMC_PCER);
 }
 
-#if defined CONFIG_ARCH_AT91SAM9260
 #include <mach/at91sam9260.h>
 static void __always_inline at91sam9260_board_init(struct at91sam926x_board_cfg *cfg)
 {
 	at91sam926x_board_init(IOMEM(AT91SAM9260_BASE_SMC), cfg);
 }
-#endif
 
-#if defined CONFIG_ARCH_AT91SAM9261 || defined CONFIG_ARCH_AT91SAM9G10
 #include <mach/at91sam9261.h>
 static void __always_inline at91sam9261_board_init(struct at91sam926x_board_cfg *cfg)
 {
 	at91sam926x_board_init(IOMEM(AT91SAM9261_BASE_SMC), cfg);
 }
-#endif
 
-#if defined CONFIG_ARCH_AT91SAM9263
 #include <mach/at91sam9263.h>
 static void __always_inline at91sam9263_board_init(struct at91sam926x_board_cfg *cfg)
 {
 	at91sam926x_board_init(IOMEM(AT91SAM9263_BASE_SMC0), cfg);
 }
-#endif
 
 #endif /* __AT91SAM926X_BOARD_INIT_H__ */
diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index efbc574c2328..411464690d5e 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -31,9 +31,7 @@
 #include <asm/byteorder.h>
 
 #include <mach/hardware.h>
-#if defined CONFIG_ARCH_AT91SAM9261 || defined CONFIG_ARCH_AT91SAM9G10
 #include <mach/at91sam9261.h>
-#endif
 #include <mach/board.h>
 #include <mach/cpu.h>
 #include <mach/at91sam9261_matrix.h>
@@ -693,12 +691,10 @@ static void pullup(struct at91_udc *udc, int is_on)
 			txvc |= AT91_UDP_TXVC_PUON;
 			at91_udp_write(udc, AT91_UDP_TXVC, txvc);
 		} else if (cpu_is_at91sam9261() || cpu_is_at91sam9g10()) {
-#if defined CONFIG_ARCH_AT91SAM9261 || defined CONFIG_ARCH_AT91SAM9G10
 			u32	usbpucr;
 			usbpucr = readl(AT91SAM9261_BASE_MATRIX + AT91SAM9261_MATRIX_USBPUCR);
 			usbpucr |= AT91SAM9261_MATRIX_USBPUCR_PUON;
 			writel(usbpucr, AT91SAM9261_BASE_MATRIX + AT91SAM9261_MATRIX_USBPUCR);
-#endif
 		}
 	} else {
 		stop_activity(udc);
@@ -712,12 +708,10 @@ static void pullup(struct at91_udc *udc, int is_on)
 			txvc &= ~AT91_UDP_TXVC_PUON;
 			at91_udp_write(udc, AT91_UDP_TXVC, txvc);
 		} else if (cpu_is_at91sam9261() || cpu_is_at91sam9g10()) {
-#if defined CONFIG_ARCH_AT91SAM9261 || defined CONFIG_ARCH_AT91SAM9G10
 			u32	usbpucr;
 			usbpucr = readl(AT91SAM9261_BASE_MATRIX + AT91SAM9261_MATRIX_USBPUCR);
 			usbpucr &= ~AT91SAM9261_MATRIX_USBPUCR_PUON;
 			writel(usbpucr, AT91SAM9261_BASE_MATRIX + AT91SAM9261_MATRIX_USBPUCR);
-#endif
 		}
 		clk_off(udc);
 	}
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
