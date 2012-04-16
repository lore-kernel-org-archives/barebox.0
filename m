Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJrtq-0001rm-Re
 for barebox@lists.infradead.org; Mon, 16 Apr 2012 19:47:48 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 16 Apr 2012 21:47:14 +0200
Message-Id: <1334605638-23095-3-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1334605638-23095-1-git-send-email-robert.jarzmik@free.fr>
References: <1334605638-23095-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 2/6] mci: pxamci change clocks handling
To: barebox@lists.infradead.org

Fix clock handling accordingly to PXA manual :
 - enable the MMC controller clock once and for all
 - only disable the MMC bus clock when changing the MMCLK by
 adjusting the clock ratio, else let the controller and SD
 card shut down the clock as the see fit.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mci/pxamci.c |    7 +++----
 1 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index ee2f08c..2d49187 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -190,7 +190,6 @@ static void pxamci_start_cmd(struct pxamci_host *host, struct mci_cmd *cmd,
 	mmc_writel(cmd->cmdidx, MMC_CMD);
 	mmc_writel(cmd->cmdarg >> 16, MMC_ARGH);
 	mmc_writel(cmd->cmdarg & 0xffff, MMC_ARGL);
-	mmc_writel(host->clkrt, MMC_CLKRT);
 	pxamci_start_clock(host);
 	mmc_writel(cmdat, MMC_CMDAT);
 }
@@ -260,8 +259,6 @@ static int pxamci_request(struct mci_host *mci, struct mci_cmd *cmd,
 	unsigned int cmdat;
 	int ret;
 
-	pxamci_stop_clock(host);
-
 	cmdat = host->cmdat;
 	host->cmdat &= ~CMDAT_INIT;
 
@@ -311,8 +308,9 @@ static void pxamci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 
 	host->cmdat |= CMDAT_INIT;
 
-	clk_enable();
 	pxamci_set_power(host, 1);
+	pxamci_stop_clock(host);
+	mmc_writel(host->clkrt, MMC_CLKRT);
 }
 
 static int pxamci_init(struct mci_host *mci, struct device_d *dev)
@@ -329,6 +327,7 @@ static int pxamci_probe(struct device_d *dev)
 	struct pxamci_host *host;
 	int gpio_power = -1;
 
+	clk_enable();
 	host = xzalloc(sizeof(*host));
 	host->base = dev_request_mem_region(dev, 0);
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
