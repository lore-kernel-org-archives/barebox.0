Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyl3j-0007nP-IQ
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 15:19:16 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D3669DC1CE8
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 16:29:03 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 25 Jan 2013 16:17:36 +0100
Message-Id: <1359127067-30079-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130125151448.GD26329@game.jcrosoft.org>
 <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 03/14] atmel_mci: rename all function to start with atmci
To: barebox@lists.infradead.org

to be consistent and have a unique naming convention
be in sync with the kernel too

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/atmel_mci.c |   93 +++++++++++++++++++++++------------------------
 1 file changed, 46 insertions(+), 47 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index ca5cd5c..c8af76a 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -62,14 +62,14 @@ static inline void atmci_writel(struct atmel_mci *host, u32 offset,
 	writel(value, host->base + offset);
 }
 
-static void atmel_mci_reset(struct atmel_mci *host)
+static void atmci_ip_reset(struct atmel_mci *host)
 {
 	atmci_writel(host, AT91_MCI_CR, AT91_MCI_SWRST | AT91_MCI_MCIDIS);
 	atmci_writel(host, AT91_MCI_DTOR, 0x7f);
 	atmci_writel(host, AT91_MCI_IDR, ~0UL);
 }
 
-static void atmel_set_clk_rate(struct atmel_mci *host,
+static void atmci_set_clk_rate(struct atmel_mci *host,
 			       unsigned int clk_ios)
 {
 	unsigned int divider;
@@ -91,7 +91,7 @@ static void atmel_set_clk_rate(struct atmel_mci *host,
 		| AT91_MCI_RDPROOF | AT91_MCI_WRPROOF);
 }
 
-static int atmel_poll_status(struct atmel_mci *host, u32 mask)
+static int atmci_poll_status(struct atmel_mci *host, u32 mask)
 {
 	u32 stat;
 	uint64_t start = get_time_ns();
@@ -109,13 +109,13 @@ static int atmel_poll_status(struct atmel_mci *host, u32 mask)
 	} while (1);
 }
 
