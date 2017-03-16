Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1coWxn-0005dK-OQ
 for barebox@lists.infradead.org; Thu, 16 Mar 2017 15:05:20 +0000
Received: by mail-pg0-x242.google.com with SMTP id y17so6405691pgh.0
 for <barebox@lists.infradead.org>; Thu, 16 Mar 2017 08:04:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 16 Mar 2017 08:04:41 -0700
Message-Id: <20170316150448.11773-5-andrew.smirnov@gmail.com>
In-Reply-To: <20170316150448.11773-1-andrew.smirnov@gmail.com>
References: <20170316150448.11773-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 04/11] mci: Allow parsing for explicit DT node
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Convert mci_of_parse into mci_of_parse_node, a function that takes
explicit deivce tree node pointer to be used for SD/MMC related
properties extraction. Implement original mci_of_parse as a wrapper
around the call to new function.

This is useful for controllers who specify parameter like bus witdth and
GPIOs as a part of main controller's child nodes (e.g. AT91 SoCs).

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/mci-core.c | 13 ++++++++-----
 include/mci.h          |  1 +
 2 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 055a5e2..928277a 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1843,20 +1843,18 @@ err_free:
 	return ret;
 }
 
-void mci_of_parse(struct mci_host *host)
+void mci_of_parse_node(struct mci_host *host,
+		       struct device_node *np)
 {
-	struct device_node *np;
 	u32 bus_width;
 	u32 dsr_val;
 
 	if (!IS_ENABLED(CONFIG_OFDEVICE))
 		return;
 
-	if (!host->hw_dev || !host->hw_dev->device_node)
+	if (!host->hw_dev || !np)
 		return;
 
-	np = host->hw_dev->device_node;
-
 	/* "bus-width" is translated to MMC_CAP_*_BIT_DATA flags */
 	if (of_property_read_u32(np, "bus-width", &bus_width) < 0) {
 		/* If bus-width is missing we get the driver's default, which
@@ -1897,6 +1895,11 @@ void mci_of_parse(struct mci_host *host)
 	host->non_removable = of_property_read_bool(np, "non-removable");
 }
 
+void mci_of_parse(struct mci_host *host)
+{
+	return mci_of_parse_node(host, host->hw_dev->device_node);
+}
+
 struct mci *mci_get_device_by_name(const char *name)
 {
 	struct mci *mci;
diff --git a/include/mci.h b/include/mci.h
index cc4712c..781e6e0 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -480,6 +480,7 @@ struct mci {
 
 int mci_register(struct mci_host*);
 void mci_of_parse(struct mci_host *host);
+void mci_of_parse_node(struct mci_host *host, struct device_node *np);
 int mci_detect_card(struct mci_host *);
 int mci_send_ext_csd(struct mci *mci, char *ext_csd);
 int mci_switch(struct mci *mci, unsigned set, unsigned index,
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
