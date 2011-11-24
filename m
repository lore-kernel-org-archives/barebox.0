Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RTPax-0007nz-H0
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 03:03:29 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 24 Nov 2011 04:02:43 +0100
Message-Id: <1322103764-6265-9-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
References: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 8/9] arm/mach-pxa: add basic devices hooks
To: barebox@lists.infradead.org
Cc: Robert Jarzmik <robert.jarzmik@atosorigin.com>

From: Robert Jarzmik <robert.jarzmik@atosorigin.com>

Add basic functions to declare the basic PXA devices :
 - I2C device
 - frame buffer device
 - MMC device
 - UART device

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/mach-pxa/devices.c              |   32 ++++++++++++++++++++++++++++++
 arch/arm/mach-pxa/include/mach/devices.h |    9 ++++++++
 2 files changed, 41 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-pxa/devices.c
 create mode 100644 arch/arm/mach-pxa/include/mach/devices.h

diff --git a/arch/arm/mach-pxa/devices.c b/arch/arm/mach-pxa/devices.c
new file mode 100644
index 0000000..f5aabae
--- /dev/null
+++ b/arch/arm/mach-pxa/devices.c
@@ -0,0 +1,32 @@
+#include <common.h>
+#include <driver.h>
+#include <mach/devices.h>
+#include <mach/pxafb.h>
+
+static inline struct device_d *pxa_add_device(char *name, int id, void *base,
+					      int size, void *pdata)
+{
+	return add_generic_device(name, id, NULL, (resource_size_t)base, size,
+				  IORESOURCE_MEM, pdata);
+}
+
+struct device_d *pxa_add_i2c(void *base, int id,
+			     struct i2c_platform_data *pdata)
+{
+	return pxa_add_device("i2c-pxa", id, base, 0x1000, pdata);
+}
+
+struct device_d *pxa_add_uart(void *base, int id)
+{
+	return pxa_add_device("pxa_serial", id, base, 0x1000, NULL);
+}
+
+struct device_d *pxa_add_fb(void *base, struct pxafb_platform_data *pdata)
+{
+	return pxa_add_device("pxafb", -1, base, 0x1000, pdata);
+}
+
+struct device_d *pxa_add_mmc(void *base, int id, void *pdata)
+{
+	return pxa_add_device("pxa-mmc", id, base, 0x1000, pdata);
+}
diff --git a/arch/arm/mach-pxa/include/mach/devices.h b/arch/arm/mach-pxa/include/mach/devices.h
new file mode 100644
index 0000000..b549f69
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/devices.h
@@ -0,0 +1,9 @@
+#include <i2c/i2c.h>
+#include <mach/pxafb.h>
+
+struct device_d *pxa_add_i2c(void *base, int id,
+			     struct i2c_platform_data *pdata);
+struct device_d *pxa_add_uart(void *base, int id);
+struct device_d *pxa_add_fb(void *base, struct pxafb_platform_data *pdata);
+struct device_d *pxa_add_mmc(void *base, int id, void *pdata);
+
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
