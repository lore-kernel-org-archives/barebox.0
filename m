Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiJXk-0001BO-IU
 for barebox@lists.infradead.org; Fri, 31 May 2013 07:14:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 May 2013 09:14:02 +0200
Message-Id: <1369984443-8790-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369984443-8790-1-git-send-email-s.hauer@pengutronix.de>
References: <1369984443-8790-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] mci: Add devicetree helper function
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

This adds helper code to parse the bus-width and max-frequency
property from devicetree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 38 ++++++++++++++++++++++++++++++++++++++
 include/mci.h          |  1 +
 2 files changed, 39 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 54660dc..5209d1c 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1649,3 +1649,41 @@ err_free:
 
 	return ret;
 }
+
+void mci_of_parse(struct mci_host *host)
+{
+	struct device_node *np;
+	u32 bus_width;
+
+	if (!IS_ENABLED(CONFIG_OFDEVICE))
+		return;
+
+	if (!host->hw_dev || !host->hw_dev->device_node)
+		return;
+
+	np = host->hw_dev->device_node;
+
+	/* "bus-width" is translated to MMC_CAP_*_BIT_DATA flags */
+	if (of_property_read_u32(np, "bus-width", &bus_width) < 0) {
+		dev_dbg(host->hw_dev,
+			"\"bus-width\" property is missing, assuming 1 bit.\n");
+		bus_width = 1;
+	}
+
+	switch (bus_width) {
+	case 8:
+		host->host_caps |= MMC_MODE_8BIT;
+		/* Hosts capable of 8-bit transfers can also do 4 bits */
+	case 4:
+		host->host_caps |= MMC_MODE_4BIT;
+		break;
+	case 1:
+		break;
+	default:
+		dev_err(host->hw_dev,
+			"Invalid \"bus-width\" value %ud!\n", bus_width);
+	}
+
+	/* f_max is obtained from the optional "max-frequency" property */
+	of_property_read_u32(np, "max-frequency", &host->f_max);
+}
diff --git a/include/mci.h b/include/mci.h
index 2b87691..70df641 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -362,5 +362,6 @@ struct mci {
 };
 
 int mci_register(struct mci_host*);
+void mci_of_parse(struct mci_host *host);
 
 #endif /* _MCI_H_ */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