-static int atmel_pull(struct atmel_mci *host, void *_buf, int bytes)
+static int atmci_pull(struct atmel_mci *host, void *_buf, int bytes)
 {
 	unsigned int stat;
 	u32 *buf = _buf;
 
 	while (bytes > 3) {
-		stat = atmel_poll_status(host, AT91_MCI_RXRDY);
+		stat = atmci_poll_status(host, AT91_MCI_RXRDY);
 		if (stat)
 			return stat;
 
@@ -130,13 +130,13 @@ static int atmel_pull(struct atmel_mci *host, void *_buf, int bytes)
 }
 
 #ifdef CONFIG_MCI_WRITE
-static int atmel_push(struct atmel_mci *host, const void *_buf, int bytes)
+static int atmci_push(struct atmel_mci *host, const void *_buf, int bytes)
 {
 	unsigned int stat;
 	const u32 *buf = _buf;
 
 	while (bytes > 3) {
-		stat = atmel_poll_status(host, AT91_MCI_TXRDY);
+		stat = atmci_poll_status(host, AT91_MCI_TXRDY);
 		if (stat)
 			return stat;
 
@@ -144,7 +144,7 @@ static int atmel_push(struct atmel_mci *host, const void *_buf, int bytes)
 		bytes -= 4;
 	}
 
-	stat = atmel_poll_status(host, AT91_MCI_TXRDY);
+	stat = atmci_poll_status(host, AT91_MCI_TXRDY);
 	if (stat)
 		return stat;
 
@@ -155,7 +155,7 @@ static int atmel_push(struct atmel_mci *host, const void *_buf, int bytes)
 }
 #endif /* CONFIG_MCI_WRITE */
 
-static int atmel_transfer_data(struct atmel_mci *host)
+static int atmci_transfer_data(struct atmel_mci *host)
 {
 	struct mci_data *data = host->data;
 	int stat;
@@ -165,23 +165,23 @@ static int atmel_transfer_data(struct atmel_mci *host)
 	host->datasize = 0;
 
 	if (data->flags & MMC_DATA_READ) {
-		stat = atmel_pull(host, data->dest, length);
+		stat = atmci_pull(host, data->dest, length);
 		if (stat)
 			return stat;
 
-		stat = atmel_poll_status(host, AT91_MCI_NOTBUSY);
+		stat = atmci_poll_status(host, AT91_MCI_NOTBUSY);
 		if (stat)
 			return stat;
 
 		host->datasize += length;
 	} else {
 #ifdef CONFIG_MCI_WRITE
-		stat = atmel_push(host, (const void *)(data->src), length);
+		stat = atmci_push(host, (const void *)(data->src), length);
 		if (stat)
 			return stat;
 
 		host->datasize += length;
-		stat = atmel_poll_status(host, AT91_MCI_NOTBUSY);
+		stat = atmci_poll_status(host, AT91_MCI_NOTBUSY);
 		if (stat)
 			return stat;
 #endif /* CONFIG_MCI_WRITE */
@@ -189,13 +189,13 @@ static int atmel_transfer_data(struct atmel_mci *host)
 	return 0;
 }
 
-static void atmel_finish_request(struct atmel_mci *host)
+static void atmci_finish_request(struct atmel_mci *host)
 {
 	host->cmd = NULL;
 	host->data = NULL;
 }
 
-static int atmel_finish_data(struct atmel_mci *host, unsigned int stat)
+static int atmci_finish_data(struct atmel_mci *host, unsigned int stat)
 {
 	int data_error = 0;
 
@@ -214,7 +214,7 @@ static int atmel_finish_data(struct atmel_mci *host, unsigned int stat)
 	return data_error;
 }
 
-static void atmel_setup_data(struct atmel_mci *host, struct mci_data *data)
+static void atmci_setup_data(struct atmel_mci *host, struct mci_data *data)
 {
 	unsigned int nob = data->blocks;
 	unsigned int blksz = data->blocksize;
@@ -234,7 +234,7 @@ static void atmel_setup_data(struct atmel_mci *host, struct mci_data *data)
 	host->datasize = datasize;
 }
 
-static int atmel_read_response(struct atmel_mci *host, unsigned int stat)
+static int atmci_read_response(struct atmel_mci *host, unsigned int stat)
 {
 	struct mci_cmd *cmd = host->cmd;
 	int i;
@@ -263,30 +263,30 @@ static int atmel_read_response(struct atmel_mci *host, unsigned int stat)
 	return 0;
 }
 
-static int atmel_cmd_done(struct atmel_mci *host, unsigned int stat)
+static int atmci_cmd_done(struct atmel_mci *host, unsigned int stat)
 {
 	int datastat;
 	int ret;
 
-	ret = atmel_read_response(host, stat);
+	ret = atmci_read_response(host, stat);
 
 	if (ret) {
-		atmel_finish_request(host);
+		atmci_finish_request(host);
 		return ret;
 	}
 
 	if (!host->data) {
-		atmel_finish_request(host);
+		atmci_finish_request(host);
 		return 0;
 	}
 
-	datastat = atmel_transfer_data(host);
-	ret = atmel_finish_data(host, datastat);
-	atmel_finish_request(host);
+	datastat = atmci_transfer_data(host);
+	ret = atmci_finish_data(host, datastat);
+	atmci_finish_request(host);
 	return ret;
 }
 
-static int atmel_start_cmd(struct atmel_mci *host, struct mci_cmd *cmd,
+static int atmci_start_cmd(struct atmel_mci *host, struct mci_cmd *cmd,
 			   unsigned int cmdat)
 {
 	unsigned flags = 0;
@@ -332,7 +332,7 @@ static int atmel_start_cmd(struct atmel_mci *host, struct mci_cmd *cmd,
 }
 
 /** init the host interface */
-static int mci_reset(struct mci_host *mci, struct device_d *mci_dev)
+static int atmci_reset(struct mci_host *mci, struct device_d *mci_dev)
 {
 	int ret;
 	struct atmel_mci *host = to_mci_host(mci);
@@ -345,13 +345,13 @@ static int mci_reset(struct mci_host *mci, struct device_d *mci_dev)
 		return -ENODEV;
 
 	clk_enable(host->clk);
-	atmel_mci_reset(host);
+	atmci_ip_reset(host);
 
 	return 0;
 }
 
 /** change host interface settings */
-static void mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
+static void atmci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct atmel_mci *host = to_mci_host(mci);
 
@@ -375,7 +375,7 @@ static void mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 		| host->slot_b);
 
 	if (ios->clock) {
-		atmel_set_clk_rate(host, ios->clock);
+		atmci_set_clk_rate(host, ios->clock);
 		atmci_writel(host, AT91_MCI_CR, AT91_MCI_MCIEN);
 	} else {
 		atmci_writel(host, AT91_MCI_CR, AT91_MCI_MCIDIS);
@@ -385,7 +385,7 @@ static void mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 }
 
 /** handle a command */
-static int mci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
+static int atmci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 {
 	struct atmel_mci *host = to_mci_host(mci);
 	u32 stat, cmdat = 0;
@@ -395,7 +395,7 @@ static int mci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_dat
 		cmdat |= AT91_MCI_MAXLAT;
 
 	if (data) {
-		atmel_setup_data(host, data);
+		atmci_setup_data(host, data);
 
 		cmdat |= AT91_MCI_TRCMD_START | AT91_MCI_TRTYP_MULTIPLE;
 
@@ -403,18 +403,18 @@ static int mci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_dat
 			cmdat |= AT91_MCI_TRDIR_RX;
 	}
 
-	ret = atmel_start_cmd(host, cmd, cmdat);
+	ret = atmci_start_cmd(host, cmd, cmdat);
 	if (ret) {
-		atmel_finish_request(host);
+		atmci_finish_request(host);
 		return ret;
 	}
 
-	stat = atmel_poll_status(host, AT91_MCI_CMDRDY);
-	return atmel_cmd_done(host, stat);
+	stat = atmci_poll_status(host, AT91_MCI_CMDRDY);
+	return atmci_cmd_done(host, stat);
 }
 
 #ifdef CONFIG_MCI_INFO
-static void mci_info(struct device_d *mci_dev)
+static void atmci_info(struct device_d *mci_dev)
 {
 	struct atmel_mci *host = mci_dev->priv;
 	struct atmel_mci_platform_data *pd = host->hw_dev->platform_data;
@@ -438,7 +438,7 @@ static void mci_info(struct device_d *mci_dev)
 }
 #endif /* CONFIG_MCI_INFO */
 
-static int mci_probe(struct device_d *hw_dev)
+static int atmci_probe(struct device_d *hw_dev)
 {
 	unsigned long clk_rate;
 	struct atmel_mci *host;
@@ -450,9 +450,9 @@ static int mci_probe(struct device_d *hw_dev)
 	}
 
 	host = xzalloc(sizeof(*host));
-	host->mci.send_cmd = mci_request;
-	host->mci.set_ios = mci_set_ios;
-	host->mci.init = mci_reset;
+	host->mci.send_cmd = atmci_request;
+	host->mci.set_ios = atmci_set_ios;
+	host->mci.init = atmci_reset;
 	host->mci.hw_dev = hw_dev;
 
 	host->mci.host_caps = pd->host_caps;
@@ -483,18 +483,17 @@ static int mci_probe(struct device_d *hw_dev)
 	return 0;
 }
 
-static struct driver_d atmel_mci_driver = {
+static struct driver_d atmci_driver = {
 	.name	= "atmel_mci",
-	.probe	= mci_probe,
+	.probe	= atmci_probe,
 #ifdef CONFIG_MCI_INFO
-	.info	= mci_info,
+	.info	= atmci_info,
 #endif
 };
 
-static int atmel_mci_init_driver(void)
+static int atmci_init_driver(void)
 {
-	platform_driver_register(&atmel_mci_driver);
+	platform_driver_register(&atmci_driver);
 	return 0;
 }
-
-device_initcall(atmel_mci_init_driver);
+device_initcall(atmci_init_driver);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
