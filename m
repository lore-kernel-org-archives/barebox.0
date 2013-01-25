Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyl3m-0007oe-8S
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 15:19:24 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id CFBDCDC1CFA
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 16:29:05 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 25 Jan 2013 16:17:38 +0100
Message-Id: <1359127067-30079-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130125151448.GD26329@game.jcrosoft.org>
 <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 05/14] atmel_mci: detect IP version
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/atmel_mci.c |   32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 21c314c..b9b0668 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -37,6 +37,7 @@ struct atmel_mci {
 	struct mci_cmd		*cmd;
 	struct mci_data		*data;
 	unsigned		slot_b;
+	int			version;
 };
 
 #define to_mci_host(mci)	container_of(mci, struct atmel_mci, mci)
@@ -426,6 +427,34 @@ static void atmci_info(struct device_d *mci_dev)
 
 }
 #endif /* CONFIG_MCI_INFO */
+/*
+ * HSMCI (High Speed MCI) module is not fully compatible with MCI module.
+ * HSMCI provides DMA support and a new config register but no more supports
+ * PDC.
+ */
+static void atmci_get_cap(struct atmel_mci *host)
+{
+	unsigned int version;
+
+	version = atmci_readl(host, ATMCI_VERSION) & 0x00000fff;
+	host->version = version;
+
+	dev_info(host->hw_dev, "version: 0x%x\n", version);
+
+	switch (version & 0xf00) {
+	case 0x500:
+	case 0x400:
+	case 0x300:
+	case 0x200:
+	case 0x100:
+	case 0x0:
+		break;
+	default:
+		dev_warn(host->hw_dev,
+				"Unmanaged mci version, set minimum capabilities\n");
+		break;
+	}
+}
 
 static int atmci_probe(struct device_d *hw_dev)
 {
@@ -438,6 +467,7 @@ static int atmci_probe(struct device_d *hw_dev)
 		return -EINVAL;
 	}
 
+
 	host = xzalloc(sizeof(*host));
 	host->mci.send_cmd = atmci_request;
 	host->mci.set_ios = atmci_set_ios;
@@ -467,6 +497,8 @@ static int atmci_probe(struct device_d *hw_dev)
 	host->mci.f_min = clk_rate >> 9;
 	host->mci.f_max = clk_rate >> 1;
 
+	atmci_get_cap(host);
+
 	mci_register(&host->mci);
 
 	return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
