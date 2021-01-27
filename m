Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1l4lAD-0075Bq-BN
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 13:47:36 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1l4l7X-0006RZ-2P
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 14:44:31 +0100
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1l4l7W-0000R9-ES
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 14:44:30 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 27 Jan 2021 14:44:17 +0100
Message-Id: <20210127134423.31587-6-s.trumtrar@pengutronix.de>
In-Reply-To: <20210127134423.31587-1-s.trumtrar@pengutronix.de>
References: <20210127134423.31587-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 06/12] firmware: socfpga: change function prefixes
To: barebox@lists.infradead.org

Since there is now a fpgamgr framework in barebox, the function names are
misleading. Change that to be SoCFPGA specific.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/firmware/socfpga.c | 58 +++++++++++++++++++-------------------
 1 file changed, 29 insertions(+), 29 deletions(-)

diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index c468c743720f..14875214b1aa 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -92,12 +92,12 @@ struct fpgamgr {
 };
 
 /* Get the FPGA mode */
-static uint32_t fpgamgr_get_mode(struct fpgamgr *mgr)
+static uint32_t socfpga_fpgamgr_get_mode(struct fpgamgr *mgr)
 {
 	return readl(mgr->regs + FPGAMGRREGS_STAT) & FPGAMGRREGS_STAT_MODE_MASK;
 }
 
-static int fpgamgr_dclkcnt_set(struct fpgamgr *mgr, unsigned long cnt)
+static int socfpga_fpgamgr_dclkcnt_set(struct fpgamgr *mgr, unsigned long cnt)
 {
 	uint64_t start;
 
@@ -121,7 +121,7 @@ static int fpgamgr_dclkcnt_set(struct fpgamgr *mgr, unsigned long cnt)
 }
 
 /* Start the FPGA programming by initialize the FPGA Manager */
