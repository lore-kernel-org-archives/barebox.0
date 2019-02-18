Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvh9y-0002VL-Jf
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 11:32:35 +0000
Received: from 77-111-10-47.ipv4.tusmobil.si ([77.111.10.47]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1gvh9p-00081l-Ui
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 12:32:21 +0100
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Mon, 18 Feb 2019 12:32:18 +0100
Message-Id: <20190218113220.18649-7-tomaz.solc@tablix.org>
In-Reply-To: <20190218113220.18649-1-tomaz.solc@tablix.org>
References: <20190218113220.18649-1-tomaz.solc@tablix.org>
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
Subject: [PATCH v2 6/8] mci: bcm2835: parse other device tree properties.
To: barebox@lists.infradead.org

The driver was missing a call to mci_of_parse() which fills in properties such
as "bus-width", "no-sd" into the mci_host struct.
---
 drivers/mci/mci-bcm2835.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index e7dbb4f1d..2ed125167 100644
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
