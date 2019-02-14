Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1guH0e-0000qG-S2
 for barebox@lists.infradead.org; Thu, 14 Feb 2019 13:25:21 +0000
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Thu, 14 Feb 2019 14:24:28 +0100
Message-Id: <20190214132429.7463-7-tomaz.solc@tablix.org>
In-Reply-To: <20190214132429.7463-1-tomaz.solc@tablix.org>
References: <20190214132429.7463-1-tomaz.solc@tablix.org>
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
Subject: [PATCH 6/7] mci: bcm2835: parse other device tree properties.
To: barebox@lists.infradead.org
Cc: Tomaz Solc <tomaz.solc@tablix.org>

The driver was missing a call to mci_of_parse() which fills in properties such
as "bus-width", "no-sd" into the mci_host struct.
---
 drivers/mci/mci-bcm2835.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 9438e66af..6509ea6e6 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -506,6 +506,9 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
 	host->mci.hw_dev = hw_dev;
 	host->hw_dev = hw_dev;
 	host->max_clock = clk_get_rate(clk);
+
+	mci_of_parse(&host->mci);
+
 	iores = dev_request_mem_resource(hw_dev, 0);
 	if (IS_ERR(iores)) {
 		dev_err(host->hw_dev, "Failed request mem region, aborting...\n");
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