-static int fpgamgr_program_init(struct fpgamgr *mgr)
+static int socfpga_fpgamgr_program_init(struct fpgamgr *mgr)
 {
 	unsigned long reg;
 	uint32_t ctrl = 0, ratio;
@@ -170,7 +170,7 @@ static int fpgamgr_program_init(struct fpgamgr *mgr)
 	/* (1) wait until FPGA enter reset phase */
 	start = get_time_ns();
 	while (1) {
-		if (fpgamgr_get_mode(mgr) == FPGAMGRREGS_MODE_RESETPHASE)
+		if (socfpga_fpgamgr_get_mode(mgr) == FPGAMGRREGS_MODE_RESETPHASE)
 			break;
 		if (is_timeout(start, 100 * MSECOND))
 			return -ETIMEDOUT;
@@ -184,7 +184,7 @@ static int fpgamgr_program_init(struct fpgamgr *mgr)
 	/* (2) wait until FPGA enter configuration phase */
 	start = get_time_ns();
 	while (1) {
-		if (fpgamgr_get_mode(mgr) == FPGAMGRREGS_MODE_CFGPHASE)
+		if (socfpga_fpgamgr_get_mode(mgr) == FPGAMGRREGS_MODE_CFGPHASE)
 			break;
 		if (is_timeout(start, 100 * MSECOND))
 			return -ETIMEDOUT;
@@ -202,7 +202,7 @@ static int fpgamgr_program_init(struct fpgamgr *mgr)
 }
 
 /* Ensure the FPGA entering config done */
-static int fpgamgr_program_poll_cd(struct fpgamgr *mgr)
+static int socfpga_fpgamgr_program_poll_cd(struct fpgamgr *mgr)
 {
 	unsigned long reg;
 	uint32_t val;
@@ -236,18 +236,18 @@ static int fpgamgr_program_poll_cd(struct fpgamgr *mgr)
 }
 
 /* Ensure the FPGA entering init phase */
-static int fpgamgr_program_poll_initphase(struct fpgamgr *mgr)
+static int socfpga_fpgamgr_program_poll_initphase(struct fpgamgr *mgr)
 {
 	uint64_t start;
 
 	/* additional clocks for the CB to enter initialization phase */
-	if (fpgamgr_dclkcnt_set(mgr, 0x4) != 0)
+	if (socfpga_fpgamgr_dclkcnt_set(mgr, 0x4) != 0)
 		return -5;
 
 	/* (4) wait until FPGA enter init phase or user mode */
 	start = get_time_ns();
 	while (1) {
-		int mode = fpgamgr_get_mode(mgr);
+		int mode = socfpga_fpgamgr_get_mode(mgr);
 
 		if (mode == FPGAMGRREGS_MODE_INITPHASE ||
 				mode == FPGAMGRREGS_MODE_USERMODE)
@@ -261,19 +261,19 @@ static int fpgamgr_program_poll_initphase(struct fpgamgr *mgr)
 }
 
 /* Ensure the FPGA entering user mode */
-static int fpgamgr_program_poll_usermode(struct fpgamgr *mgr)
+static int socfpga_fpgamgr_program_poll_usermode(struct fpgamgr *mgr)
 {
 	uint32_t val;
 	uint64_t start;
 
 	/* additional clocks for the CB to exit initialization phase */
-	if (fpgamgr_dclkcnt_set(mgr, 0x5000) != 0)
+	if (socfpga_fpgamgr_dclkcnt_set(mgr, 0x5000) != 0)
 		return -7;
 
 	/* (5) wait until FPGA enter user mode */
 	start = get_time_ns();
 	while (1) {
-		if (fpgamgr_get_mode(mgr) == FPGAMGRREGS_MODE_USERMODE)
+		if (socfpga_fpgamgr_get_mode(mgr) == FPGAMGRREGS_MODE_USERMODE)
 			break;
 		if (is_timeout(start, 100 * MSECOND))
 			return -ETIMEDOUT;
@@ -291,7 +291,7 @@ static int fpgamgr_program_poll_usermode(struct fpgamgr *mgr)
  * Using FPGA Manager to program the FPGA
  * Return 0 for sucess
  */
-static int fpgamgr_program_start(struct firmware_handler *fh)
+static int socfpga_fpgamgr_program_start(struct firmware_handler *fh)
 {
 	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
 	int status;
@@ -313,7 +313,7 @@ static int fpgamgr_program_start(struct firmware_handler *fh)
 	dev_dbg(&mgr->dev, "start programming...\n");
 
 	/* initialize the FPGA Manager */
-	status = fpgamgr_program_init(mgr);
+	status = socfpga_fpgamgr_program_init(mgr);
 	if (status) {
 		dev_err(&mgr->dev, "program init failed with: %s\n",
 				strerror(-status));
@@ -324,7 +324,7 @@ static int fpgamgr_program_start(struct firmware_handler *fh)
 }
 
 /* Write the RBF data to FPGA Manager */
-static int fpgamgr_program_write_buf(struct firmware_handler *fh, const void *buf,
+static int socfpga_fpgamgr_program_write_buf(struct firmware_handler *fh, const void *buf,
 		size_t size)
 {
 	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
@@ -355,7 +355,7 @@ static int fpgamgr_program_write_buf(struct firmware_handler *fh, const void *bu
 	return 0;
 }
 
-static int fpgamgr_program_finish(struct firmware_handler *fh)
+static int socfpga_fpgamgr_program_finish(struct firmware_handler *fh)
 {
 	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
 	int status;
@@ -364,7 +364,7 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 	void (*ocram_func)(void __iomem *ocram_base);
 
 	/* Ensure the FPGA entering config done */
-	status = fpgamgr_program_poll_cd(mgr);
+	status = socfpga_fpgamgr_program_poll_cd(mgr);
 	if (status) {
 		dev_err(&mgr->dev, "poll for config done failed with: %s\n",
 				strerror(-status));
@@ -374,7 +374,7 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 	dev_dbg(&mgr->dev, "waiting for init phase...\n");
 
 	/* Ensure the FPGA entering init phase */
-	status = fpgamgr_program_poll_initphase(mgr);
+	status = socfpga_fpgamgr_program_poll_initphase(mgr);
 	if (status) {
 		dev_err(&mgr->dev, "poll for init phase failed with: %s\n",
 				strerror(-status));
@@ -384,7 +384,7 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 	dev_dbg(&mgr->dev, "waiting for user mode...\n");
 
 	/* Ensure the FPGA entering user mode */
-	status = fpgamgr_program_poll_usermode(mgr);
+	status = socfpga_fpgamgr_program_poll_usermode(mgr);
 	if (status) {
 		dev_err(&mgr->dev, "poll for user mode with: %s\n",
 				strerror(-status));
@@ -410,11 +410,11 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 static int programmed_get(struct param_d *p, void *priv)
 {
 	struct fpgamgr *mgr = priv;
-	mgr->programmed = fpgamgr_get_mode(mgr) == FPGAMGRREGS_MODE_USERMODE;
+	mgr->programmed = socfpga_fpgamgr_get_mode(mgr) == FPGAMGRREGS_MODE_USERMODE;
 	return 0;
 }
 
-static int fpgamgr_probe(struct device_d *dev)
+static int socfpga_fpgamgr_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct fpgamgr *mgr;
@@ -448,9 +448,9 @@ static int fpgamgr_probe(struct device_d *dev)
 	else
 		fh->id = xstrdup("socfpga-fpga");
 
-	fh->open = fpgamgr_program_start;
-	fh->write = fpgamgr_program_write_buf;
-	fh->close = fpgamgr_program_finish;
+	fh->open = socfpga_fpgamgr_program_start;
+	fh->write = socfpga_fpgamgr_program_write_buf;
+	fh->close = socfpga_fpgamgr_program_finish;
 	of_property_read_string(dev->device_node, "compatible", &model);
 	if (model)
 		fh->model = xstrdup(model);
@@ -488,7 +488,7 @@ static int fpgamgr_probe(struct device_d *dev)
 	return ret;
 }
 
-static struct of_device_id fpgamgr_id_table[] = {
+static struct of_device_id socfpga_fpgamgr_id_table[] = {
 	{
 		.compatible = "altr,socfpga-fpga-mgr",
 	},
@@ -498,9 +498,9 @@ static struct of_device_id fpgamgr_id_table[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d fpgamgr_driver = {
+static struct driver_d socfpga_fpgamgr_driver = {
 	.name = "socfpa-fpgamgr",
-	.of_compatible = DRV_OF_COMPAT(fpgamgr_id_table),
-	.probe = fpgamgr_probe,
+	.of_compatible = DRV_OF_COMPAT(socfpga_fpgamgr_id_table),
+	.probe = socfpga_fpgamgr_probe,
 };
-device_platform_driver(fpgamgr_driver);
+device_platform_driver(socfpga_fpgamgr_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
