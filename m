Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QZ8UG-0004Ig-UX
	for barebox@lists.infradead.org; Tue, 21 Jun 2011 21:27:57 +0000
Received: by fxm14 with SMTP id 14so317924fxm.36
	for <barebox@lists.infradead.org>; Tue, 21 Jun 2011 14:27:52 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Tue, 21 Jun 2011 23:27:26 +0200
Message-Id: <1308691646-5724-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH] atmel-mci: fix wrong pointer cast
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/mci/atmel_mci.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 980aa24..49a7851 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -456,7 +456,7 @@ static int mci_probe(struct device_d *hw_dev)
 	else if (pd->bus_width == 8)
 		host->mci.host_caps |= MMC_MODE_8BIT;
 
-	host->base = (struct atmel_mci_regs *)hw_dev->map_base;
+	host->base = (void __iomem *)hw_dev->map_base;
 	host->hw_dev = hw_dev;
 	hw_dev->priv = host;
 	host->clk = clk_get(hw_dev, "mci_clk");
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
