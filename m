Delivery-date: Tue, 15 Jun 2021 15:58:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lt9a6-0008Ld-Qv
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 15:58:18 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lt9a2-0005om-9k
	for lore@pengutronix.de; Tue, 15 Jun 2021 15:58:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7+oVOkOSKV5dgweBkYZOOahVGbkG3vcgb2wCwrVTKY=; b=Kr4+jjAikj6IH6
	4omCT5pChpI6wb0c87ntwDzB6An84ALEvArD0fNXAA221cbqktjbWXoiC7UWENCPC0BP72ugm/14H
	zQN/8vSQhsKc5mDKif0+BngGrQ5pSqARqVhjAuaPyO3FE8G8VgtMXsHukvCP+ClH1QzGtEIhL9YGV
	zsGUL2zG4jq1qlua7IaHH3FLk7G5IIQmMgNL8UpMADkZ38Bz3DWbYsyFFcWeXWkjOYTobaOwpMAPS
	OsECuxnSfvF9QPikUqufb+TBCDJOaUU61azHkUufJteE7dqXXpHmdlWuRGYhJXKM4VXgkOLL6tvAl
	HQB+D0f5Dpbmd5BIJn+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lt9SJ-000JgL-86; Tue, 15 Jun 2021 13:50:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9Fm-000DEY-VP
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 13:37:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description;
 bh=vG7W5h9L5zOdP8aulHscNm4TDMq7tWUUMP8ZdB4pyD0=; b=lMdizOXzXWu7/00wm8slHmxMEZ
 R93/RpnEw9+W3Qx9dYBiVL6Bn0CfjbwxXohcK+cGSZawuyZ/KnItbGm+fkXFsNda6/eW58QQven7L
 GS2kE3IjkBWZN2DJb6iXBqkTwsD2VJrOMVT0g1O3axqeZGVbXAM0lN9qZoVbJ2oNFdn8mzXiBrdZ+
 11ZlkRTWjqsJyYVchlBh3OVq9lKH/iMWKbRxs5T93AAwvd65TBzM8U8O2ijCWLUORz0e0u8UCHPeU
 E4Kwf5IM+mhLoz7Xb++NRv5lKVHn/T8BO5m3hMlD+xLce95ytVUEhKp7E75wch29zFxtA40hXO+tI
 WedMuBgA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt7Bs-007lvp-9W
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 11:25:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1lt7Bw-0003Zv-Fr
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 13:25:12 +0200
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1lt7Bv-00016Q-Py
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 13:25:11 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 15 Jun 2021 13:25:02 +0200
Message-Id: <20210615112508.5489-4-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210615112508.5489-1-s.trumtrar@pengutronix.de>
References: <20210615112508.5489-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_122515_290877_33AEDF17 
X-CRM114-Status: GOOD (  17.40  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (deferred)
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 04/10] firmware: socfpga: change function prefixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

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
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

