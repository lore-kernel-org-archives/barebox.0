Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jXQ-00025o-Ka
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:09:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:09:42 +0200
Message-Id: <1301922585-8144-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301922585-8144-1-git-send-email-s.hauer@pengutronix.de>
References: <1301922585-8144-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] mmc: check correctness of the voltage mask in ocr
To: barebox@lists.infradead.org

Most cards do not answer if some reserved bits
in the ocr are set. However, some controllers
can set bit 7 (reserved for low voltages), but
how to manage low voltages SD card is not yet
specified.

based on the original U-Boot patch from
Stefano Babic <sbabic@denx.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |   12 +++++++++++-
 1 files changed, 11 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 0137152..f3d975d 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -215,6 +215,16 @@ static int sd_send_op_cond(struct device_d *mci_dev)
 	struct mci_cmd cmd;
 	int timeout = 1000;
 	int err;
+	unsigned voltages;
+
+	/*
+	 * Most cards do not answer if some reserved bits
+	 * in the ocr are set. However, Some controller
+	 * can set bit 7 (reserved for low voltages), but
+	 * how to manage low voltages SD card is not yet
+	 * specified.
+	 */
+	voltages = host->voltages & 0xff8000;
 
 	do {
 		mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, 0, MMC_RSP_R1);
@@ -225,7 +235,7 @@ static int sd_send_op_cond(struct device_d *mci_dev)
 		}
 
 		mci_setup_cmd(&cmd, SD_CMD_APP_SEND_OP_COND,
-			host->voltages | (mci->version == SD_VERSION_2 ? OCR_HCS : 0),
+			voltages | (mci->version == SD_VERSION_2 ? OCR_HCS : 0),
 			MMC_RSP_R3);
 		err = mci_send_cmd(mci_dev, &cmd, NULL);
 		if (err) {
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
