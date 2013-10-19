Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22d.google.com ([2a00:1450:4013:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VXVXB-0002nu-H5
 for barebox@lists.infradead.org; Sat, 19 Oct 2013 12:21:34 +0000
Received: by mail-ea0-f173.google.com with SMTP id g10so2565569eak.4
 for <barebox@lists.infradead.org>; Sat, 19 Oct 2013 05:21:11 -0700 (PDT)
Received: from mamamia.internal (a89-182-1-5.net-htp.de. [89.182.1.5])
 by mx.google.com with ESMTPSA id b42sm17147502eem.9.2013.10.19.05.21.10
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Sat, 19 Oct 2013 05:21:11 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Sat, 19 Oct 2013 14:20:54 +0200
Message-Id: <1382185254-29183-8-git-send-email-a.heider@gmail.com>
In-Reply-To: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
References: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH 09/10] mci: bcm2835: use the registered device clkdev
To: barebox@lists.infradead.org

Switch from local mailbox code to using the newly created clock device.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 drivers/mci/mci-bcm2835.c | 93 ++++++++++-------------------------------------
 drivers/mci/mci-bcm2835.h | 48 ------------------------
 2 files changed, 19 insertions(+), 122 deletions(-)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 2ffdeec..7d8997c 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -28,13 +28,14 @@
  * Author: Wilhelm Lundgren <wilhelm.lundgren@cybercom.com>
  */
 
-#include <asm/mmu.h>
 #include <common.h>
 #include <init.h>
 #include <mci.h>
 #include <io.h>
 #include <malloc.h>
 #include <clock.h>
+#include <linux/clk.h>
+
 #include "mci-bcm2835.h"
 #include "sdhci.h"
 
@@ -469,53 +470,6 @@ int bcm2835_mci_reset(struct mci_host *mci, struct device_d *mci_dev)
 	return bcm2835_mci_wait_command_done(host);
 }
 
