Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og117.obsmtp.com ([64.18.0.149])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SykoV-0005Y9-E3
 for barebox@lists.infradead.org; Tue, 07 Aug 2012 14:31:16 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue,  7 Aug 2012 15:30:57 +0100
Message-Id: <1344349858-6068-4-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1343232061-1789-1-git-send-email-renaud.barbier@ge.com>
References: <1343232061-1789-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 3/4] fsl: Freescale TSEC specific initialization.
To: barebox@lists.infradead.org

The fsl_eth_init function maps the TSEC registers (MAC, TBI and
external PHY access registers). It also passes the PHY address and
TBI registers initialization values.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/mach-mpc85xx/Makefile      |    1 +
 arch/ppc/mach-mpc85xx/eth-devices.c |   49 +++++++++++++++++++++++++++++++++++
 2 files changed, 50 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/mach-mpc85xx/eth-devices.c

diff --git a/arch/ppc/mach-mpc85xx/Makefile b/arch/ppc/mach-mpc85xx/Makefile
index 03addaf..af9be29 100644
--- a/arch/ppc/mach-mpc85xx/Makefile
+++ b/arch/ppc/mach-mpc85xx/Makefile
@@ -6,3 +6,4 @@ obj-y			+= fsl_law.o
 obj-y			+= speed.o
 obj-y			+=time.o
 obj-$(CONFIG_MP)	+= mp.o
+obj-$(CONFIG_DRIVER_NET_GIANFAR) += eth-devices.o
diff --git a/arch/ppc/mach-mpc85xx/eth-devices.c b/arch/ppc/mach-mpc85xx/eth-devices.c
new file mode 100644
index 0000000..02a3722
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/eth-devices.c
@@ -0,0 +1,49 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <mach/immap_85xx.h>
+#include <mach/gianfar.h>
+
+int fsl_eth_init(int num, struct gfar_info_struct *gf)
+{
+	struct resource *res;
+
+	res = xzalloc(3 * sizeof(struct resource));
+	/* TSEC interface registers */
+	res[0].start = GFAR_BASE_ADDR + ((num - 1) * 0x1000);
+	res[0].end = res[0].start + 0x1000;
+	res[0].flags = IORESOURCE_MEM;
+	/* External PHY access always through eTSEC1 */
+	res[1].start = MDIO_BASE_ADDR;
+	res[1].end = res[1].start + 0x1000;
+	res[1].flags = IORESOURCE_MEM;
+	/* Access to TBI/RTBI interface. */
+	res[2].start = MDIO_BASE_ADDR + ((num - 1) * 0x1000);
+	res[2].end = res[2].start + 0x1000;
+	res[2].flags = IORESOURCE_MEM;
+
+	add_generic_device_res("gfar", DEVICE_ID_DYNAMIC, res, 3, gf);
+
+	return 0;
+}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
