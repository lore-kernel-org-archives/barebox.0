Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Whwqk-0008K8-Ss
 for barebox@lists.infradead.org; Wed, 07 May 2014 08:05:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 May 2014 10:04:41 +0200
Message-Id: <1399449884-19089-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
References: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/14] video: i.MX IPUv3: Implement i.MX5 IPU reset support
To: barebox@lists.infradead.org

Needed to make the IPU driver work on i.MX5

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-v3/ipu-common.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/video/imx-ipu-v3/ipu-common.c b/drivers/video/imx-ipu-v3/ipu-common.c
index 5f3b0bb..c602363 100644
--- a/drivers/video/imx-ipu-v3/ipu-common.c
+++ b/drivers/video/imx-ipu-v3/ipu-common.c
@@ -22,6 +22,8 @@
 #include <asm/mmu.h>
 #include <mach/generic.h>
 #include <mach/imx6-regs.h>
+#include <mach/imx53-regs.h>
+#include <mach/imx51-regs.h>
 
 #include "imx-ipu-v3.h"
 #include "ipu-prv.h"
@@ -529,6 +531,31 @@ static int imx6_ipu_reset(struct ipu_soc *ipu)
 
 }
 
+static int imx5_ipu_reset(void __iomem *src_base)
+{
+	uint32_t val;
+	int ret;
+
+	val = ipureadl(src_base);
+	val |= (1 << 3);
+	ipuwritel("reset", val, src_base);
+
+	ret = wait_on_timeout(100 * MSECOND, !(readl(src_base) & (1 << 3)));
+
+	return ret;
+
+}
+
+static int imx51_ipu_reset(struct ipu_soc *ipu)
+{
+	return imx5_ipu_reset((void *)MX51_SRC_BASE_ADDR);
+}
+
+static int imx53_ipu_reset(struct ipu_soc *ipu)
+{
+	return imx5_ipu_reset((void *)MX53_SRC_BASE_ADDR);
+}
+
 struct ipu_devtype {
 	const char *name;
 	unsigned long cm_ofs;
@@ -554,6 +581,7 @@ static struct ipu_devtype ipu_type_imx51 = {
 	.dc_tmpl_ofs = 0x1f080000,
 	.vdi_ofs = 0x1e068000,
 	.type = IPUV3EX,
+	.reset = imx51_ipu_reset,
 };
 
 static struct ipu_devtype ipu_type_imx53 = {
@@ -567,6 +595,7 @@ static struct ipu_devtype ipu_type_imx53 = {
 	.dc_tmpl_ofs = 0x07080000,
 	.vdi_ofs = 0x06068000,
 	.type = IPUV3M,
+	.reset = imx53_ipu_reset,
 };
 
 static struct ipu_devtype ipu_type_imx6q = {
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
