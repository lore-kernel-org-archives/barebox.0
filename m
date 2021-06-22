Delivery-date: Tue, 22 Jun 2021 08:48:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvaDQ-00055g-5n
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 08:48:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvaDO-00073k-Vt
	for lore@pengutronix.de; Tue, 22 Jun 2021 08:48:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rweh8kz7Hu33TjiayeDgoQSpIi4qEJAFBK/k7z0byVs=; b=MZjFY7rGmDEc6i
	spP9Fuv4FcgiYpg3iwfhzsMCkTGV+2MGO4P0PaXTmUunfkYXHy3MuC6JtLQLbz9Qpk9cHXzJmA8fp
	zaOMdB/ShtdAqTBfJ+wRT+ZTMj2hOLeJknXwJbzzw66QAUITsx2cYitDH2EFCOkdCUp8iPA24WzWp
	xR73tp4tjxui0FlAVb4KfTucj97ps00BqPtG8jaVvJlwhlwhLO5DzYYH1R0D3Zw8/v3JohstQSmV9
	1lTSxhwPK7EoMMuzl6xOTJM2N+Y2gv+KixzLldYBwGa+DvY+qVNNcOtoPVoeTOr7uNkz1aHpdZzVr
	4+ILarlD6ecsvRGYDVEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvaC0-005saK-Jc; Tue, 22 Jun 2021 06:47:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvaBr-005sXX-Fk
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 06:47:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvaBn-0006ob-Ha; Tue, 22 Jun 2021 08:47:15 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvaBn-0004NR-5a; Tue, 22 Jun 2021 08:47:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 22 Jun 2021 08:47:05 +0200
Message-Id: <20210622064711.14058-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_234719_570898_8F7D3F05 
X-CRM114-Status: GOOD (  12.92  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] usb: ehci: Handle clocks and phys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The generic ehci binding also describes clocks and a phy. Add support
for these properties to the driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 8c4da9fd12..4dd4d1dddb 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -32,6 +32,8 @@
 #include <usb/ehci.h>
 #include <linux/err.h>
 #include <linux/sizes.h>
+#include <linux/clk.h>
+#include <linux/phy/phy.h>
 
 #include "ehci.h"
 
@@ -1413,6 +1415,9 @@ static int ehci_probe(struct device_d *dev)
 	struct ehci_platform_data *pdata = dev->platform_data;
 	struct device_node *dn = dev->device_node;
 	struct ehci_host *ehci;
+	struct clk_bulk_data *clks;
+	int num_clocks, ret;
+	struct phy *usb2_generic_phy;
 
 	if (pdata)
 		data.flags = pdata->flags;
@@ -1440,6 +1445,27 @@ static int ehci_probe(struct device_d *dev)
 	else
 		data.hcor = NULL;
 
+	usb2_generic_phy = phy_optional_get(dev, "usb");
+	if (IS_ERR(usb2_generic_phy))
+		return PTR_ERR(usb2_generic_phy);
+
+	ret = phy_init(usb2_generic_phy);
+	if (ret)
+		return ret;
+
+	ret = phy_power_on(usb2_generic_phy);
+	if (ret)
+		return ret;
+
+	ret = clk_bulk_get_all(dev, &clks);
+	if (ret < 0)
+		return ret;
+
+	num_clocks = ret;
+	ret = clk_bulk_enable(num_clocks, clks);
+	if (ret)
+		return ret;
+
 	ehci = ehci_register(dev, &data);
 	if (IS_ERR(ehci))
 		return PTR_ERR(ehci);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

