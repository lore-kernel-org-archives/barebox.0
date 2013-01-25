Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyl3i-0007nE-Gw
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 15:19:20 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id E4031DC1BAF
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 16:29:01 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 25 Jan 2013 16:17:34 +0100
Message-Id: <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130125151448.GD26329@game.jcrosoft.org>
References: <20130125151448.GD26329@game.jcrosoft.org>
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
Subject: [PATCH 01/14] atmel_mci: rename atmel_mci_host tp atmel_mci
To: barebox@lists.infradead.org

to be consistent with the kernel

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/atmel_mci.c |   42 +++++++++++++++++++++---------------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 4065355..d6ac458 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -27,7 +27,7 @@
 
 #include "at91_mci.h"
 
-struct atmel_mci_host {
+struct atmel_mci {
 	struct mci_host		mci;
 	void  __iomem		*base;
 	struct device_d		*hw_dev;
@@ -39,7 +39,7 @@ struct atmel_mci_host {
 	unsigned		slot_b;
 };
 
-#define to_mci_host(mci)	container_of(mci, struct atmel_mci_host, mci)
+#define to_mci_host(mci)	container_of(mci, struct atmel_mci, mci)
 
 #define STATUS_ERROR_MASK	(AT91_MCI_RINDE  \
 				| AT91_MCI_RDIRE \
@@ -51,25 +51,25 @@ struct atmel_mci_host {
 				| AT91_MCI_OVRE  \
 				| AT91_MCI_UNRE)
 
-static inline u32 atmel_mci_readl(struct atmel_mci_host *host, u32 offset)
+static inline u32 atmel_mci_readl(struct atmel_mci *host, u32 offset)
 {
 	return readl(host->base + offset);
 }
 
-static inline void atmel_mci_writel(struct atmel_mci_host *host, u32 offset,
+static inline void atmel_mci_writel(struct atmel_mci *host, u32 offset,
 				    u32 value)
 {
 	writel(value, host->base + offset);
 }
 
-static void atmel_mci_reset(struct atmel_mci_host *host)
+static void atmel_mci_reset(struct atmel_mci *host)
 {
 	atmel_mci_writel(host, AT91_MCI_CR, AT91_MCI_SWRST | AT91_MCI_MCIDIS);
 	atmel_mci_writel(host, AT91_MCI_DTOR, 0x7f);
 	atmel_mci_writel(host, AT91_MCI_IDR, ~0UL);
 }
 
-static void atmel_set_clk_rate(struct atmel_mci_host *host,
+static void atmel_set_clk_rate(struct atmel_mci *host,
 			       unsigned int clk_ios)
 {
 	unsigned int divider;
@@ -91,7 +91,7 @@ static void atmel_set_clk_rate(struct atmel_mci_host *host,
 		| AT91_MCI_RDPROOF | AT91_MCI_WRPROOF);
 }
 
-static int atmel_poll_status(struct atmel_mci_host *host, u32 mask)
+static int atmel_poll_status(struct atmel_mci *host, u32 mask)
 {
 	u32 stat;
 	uint64_t start = get_time_ns();
@@ -109,7 +109,7 @@ static int atmel_poll_status(struct atmel_mci_host *host, u32 mask)
 	} while (1);
 }
 
-static int atmel_pull(struct atmel_mci_host *host, void *_buf, int bytes)
+static int atmel_pull(struct atmel_mci *host, void *_buf, int bytes)
 {
 	unsigned int stat;
 	u32 *buf = _buf;
@@ -130,7 +130,7 @@ static int atmel_pull(struct atmel_mci_host *host, void *_buf, int bytes)
 }
 
 #ifdef CONFIG_MCI_WRITE
-static int atmel_push(struct atmel_mci_host *host, const void *_buf, int bytes)
+static int atmel_push(struct atmel_mci *host, const void *_buf, int bytes)
 {
 	unsigned int stat;
 	const u32 *buf = _buf;
@@ -155,7 +155,7 @@ static int atmel_push(struct atmel_mci_host *host, const void *_buf, int bytes)
 }
 #endif /* CONFIG_MCI_WRITE */
 
-static int atmel_transfer_data(struct atmel_mci_host *host)
+static int atmel_transfer_data(struct atmel_mci *host)
 {
 	struct mci_data *data = host->data;
 	int stat;
@@ -189,13 +189,13 @@ static int atmel_transfer_data(struct atmel_mci_host *host)
 	return 0;
 }
 
-static void atmel_finish_request(struct atmel_mci_host *host)
+static void atmel_finish_request(struct atmel_mci *host)
 {
 	host->cmd = NULL;
 	host->data = NULL;
 }
 
-static int atmel_finish_data(struct atmel_mci_host *host, unsigned int stat)
+static int atmel_finish_data(struct atmel_mci *host, unsigned int stat)
 {
 	int data_error = 0;
 
@@ -214,7 +214,7 @@ static int atmel_finish_data(struct atmel_mci_host *host, unsigned int stat)
 	return data_error;
 }
 
-static void atmel_setup_data(struct atmel_mci_host *host, struct mci_data *data)
+static void atmel_setup_data(struct atmel_mci *host, struct mci_data *data)
 {
 	unsigned int nob = data->blocks;
 	unsigned int blksz = data->blocksize;
@@ -234,7 +234,7 @@ static void atmel_setup_data(struct atmel_mci_host *host, struct mci_data *data)
 	host->datasize = datasize;
 }
 
-static int atmel_read_response(struct atmel_mci_host *host, unsigned int stat)
+static int atmel_read_response(struct atmel_mci *host, unsigned int stat)
 {
 	struct mci_cmd *cmd = host->cmd;
 	int i;
@@ -263,7 +263,7 @@ static int atmel_read_response(struct atmel_mci_host *host, unsigned int stat)
 	return 0;
 }
 
-static int atmel_cmd_done(struct atmel_mci_host *host, unsigned int stat)
+static int atmel_cmd_done(struct atmel_mci *host, unsigned int stat)
 {
 	int datastat;
 	int ret;
@@ -286,7 +286,7 @@ static int atmel_cmd_done(struct atmel_mci_host *host, unsigned int stat)
 	return ret;
 }
 
-static int atmel_start_cmd(struct atmel_mci_host *host, struct mci_cmd *cmd,
+static int atmel_start_cmd(struct atmel_mci *host, struct mci_cmd *cmd,
 			   unsigned int cmdat)
 {
 	unsigned flags = 0;
@@ -335,7 +335,7 @@ static int atmel_start_cmd(struct atmel_mci_host *host, struct mci_cmd *cmd,
 static int mci_reset(struct mci_host *mci, struct device_d *mci_dev)
 {
 	int ret;
-	struct atmel_mci_host *host = to_mci_host(mci);
+	struct atmel_mci *host = to_mci_host(mci);
 	struct atmel_mci_platform_data *pd = host->hw_dev->platform_data;
 
 	ret = gpio_get_value(pd->detect_pin);
@@ -353,7 +353,7 @@ static int mci_reset(struct mci_host *mci, struct device_d *mci_dev)
 /** change host interface settings */
 static void mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
-	struct atmel_mci_host *host = to_mci_host(mci);
+	struct atmel_mci *host = to_mci_host(mci);
 
 	dev_dbg(host->hw_dev, "atmel_mci_set_ios: bus_width=%d clk=%d\n",
 		ios->bus_width, ios->clock);
@@ -388,7 +388,7 @@ static void mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 /** handle a command */
 static int mci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 {
-	struct atmel_mci_host *host = to_mci_host(mci);
+	struct atmel_mci *host = to_mci_host(mci);
 	u32 stat, cmdat = 0;
 	int ret;
 
@@ -417,7 +417,7 @@ static int mci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_dat
 #ifdef CONFIG_MCI_INFO
 static void mci_info(struct device_d *mci_dev)
 {
-	struct atmel_mci_host *host = mci_dev->priv;
+	struct atmel_mci *host = mci_dev->priv;
 	struct atmel_mci_platform_data *pd = host->hw_dev->platform_data;
 
 	printf("  Bus data width: %d bit\n", host->mci.bus_width);
@@ -442,7 +442,7 @@ static void mci_info(struct device_d *mci_dev)
 static int mci_probe(struct device_d *hw_dev)
 {
 	unsigned long clk_rate;
-	struct atmel_mci_host *host;
+	struct atmel_mci *host;
 	struct atmel_mci_platform_data *pd = hw_dev->platform_data;
 
 	if (!pd) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
