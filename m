Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22e.google.com ([2a00:1450:4013:c00::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VW8a8-0007bg-4i
 for barebox@lists.infradead.org; Tue, 15 Oct 2013 17:38:57 +0000
Received: by mail-ee0-f46.google.com with SMTP id c13so4110945eek.5
 for <barebox@lists.infradead.org>; Tue, 15 Oct 2013 10:38:34 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Tue, 15 Oct 2013 19:38:23 +0200
Message-Id: <1381858703-27993-2-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH] ARM: rpi: fix reading of the EMMC clock for CONFIG_MMU
To: barebox@lists.infradead.org

Add explicit flushing to prevent the 50MHz fallback.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 drivers/mci/mci-bcm2835.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index a0c364d..2ffdeec 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -28,6 +28,7 @@
  * Author: Wilhelm Lundgren <wilhelm.lundgren@cybercom.com>
  */
 
+#include <asm/mmu.h>
 #include <common.h>
 #include <init.h>
 #include <mci.h>
@@ -471,7 +472,7 @@ int bcm2835_mci_reset(struct mci_host *mci, struct device_d *mci_dev)
 static u32 bcm2835_mci_get_emmc_clock(struct msg_get_clock_rate *clk_data)
 {
 	u32 val;
-	struct bcm2835_mbox_regs *regs =
+	struct bcm2835_mbox_regs __iomem *regs =
 			(struct bcm2835_mbox_regs *) BCM2835_MBOX_PHYSADDR;
 
 	/*Read out old msg*/
@@ -489,6 +490,7 @@ static u32 bcm2835_mci_get_emmc_clock(struct msg_get_clock_rate *clk_data)
 			break;
 	}
 	val = BCM2835_MBOX_PROP_CHAN + ((u32) &clk_data->hdr);
+	dma_flush_range((u32)clk_data, (u32)clk_data + sizeof(*clk_data));
 	writel(val, &regs->write);
 
 	while (true) {
@@ -504,6 +506,9 @@ static u32 bcm2835_mci_get_emmc_clock(struct msg_get_clock_rate *clk_data)
 		if ((val & 0x0F) == BCM2835_MBOX_PROP_CHAN)
 			break;
 	}
+
+	dma_inv_range((u32)clk_data, (u32)clk_data + sizeof(*clk_data));
+
 	if ((val & ~0x0F) == ((u32) &clk_data->hdr))
 		if (clk_data->get_clock_rate.tag_hdr.val_len
 				& BCM2835_MBOX_TAG_VAL_LEN_RESPONSE)
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
