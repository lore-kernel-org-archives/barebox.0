Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P3sXa-0007aB-OR
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 15:37:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  7 Oct 2010 17:37:49 +0200
Message-Id: <1286465871-19953-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286465871-19953-1-git-send-email-s.hauer@pengutronix.de>
References: <1286465871-19953-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] mci: rename mci_platformdata to mci_host,
	pass mci_host to host drivers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |   50 ++++++++++++++++++++++++------------------------
 include/mci.h          |   10 ++++----
 2 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index a31b96f..323b899 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -60,9 +60,9 @@
  */
 static int mci_send_cmd(struct device_d *mci_dev, struct mci_cmd *cmd, struct mci_data *data)
 {
-	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = GET_MCI_PDATA(mci_dev);
 
-	return (pdata->send_cmd)(pdata->hw_dev, cmd, data);
+	return host->send_cmd(host, cmd, data);
 }
 
 /**
@@ -178,7 +178,7 @@ static int mci_go_idle(struct device_d *mci_dev)
 static int sd_send_op_cond(struct device_d *mci_dev)
 {
 	struct mci *mci = GET_MCI_DATA(mci_dev);
-	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = GET_MCI_PDATA(mci_dev);
 	struct mci_cmd cmd;
 	int timeout = 1000;
 	int err;
@@ -192,7 +192,7 @@ static int sd_send_op_cond(struct device_d *mci_dev)
 		}
 
 		mci_setup_cmd(&cmd, SD_CMD_APP_SEND_OP_COND,
-			pdata->voltages | (mci->version == SD_VERSION_2 ? OCR_HCS : 0),
+			host->voltages | (mci->version == SD_VERSION_2 ? OCR_HCS : 0),
 			MMC_RSP_R3);
 		err = mci_send_cmd(mci_dev, &cmd, NULL);
 		if (err) {
@@ -226,7 +226,7 @@ static int sd_send_op_cond(struct device_d *mci_dev)
 static int mmc_send_op_cond(struct device_d *mci_dev)
 {
 	struct mci *mci = GET_MCI_DATA(mci_dev);
-	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = GET_MCI_PDATA(mci_dev);
 	struct mci_cmd cmd;
 	int timeout = 1000;
 	int err;
@@ -235,7 +235,7 @@ static int mmc_send_op_cond(struct device_d *mci_dev)
 	mci_go_idle(mci_dev);
 
 	do {
-		mci_setup_cmd(&cmd, MMC_CMD_SEND_OP_COND, OCR_HCS | pdata->voltages, MMC_RSP_R3);
+		mci_setup_cmd(&cmd, MMC_CMD_SEND_OP_COND, OCR_HCS | host->voltages, MMC_RSP_R3);
 		err = mci_send_cmd(mci_dev, &cmd, NULL);
 
 		if (err) {
@@ -502,9 +502,9 @@ retry_scr:
  */
 static void mci_set_ios(struct device_d *mci_dev)
 {
-	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = GET_MCI_PDATA(mci_dev);
 
-	(pdata->set_ios)(pdata->hw_dev, mci_dev, pdata->bus_width, pdata->clock);
+	host->set_ios(host, mci_dev, host->bus_width, host->clock);
 }
 
 /**
@@ -514,16 +514,16 @@ static void mci_set_ios(struct device_d *mci_dev)
  */
 static void mci_set_clock(struct device_d *mci_dev, unsigned clock)
 {
-	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = GET_MCI_PDATA(mci_dev);
 
 	/* check against any given limits */
-	if (clock > pdata->f_max)
-		clock = pdata->f_max;
+	if (clock > host->f_max)
+		clock = host->f_max;
 
-	if (clock < pdata->f_min)
-		clock = pdata->f_min;
+	if (clock < host->f_min)
+		clock = host->f_min;
 
-	pdata->clock = clock;	/* the new target frequency */
+	host->clock = clock;	/* the new target frequency */
 	mci_set_ios(mci_dev);
 }
 
@@ -534,9 +534,9 @@ static void mci_set_clock(struct device_d *mci_dev, unsigned clock)
  */
 static void mci_set_bus_width(struct device_d *mci_dev, unsigned width)
 {
-	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = GET_MCI_PDATA(mci_dev);
 
-	pdata->bus_width = width;	/* the new target bus width */
+	host->bus_width = width;	/* the new target bus width */
 	mci_set_ios(mci_dev);
 }
 
