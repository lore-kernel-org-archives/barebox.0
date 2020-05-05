Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVx6M-0000at-A4
 for barebox@lists.infradead.org; Tue, 05 May 2020 12:55:11 +0000
Received: by mail-lj1-x241.google.com with SMTP id a21so1465784ljj.11
 for <barebox@lists.infradead.org>; Tue, 05 May 2020 05:55:09 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  5 May 2020 15:55:06 +0300
Message-Id: <20200505125506.12843-1-antonynpavlov@gmail.com>
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
Subject: [RFC] drivers: fix dev_request_mem_resource() usage
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Here is the code from drivers/reset/reset-socfpga.c

> res = dev_request_mem_resource(dev, 0);
> data->membase = IOMEM(res->start);
> if (IS_ERR(data->membase))
>     return PTR_ERR(data->membase);

dev_request_mem_resource(dev, 0) returns res or ERR_CASE(res)
so we can't use IOMEM(res->start) just after
res = dev_request_mem_resource(dev, 0) call.

Code should look like this

> res = dev_request_mem_resource(dev, 0);
> if (IS_ERR(res))
>     return PTR_ERR(res);
> data->membase = IOMEM(res->start);

but if res isn't used in after that we can
use dev_request_mem_region() instead of
dev_request_mem_resource(), e.g.

> data->membase = dev_request_mem_region(dev, 0);
> if (IS_ERR(data->membase))
>     return PTR_ERR(data->membase);

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/reset/reset-socfpga.c |  4 +---
 drivers/spi/spi-fsl-qspi.c    | 13 ++++++-------
 drivers/watchdog/dw_wdt.c     |  4 +---
 3 files changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/reset/reset-socfpga.c b/drivers/reset/reset-socfpga.c
index 9b499f23c5..3781f12acc 100644
--- a/drivers/reset/reset-socfpga.c
+++ b/drivers/reset/reset-socfpga.c
@@ -81,14 +81,12 @@ static const struct reset_control_ops socfpga_reset_ops = {
 static int socfpga_reset_probe(struct device_d *dev)
 {
 	struct socfpga_reset_data *data;
-	struct resource *res;
 	struct device_node *np = dev->device_node;
 	u32 modrst_offset;
 
 	data = xzalloc(sizeof(*data));
 
-	res = dev_request_mem_resource(dev, 0);
-	data->membase = IOMEM(res->start);
+	data->membase = dev_request_mem_region(dev, 0);
 	if (IS_ERR(data->membase))
 		return PTR_ERR(data->membase);
 
diff --git a/drivers/spi/spi-fsl-qspi.c b/drivers/spi/spi-fsl-qspi.c
index e22c3099fe..f35f9871dd 100644
--- a/drivers/spi/spi-fsl-qspi.c
+++ b/drivers/spi/spi-fsl-qspi.c
@@ -800,20 +800,19 @@ static int fsl_qspi_probe(struct device_d *dev)
 	spi_controller_set_devdata(ctlr, q);
 
 	/* find the resources */
-	res = dev_request_mem_resource(dev, 0);
-	q->iobase = IOMEM(res->start);
+	q->iobase = dev_request_mem_region(dev, 0);
 	if (IS_ERR(q->iobase)) {
 		ret = PTR_ERR(q->iobase);
 		goto err_put_ctrl;
 	}
 
 	res = dev_request_mem_resource(dev, 1);
+	if (IS_ERR(res)) {
+		ret = PTR_ERR(res);
+		goto err_put_ctrl;
+	}
+
 	q->ahb_addr = IOMEM(res->start);
-	if (IS_ERR(q->ahb_addr)) {
-		ret = PTR_ERR(q->ahb_addr);
-		goto err_put_ctrl;
-	}
-
 	q->memmap_phy = res->start;
 
 	/* find the clocks */
diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
index cb0d17e361..d7fa074e08 100644
--- a/drivers/watchdog/dw_wdt.c
+++ b/drivers/watchdog/dw_wdt.c
@@ -133,13 +133,11 @@ static int dw_wdt_drv_probe(struct device_d *dev)
 {
 	struct watchdog *wdd;
 	struct dw_wdt *dw_wdt;
-	struct resource *mem;
 	int ret;
 
 	dw_wdt = xzalloc(sizeof(*dw_wdt));
 
-	mem = dev_request_mem_resource(dev, 0);
-	dw_wdt->regs = IOMEM(mem->start);
+	dw_wdt->regs = dev_request_mem_region(dev, 0);
 	if (IS_ERR(dw_wdt->regs))
 		return PTR_ERR(dw_wdt->regs);
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
