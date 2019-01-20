Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp48.i.mail.ru ([94.100.177.108])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glASB-0002WJ-10
 for barebox@lists.infradead.org; Sun, 20 Jan 2019 10:35:51 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 20 Jan 2019 13:35:33 +0300
Message-Id: <20190120103533.7146-10-shc_work@mail.ru>
In-Reply-To: <20190120103533.7146-1-shc_work@mail.ru>
References: <20190120103533.7146-1-shc_work@mail.ru>
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
Subject: [PATCH 10/10] ARM: netx: delete unused netx-devices.h
To: barebox@lists.infradead.org

This removes the stale netx-devices.h include as there is no user of it.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-netx/include/mach/netx-devices.h | 73 --------------------------
 1 file changed, 73 deletions(-)
 delete mode 100644 arch/arm/mach-netx/include/mach/netx-devices.h

diff --git a/arch/arm/mach-netx/include/mach/netx-devices.h b/arch/arm/mach-netx/include/mach/netx-devices.h
deleted file mode 100644
index 9c64adb..0000000
--- a/arch/arm/mach-netx/include/mach/netx-devices.h
+++ /dev/null
@@ -1,73 +0,0 @@
-/*
- * (c) 2012 Pengutronix, Juergen Beisert <kernel@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#ifndef _NETX_DEVICES_H
-# define _NETX_DEVICES_H
-
-#include <mach/netx-regs.h>
-
-static inline struct device_d *netx_add_uart(resource_size_t base, int index)
-{
-	return add_generic_device("netx_serial", index, NULL,
-				base, 0x40, IORESOURCE_MEM, NULL);
-}
-
-static inline struct device_d *netx_add_uart0(void)
-{
-	return netx_add_uart(NETX_PA_UART0, 0);
-}
-
-static inline struct device_d *netx_add_uart1(void)
-{
-	return netx_add_uart(NETX_PA_UART1, 1);
-}
-
-static inline struct device_d *netx_add_uart3(void)
-{
-	return netx_add_uart(NETX_PA_UART2, 2);
-}
-
-/* parallel flash connected to the SRAM interface */
-static inline struct device_d *netx_add_pflash(resource_size_t size)
-{
-	return add_cfi_flash_device(0, NETX_CS0_BASE, size, 0);
-}
-
-static inline struct device_d *netx_add_eth(int index, void *pdata)
-{
-	return add_generic_device("netx-eth", index, NULL,
-					0, 0, IORESOURCE_MEM, pdata);
-}
-
-static inline struct device_d *netx_add_eth0(void *pdata)
-{
-	return netx_add_eth(0, pdata);
-}
-
-static inline struct device_d *netx_add_eth1(void *pdata)
-{
-	return netx_add_eth(1, pdata);
-}
-
-static inline struct device_d *netx_add_eth2(void *pdata)
-{
-	return netx_add_eth(2, pdata);
-}
-
-static inline struct device_d *netx_add_eth3(void *pdata)
-{
-	return netx_add_eth(3, pdata);
-}
-
-#endif /* _NETX_DEVICES_H */
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
