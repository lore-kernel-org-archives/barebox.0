Delivery-date: Mon, 16 Jan 2023 14:42:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPkk-00Dbjm-2C
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 14:42:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPkh-0007dD-KA
	for lore@pengutronix.de; Mon, 16 Jan 2023 14:42:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m0IUn/ZfwzPih9+QHA4cTG8T8J+/Wki06xE8oEGORF4=; b=seP/nHgq97EVnQNwI/61cz/pPi
	WHxllWHww4a5jqRbTBEGs/g4FoeKO/SfTG+QoeBsjY8kw8fW7glCLJJyhyzlFtrlif/263II7ZSvR
	Jyo5Mo1SgvYPy6X+8EWNbFn9hnAcrZ5ZOI7XxUMdev3cRD9y7jEo7WLUbQ0MX9ollkq3i5n1NVKWm
	GXO/yF8eNDdykbrmNRZcPSFkxgsXmXHSXyywn2Af3pOiPPAM5mS9V/7i56sJjAMJasti8obXYQWnV
	xOtqmdTgT6ntqyrJYz5ULgJC9J+4joKLH46xdyzsT1B/r+Nt+NHwmhjtfTdEMzejTeAJJk7Ed1wP0
	IOCpc0sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPjN-00AW3L-4e; Mon, 16 Jan 2023 13:40:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPfG-00AUIC-N5
	for barebox@lists.infradead.org; Mon, 16 Jan 2023 13:36:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPfF-0006Wi-95; Mon, 16 Jan 2023 14:36:41 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPfE-006SIM-Kh; Mon, 16 Jan 2023 14:36:40 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPfD-008OMt-Mv; Mon, 16 Jan 2023 14:36:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Jan 2023 14:36:39 +0100
Message-Id: <20230116133639.1999170-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230116133639.1999170-1-a.fatoum@pengutronix.de>
References: <20230116133639.1999170-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_053642_817055_8E443542 
X-CRM114-Status: GOOD (  15.11  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] i2c: implement detect callback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_device_ensure_probed will call device::detect on the I2C adapter,
so it can detect its children node, in case they were not probed before.
This can happen if the nodes were added dynamically via device tree
fixup or overlay. Implement a detect callback to support this.

To keep existing behavior, we call this detect callback unconditionally
while newly registering the adapter.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/i2c.c | 26 +++++++++++++++++++++-----
 1 file changed, 21 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 3b5e68618dff..7e1cea49f3b6 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -420,10 +420,6 @@ static void of_i2c_register_devices(struct i2c_adapter *adap)
 {
 	struct device_node *n;
 
-	/* Only register child devices if the adapter has a node pointer set */
-	if (!IS_ENABLED(CONFIG_OFDEVICE) || !adap->dev.of_node)
-		return;
-
 	for_each_available_child_of_node(adap->dev.of_node, n) {
 		struct i2c_board_info info = {};
 		struct i2c_client *result;
@@ -475,6 +471,20 @@ int of_i2c_register_devices_by_node(struct device_node *node)
 	return 0;
 }
 
+static int i2c_bus_detect(struct device *dev)
+{
+	struct i2c_adapter *adap;
+
+	list_for_each_entry(adap, &i2c_adapter_list, list) {
+		if (dev != adap->dev.parent)
+			continue;
+		of_i2c_register_devices(adap);
+		break;
+	}
+
+	return 0;
+}
+
 /**
  * i2c_new_dummy - return a new i2c device bound to a dummy driver
  * @adapter: the adapter managing the device
@@ -686,6 +696,7 @@ EXPORT_SYMBOL_GPL(i2c_parse_fw_timings);
  */
 int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 {
+	struct device *hw_dev;
 	int ret;
 
 	if (adapter->nr < 0) {
@@ -712,7 +723,12 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	/* populate children from any i2c device tables */
 	scan_boardinfo(adapter);
 
-	of_i2c_register_devices(adapter);
+	hw_dev = adapter->dev.parent;
+	if (hw_dev && dev_of_node(hw_dev)) {
+		if (!hw_dev->detect)
+			hw_dev->detect = i2c_bus_detect;
+		i2c_bus_detect(hw_dev);
+	}
 
 	return 0;
 }
-- 
2.30.2



