Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjM3B-0007zd-Li
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 10:34:31 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Tue, 15 Jan 2019 11:34:22 +0100
Message-Id: <20190115103423.5233-2-rhi@pengutronix.de>
In-Reply-To: <20190115103423.5233-1-rhi@pengutronix.de>
References: <20190115103423.5233-1-rhi@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1 2/3] mci: bcm2835: make locally used functions static
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>

The mci-bcm2835 driver registers itself as an MCI driver on probing, and
is thereby used through the MCI interface, so these functions are not
meant to act as a public interface and only used internally in this
compilation unit.

This fixes the following build warnings:

    .../drivers/mci/mci-bcm2835.c:56:6: warning: no previous prototype for 'bcm2835_mci_write' [-Wmissing-prototypes]
     void bcm2835_mci_write(struct bcm2835_mci_host *host, u32 reg, u32 val)
          ^~~~~~~~~~~~~~~~~
    .../drivers/mci/mci-bcm2835.c:74:5: warning: no previous prototype for 'bcm2835_mci_read' [-Wmissing-prototypes]
     u32 bcm2835_mci_read(struct bcm2835_mci_host *host, u32 reg)
         ^~~~~~~~~~~~~~~~
    .../drivers/mci/mci-bcm2835.c:83:6: warning: no previous prototype for 'bcm2835_mci_write_data' [-Wmissing-prototypes]
     void bcm2835_mci_write_data(struct bcm2835_mci_host *host, u32 *p)
          ^~~~~~~~~~~~~~~~~~~~~~
    .../drivers/mci/mci-bcm2835.c:89:6: warning: no previous prototype for 'bcm2835_mci_read_data' [-Wmissing-prototypes]
     void bcm2835_mci_read_data(struct bcm2835_mci_host *host, u32 *p)
          ^~~~~~~~~~~~~~~~~~~~~
      CC      common/date.o
    .../drivers/mci/mci-bcm2835.c:419:5: warning: no previous prototype for 'bcm2835_mci_reset' [-Wmissing-prototypes]
     int bcm2835_mci_reset(struct mci_host *mci, struct device_d *mci_dev)

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 drivers/mci/mci-bcm2835.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index daf771934a..9438e66af0 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -53,7 +53,7 @@ struct bcm2835_mci_host {
 	uint64_t last_write;
 };
 
-void bcm2835_mci_write(struct bcm2835_mci_host *host, u32 reg, u32 val)
+static void bcm2835_mci_write(struct bcm2835_mci_host *host, u32 reg, u32 val)
 {
 	/*
 	 * The Arasan has a bugette whereby it may lose the content of
@@ -71,7 +71,7 @@ void bcm2835_mci_write(struct bcm2835_mci_host *host, u32 reg, u32 val)
 	writel(val, host->regs + reg);
 }
 
-u32 bcm2835_mci_read(struct bcm2835_mci_host *host, u32 reg)
+static u32 bcm2835_mci_read(struct bcm2835_mci_host *host, u32 reg)
 {
 	return readl(host->regs + reg);
 }
@@ -80,13 +80,13 @@ u32 bcm2835_mci_read(struct bcm2835_mci_host *host, u32 reg)
  * register is not affected by the twoticks_delay bug
  * and we can thus get better speed here
  */
-void bcm2835_mci_write_data(struct bcm2835_mci_host *host, u32 *p)
+static void bcm2835_mci_write_data(struct bcm2835_mci_host *host, u32 *p)
 {
 	writel(*p, host->regs + SDHCI_BUFFER);
 }
 
 /* Make a read data functions as well just to keep structure */
-void bcm2835_mci_read_data(struct bcm2835_mci_host *host, u32 *p)
+static void bcm2835_mci_read_data(struct bcm2835_mci_host *host, u32 *p)
 {
 	*p = readl(host->regs + SDHCI_BUFFER);
 }
@@ -416,7 +416,7 @@ static void bcm2835_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 			host->bus_width, host->clock);
 }
 
-int bcm2835_mci_reset(struct mci_host *mci, struct device_d *mci_dev)
+static int bcm2835_mci_reset(struct mci_host *mci, struct device_d *mci_dev)
 {
 	struct bcm2835_mci_host *host;
 	u32 ret = 0;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
