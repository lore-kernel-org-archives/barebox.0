Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ptze2-00085y-By
	for barebox@lists.infradead.org; Mon, 28 Feb 2011 09:44:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Feb 2011 10:43:52 +0100
Message-Id: <1298886235-1769-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1298886235-1769-1-git-send-email-s.hauer@pengutronix.de>
References: <1298886235-1769-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] mci mxs: rename mci_pdata to host
To: barebox@lists.infradead.org

struct mci_host is named host in the rest of the driver, so
name it like this consistently.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mxs.c |   14 ++++++--------
 1 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index af69357..bc177f5 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -603,10 +603,9 @@ static void mxs_mci_reset(struct device_d *hw_dev)
  * @param mci_dev MCI device instance
  * @return 0 on success, negative value else
  */
-static int mxs_mci_initialize(struct mci_host *mci_pdata, struct device_d *mci_dev)
+static int mxs_mci_initialize(struct mci_host *host, struct device_d *mci_dev)
 {
-	struct device_d *hw_dev = mci_pdata->hw_dev;
-	struct mci_host *host = GET_MCI_PDATA(mci_dev);
+	struct device_d *hw_dev = host->hw_dev;
 	struct mxs_mci_host *host_data = (struct mxs_mci_host*)GET_HOST_DATA(hw_dev);
 
 	/* enable the clock to this unit to be able to reset it */
@@ -635,10 +634,10 @@ static int mxs_mci_initialize(struct mci_host *mci_pdata, struct device_d *mci_d
  * @param data The data to handle in the command (can be NULL)
  * @return 0 on success, negative value else
  */
-static int mxs_mci_request(struct mci_host *mci_pdata, struct mci_cmd *cmd,
+static int mxs_mci_request(struct mci_host *host, struct mci_cmd *cmd,
 			struct mci_data *data)
 {
-	struct device_d *hw_dev = mci_pdata->hw_dev;
+	struct device_d *hw_dev = host->hw_dev;
 	int rc;
 
 	if ((cmd->resp_type == 0) || (data == NULL))
@@ -659,12 +658,11 @@ static int mxs_mci_request(struct mci_host *mci_pdata, struct mci_cmd *cmd,
  *
  * Drivers currently realized values are stored in MCI's platformdata
  */
-static void mxs_mci_set_ios(struct mci_host *mci_pdata, struct device_d *mci_dev,
+static void mxs_mci_set_ios(struct mci_host *host, struct device_d *mci_dev,
 			unsigned bus_width, unsigned clock)
 {
-	struct device_d *hw_dev = mci_pdata->hw_dev;
+	struct device_d *hw_dev = host->hw_dev;
 	struct mxs_mci_host *host_data = (struct mxs_mci_host*)GET_HOST_DATA(hw_dev);
-	struct mci_host *host = GET_MCI_PDATA(mci_dev);
 
 	switch (bus_width) {
 	case 8:
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