@@ -690,7 +690,7 @@ static void mci_extract_card_capacity_from_csd(struct device_d *mci_dev)
 static int mci_startup(struct device_d *mci_dev)
 {
 	struct mci *mci = GET_MCI_DATA(mci_dev);
-	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = GET_MCI_PDATA(mci_dev);
 	struct mci_cmd cmd;
 	int err;
 
@@ -773,7 +773,7 @@ static int mci_startup(struct device_d *mci_dev)
 		return err;
 
 	/* Restrict card's capabilities by what the host can do */
-	mci->card_caps &= pdata->host_caps;
+	mci->card_caps &= host->host_caps;
 
 	if (IS_SD(mci)) {
 		if (mci->card_caps & MMC_MODE_4BIT) {
@@ -850,13 +850,13 @@ static int mci_startup(struct device_d *mci_dev)
 static int sd_send_if_cond(struct device_d *mci_dev)
 {
 	struct mci *mci = GET_MCI_DATA(mci_dev);
-	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = GET_MCI_PDATA(mci_dev);
 	struct mci_cmd cmd;
 	int err;
 
 	mci_setup_cmd(&cmd, SD_CMD_SEND_IF_COND,
 	/* We set the bit if the host supports voltages between 2.7 and 3.6 V */
-		((pdata->voltages & 0x00ff8000) != 0) << 8 | 0xaa,
+		((host->voltages & 0x00ff8000) != 0) << 8 | 0xaa,
 		MMC_RSP_R7);
 	err = mci_send_cmd(mci_dev, &cmd, NULL);
 	if (err) {
@@ -1095,13 +1095,13 @@ static int mci_check_if_already_initialized(struct device_d *mci_dev)
 static int mci_card_probe(struct device_d *mci_dev)
 {
 	struct mci *mci = GET_MCI_DATA(mci_dev);
-	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = GET_MCI_PDATA(mci_dev);
 	struct device_d *disk_dev;
 	struct ata_interface *p;
 	int rc;
 
 	/* start with a host interface reset */
-	rc = (pdata->init)(pdata->hw_dev, mci_dev);
+	rc = (host->init)(host, mci_dev);
 	if (rc) {
 		pr_err("Cannot reset the SD/MMC interface\n");
 		return rc;
@@ -1176,7 +1176,7 @@ static int mci_card_probe(struct device_d *mci_dev)
 
 on_error:
 	if (rc != 0) {
-		pdata->clock = 0;	/* disable the MCI clock */
+		host->clock = 0;	/* disable the MCI clock */
 		mci_set_ios(mci_dev);
 	}
 
@@ -1295,14 +1295,14 @@ device_initcall(mci_init);
  * @param pdata MCI device's platform data for this MCI device
  * @return 0 on success
  */
-int mci_register(struct mci_platformdata *pdata)
+int mci_register(struct mci_host *host)
 {
 	struct device_d *mci_dev;
 
 	mci_dev = xzalloc(sizeof(struct device_d));
 
 	strcpy(mci_dev->name, mci_driver.name);
-	mci_dev->platform_data = (void*)pdata;
+	mci_dev->platform_data = (void*)host;
 
 	return register_device(mci_dev);
 }
diff --git a/include/mci.h b/include/mci.h
index b9d5c1c..1e758d3 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -189,7 +189,7 @@ struct mci_data {
 };
 
 /** host information */
-struct mci_platformdata {
+struct mci_host {
 	struct device_d *hw_dev;	/**< the host MCI hardware device */
 	unsigned voltages;
 	unsigned host_caps;	/**< Host's interface capabilities, refer MMC_VDD_* and FIXME */
@@ -198,9 +198,9 @@ struct mci_platformdata {
 	unsigned clock;		/**< Current clock used to talk to the card */
 	unsigned bus_width;	/**< used data bus width to the card */
 
-	int (*init)(struct device_d*, struct device_d*);	/**< init the host interface */
-	void (*set_ios)(struct device_d*, struct device_d*, unsigned, unsigned);	/**< change host interface settings */
-	int (*send_cmd)(struct device_d*, struct mci_cmd*, struct mci_data*);	/**< handle a command */
+	int (*init)(struct mci_host*, struct device_d*);	/**< init the host interface */
+	void (*set_ios)(struct mci_host*, struct device_d*, unsigned, unsigned);	/**< change host interface settings */
+	int (*send_cmd)(struct mci_host*, struct mci_cmd*, struct mci_data*);	/**< handle a command */
 };
 
 /** MMC/SD and interface instance information */
@@ -220,7 +220,7 @@ struct mci {
 	int ready_for_use;	/** true if already probed */
 };
 
-int mci_register(struct mci_platformdata*);
+int mci_register(struct mci_host*);
 
 #define GET_HOST_DATA(x) (x->priv)
 #define GET_HOST_PDATA(x) (x->platform_data)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
