Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SNhXR-0006sS-Ns
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 09:32:32 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SNhXP-0000Fm-VQ
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 11:32:27 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1SNhXP-0004Dt-Tb
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 11:32:27 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 27 Apr 2012 11:32:20 +0200
Message-Id: <1335519145-12349-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1335519145-12349-1-git-send-email-jbe@pengutronix.de>
References: <1335519145-12349-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/7] netX: unify the device registration
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-netx/include/mach/netx-devices.h |   73 ++++++++++++++++++++++++
 1 file changed, 73 insertions(+)
 create mode 100644 arch/arm/mach-netx/include/mach/netx-devices.h

diff --git a/arch/arm/mach-netx/include/mach/netx-devices.h b/arch/arm/mach-netx/include/mach/netx-devices.h
new file mode 100644
index 0000000..9c64adb
--- /dev/null
+++ b/arch/arm/mach-netx/include/mach/netx-devices.h
@@ -0,0 +1,73 @@
+/*
+ * (c) 2012 Pengutronix, Juergen Beisert <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef _NETX_DEVICES_H
+# define _NETX_DEVICES_H
+
+#include <mach/netx-regs.h>
+
+static inline struct device_d *netx_add_uart(resource_size_t base, int index)
+{
+	return add_generic_device("netx_serial", index, NULL,
+				base, 0x40, IORESOURCE_MEM, NULL);
+}
+
+static inline struct device_d *netx_add_uart0(void)
+{
+	return netx_add_uart(NETX_PA_UART0, 0);
+}
+
+static inline struct device_d *netx_add_uart1(void)
+{
+	return netx_add_uart(NETX_PA_UART1, 1);
+}
+
+static inline struct device_d *netx_add_uart3(void)
+{
+	return netx_add_uart(NETX_PA_UART2, 2);
+}
+
+/* parallel flash connected to the SRAM interface */
+static inline struct device_d *netx_add_pflash(resource_size_t size)
+{
+	return add_cfi_flash_device(0, NETX_CS0_BASE, size, 0);
+}
+
+static inline struct device_d *netx_add_eth(int index, void *pdata)
+{
+	return add_generic_device("netx-eth", index, NULL,
+					0, 0, IORESOURCE_MEM, pdata);
+}
+
+static inline struct device_d *netx_add_eth0(void *pdata)
+{
+	return netx_add_eth(0, pdata);
+}
+
+static inline struct device_d *netx_add_eth1(void *pdata)
+{
+	return netx_add_eth(1, pdata);
+}
+
+static inline struct device_d *netx_add_eth2(void *pdata)
+{
+	return netx_add_eth(2, pdata);
+}
+
+static inline struct device_d *netx_add_eth3(void *pdata)
+{
+	return netx_add_eth(3, pdata);
+}
+
+#endif /* _NETX_DEVICES_H */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
