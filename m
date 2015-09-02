Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZX1aF-00054n-3E
 for barebox@lists.infradead.org; Wed, 02 Sep 2015 06:31:48 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4D7F3A003B7
 for <barebox@lists.infradead.org>; Wed,  2 Sep 2015 08:33:22 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Wed, 2 Sep 2015 08:28:52 +0200
Message-Id: <1441175333-26759-3-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1441175333-26759-1-git-send-email-d.schultz@phytec.de>
References: <1441175333-26759-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v3 3/4] drivers: mci: Add mci_get_device_by_name function
To: barebox@lists.infradead.org

Get a 'struct mci' by search after the device name.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---

Changes:
	v3:
	New with patch v3

 drivers/mci/mci-core.c | 16 ++++++++++++++++
 include/mci.h          |  8 ++++++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index c22f932..d6865d1 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -53,6 +53,8 @@
 		__res & __mask;						\
 	})
 
+LIST_HEAD(mci_list);
+
 /**
  * @file
  * @brief Memory Card framework
@@ -1753,6 +1755,8 @@ int mci_register(struct mci_host *host)
 		mci->dev.id = DEVICE_ID_DYNAMIC;
 	}
 
+	list_add_tail(&mci->list, &mci_list);
+
 	mci->dev.platform_data = host;
 	mci->dev.parent = host->hw_dev;
 	mci->host = host;
@@ -1844,3 +1848,15 @@ void mci_of_parse(struct mci_host *host)
 
 	host->non_removable = of_property_read_bool(np, "non-removable");
 }
+
+struct mci *mci_get_device_by_name(const char *name)
+{
+	struct mci *dev;
+
+	for_each_mci_device(dev) {
+		if (!strcmp(dev->cdevname, name))
+			return dev;
+	}
+
+	return NULL;
+}
diff --git a/include/mci.h b/include/mci.h
index 9e4d18b..3c7b407 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -466,6 +466,8 @@ struct mci {
 
 	struct mci_part *part_curr;
 	u8 ext_csd_part_config;
+
+	struct list_head list;     /* The list of all mci devices */
 };
 
 int mci_register(struct mci_host*);
@@ -483,4 +485,10 @@ static inline int mmc_host_is_spi(struct mci_host *host)
 		return 0;
 }
 
+/* Iterate over all mci devices
+ */
+#define for_each_mci_device(dev) list_for_each_entry(dev, &mci_list, list)
+
+struct mci *mci_get_device_by_name(const char *name);
+
 #endif /* _MCI_H_ */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