-static u32 bcm2835_mci_get_emmc_clock(struct msg_get_clock_rate *clk_data)
-{
-	u32 val;
-	struct bcm2835_mbox_regs __iomem *regs =
-			(struct bcm2835_mbox_regs *) BCM2835_MBOX_PHYSADDR;
-
-	/*Read out old msg*/
-	while (true) {
-		val = readl(&regs->status);
-		if (val & BCM2835_MBOX_STATUS_RD_EMPTY)
-			break;
-		val = readl(&regs->read);
-	}
-
-	/*Check for ok to write*/
-	while (true) {
-		val = readl(&regs->status);
-		if (!(val & BCM2835_MBOX_STATUS_WR_FULL))
-			break;
-	}
-	val = BCM2835_MBOX_PROP_CHAN + ((u32) &clk_data->hdr);
-	dma_flush_range((u32)clk_data, (u32)clk_data + sizeof(*clk_data));
-	writel(val, &regs->write);
-
-	while (true) {
-		/* Wait for the response */
-		while (true) {
-			val = readl(&regs->status);
-			if (!(val & BCM2835_MBOX_STATUS_RD_EMPTY))
-				break;
-		}
-
-		/* Read the response */
-		val = readl(&regs->read);
-		if ((val & 0x0F) == BCM2835_MBOX_PROP_CHAN)
-			break;
-	}
-
-	dma_inv_range((u32)clk_data, (u32)clk_data + sizeof(*clk_data));
-
-	if ((val & ~0x0F) == ((u32) &clk_data->hdr))
-		if (clk_data->get_clock_rate.tag_hdr.val_len
-				& BCM2835_MBOX_TAG_VAL_LEN_RESPONSE)
-			return 1;
-	return 0;
-}
-
 static int bcm2835_mci_detect(struct device_d *dev)
 {
 	struct bcm2835_mci_host *host = dev->priv;
@@ -526,7 +480,22 @@ static int bcm2835_mci_detect(struct device_d *dev)
 static int bcm2835_mci_probe(struct device_d *hw_dev)
 {
 	struct bcm2835_mci_host *host;
-	struct msg_get_clock_rate *clk_data;
+	static struct clk *clk;
+	int ret;
+
+	clk = clk_get(hw_dev, NULL);
+	if (IS_ERR(clk)) {
+		ret = PTR_ERR(clk);
+		dev_err(hw_dev, "clock not found: %d\n", ret);
+		return ret;
+	}
+
+	ret = clk_enable(clk);
+	if (ret) {
+		dev_err(hw_dev, "clock failed to enable: %d\n", ret);
+		clk_put(clk);
+		return ret;
+	}
 
 	host = xzalloc(sizeof(*host));
 	host->mci.send_cmd = bcm2835_mci_request;
@@ -534,31 +503,7 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
 	host->mci.init = bcm2835_mci_reset;
 	host->mci.hw_dev = hw_dev;
 	host->hw_dev = hw_dev;
-
-	/* Allocate a buffer thats 16 bytes aligned in memory
-	 * Of the 32 bits address passed into the mbox 28 bits
-	 * are the address of the buffer, lower 4 bits is channel
-	 */
-	clk_data = memalign(16, sizeof(struct msg_get_clock_rate));
-	memset(clk_data, 0, sizeof(struct msg_get_clock_rate));
-	clk_data->hdr.buf_size = sizeof(struct msg_get_clock_rate);
-	clk_data->get_clock_rate.tag_hdr.tag = BCM2835_MBOX_TAG_GET_CLOCK_RATE;
-	clk_data->get_clock_rate.tag_hdr.val_buf_size =
-			sizeof(clk_data->get_clock_rate.body);
-	clk_data->get_clock_rate.tag_hdr.val_len =
-			sizeof(clk_data->get_clock_rate.body.req);
-	clk_data->get_clock_rate.body.req.clock_id = BCM2835_MBOX_CLOCK_ID_EMMC;
-
-	if (!bcm2835_mci_get_emmc_clock(clk_data)) {
-		dev_warn(host->hw_dev,
-				"Failed getting emmc clock, lets go anyway with 50MHz\n");
-		host->max_clock = 50000000;
-	} else {
-		host->max_clock = clk_data->get_clock_rate.body.resp.rate_hz;
-		dev_info(host->hw_dev, "Got emmc clock at %d Hz\n",
-				host->max_clock);
-	}
-
+	host->max_clock = clk_get_rate(clk);
 	host->regs = dev_request_mem_region(hw_dev, 0);
 	if (host->regs == NULL) {
 		dev_err(host->hw_dev, "Failed request mem region, aborting...\n");
diff --git a/drivers/mci/mci-bcm2835.h b/drivers/mci/mci-bcm2835.h
index 4158a18..2c95e03 100644
--- a/drivers/mci/mci-bcm2835.h
+++ b/drivers/mci/mci-bcm2835.h
@@ -23,51 +23,3 @@
 
 #define MAX_CLK_DIVIDER_V3	2046
 #define MAX_CLK_DIVIDER_V2	256
-
-/*this is only for mbox comms*/
-#define BCM2835_MBOX_PHYSADDR				0x2000b880
-#define BCM2835_MBOX_TAG_GET_CLOCK_RATE		0x00030002
-#define BCM2835_MBOX_CLOCK_ID_EMMC			1
-#define BCM2835_MBOX_STATUS_WR_FULL			0x80000000
-#define BCM2835_MBOX_STATUS_RD_EMPTY		0x40000000
-#define BCM2835_MBOX_PROP_CHAN				8
-#define BCM2835_MBOX_TAG_VAL_LEN_RESPONSE	0x80000000
-
-struct bcm2835_mbox_regs {
-	u32 read;
-	u32 rsvd0[5];
-	u32 status;
-	u32 config;
-	u32 write;
-};
-
-
-struct bcm2835_mbox_hdr {
-	u32 buf_size;
-	u32 code;
-};
-
-struct bcm2835_mbox_tag_hdr {
-	u32 tag;
-	u32 val_buf_size;
-	u32 val_len;
-};
-
-struct bcm2835_mbox_tag_get_clock_rate {
-	struct bcm2835_mbox_tag_hdr tag_hdr;
-	union {
-		struct {
-			u32 clock_id;
-		} req;
-		struct {
-			u32 clock_id;
-			u32 rate_hz;
-		} resp;
-	} body;
-};
-
-struct msg_get_clock_rate {
-	struct bcm2835_mbox_hdr hdr;
-	struct bcm2835_mbox_tag_get_clock_rate get_clock_rate;
-	u32 end_tag;
-};
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
