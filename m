Delivery-date: Tue, 02 Apr 2024 17:04:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrfg8-003laR-1t
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 17:04:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrfg7-0005fU-TY
	for lore@pengutronix.de; Tue, 02 Apr 2024 17:04:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tVlIe1ZcGjPkKXlg0XC7Xjlb5rAsoeqApmI6SujeYlw=; b=cUz1/CLP421ee5tMlkIbptxZvZ
	7MMtI5p6K7/1MFlPYckaVYtgmkd0s0ThdrYUTorHRSoTmWtPvntIjMUIVH4R3/W83TxE38NKRdaav
	Tb+ktX9O01epjV27ylTwYpILoiZiO83J4T82xxldFW4g7vwqi2PZq5k6CR+d8ABszkgfVpgnYfWNJ
	sKRZU64os32mDTBLdTSRFNXPqc6IdPTvXp08UrPvxU+zOECZE6WNo/2cmZnnIrBDCUQQeJiI38S2x
	ZJ52fJKgtB1l5YPhVZWShKrNQ0YpnsI9jGdAizC6Y9kCadWxIhA1NnLIdLuoUvKBcBql0PjpisUOY
	vTzCq/OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrffs-0000000BjNC-0KPE;
	Tue, 02 Apr 2024 15:03:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rreXA-0000000BRjq-0tMz
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 13:50:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreX7-0001xl-5w; Tue, 02 Apr 2024 15:50:37 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreX6-009zhR-Pd; Tue, 02 Apr 2024 15:50:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreX6-00FWhb-2H;
	Tue, 02 Apr 2024 15:50:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lgo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Apr 2024 15:50:32 +0200
Message-Id: <20240402135035.3700601-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402135035.3700601-1-a.fatoum@pengutronix.de>
References: <20240402135035.3700601-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_065040_538596_E74B3202 
X-CRM114-Status: GOOD (  12.28  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] input: record parent device at registration time
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The input core doesn't create a virtual device to represent the input
device. Still having a pointer to the parent device can be useful for
debugging purposes.

Add a parent member and start populating it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/input/gpio_keys.c    | 1 +
 drivers/input/imx_keypad.c   | 1 +
 drivers/input/usb_kbd.c      | 1 +
 drivers/input/virtio_input.c | 1 +
 include/input/input.h        | 1 +
 5 files changed, 5 insertions(+)

diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index c23d20563c38..190865b7f244 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -162,6 +162,7 @@ static int __init gpio_keys_probe(struct device *dev)
 		gk->buttons[i].previous_state = gk->buttons[i].active_low;
 	}
 
+	gk->input.parent = dev;
 	ret = input_device_register(&gk->input);
 	if (ret)
 		return ret;
diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
index fc6b45b3cb62..2c003905a7d9 100644
--- a/drivers/input/imx_keypad.c
+++ b/drivers/input/imx_keypad.c
@@ -410,6 +410,7 @@ static int __init imx_keypad_probe(struct device *dev)
 	if (ret)
 		return ret;
 
+	keypad->input.parent = dev;
 	ret = input_device_register(&keypad->input);
 	if (ret)
 		return ret;
diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c
index 86b48db2a72b..2e75aabf3da4 100644
--- a/drivers/input/usb_kbd.c
+++ b/drivers/input/usb_kbd.c
@@ -188,6 +188,7 @@ static int usb_kbd_probe(struct usb_device *usbdev,
 	} else
 		dev_dbg(&usbdev->dev, "poll keyboard via int ep\n");
 
+	data->input.parent = &usbdev->dev;
 	ret = input_device_register(&data->input);
 	if (ret) {
 		dev_err(&usbdev->dev, "can't register input\n");
diff --git a/drivers/input/virtio_input.c b/drivers/input/virtio_input.c
index 5c6849b561eb..655a9051726a 100644
--- a/drivers/input/virtio_input.c
+++ b/drivers/input/virtio_input.c
@@ -216,6 +216,7 @@ static int virtinput_probe(struct virtio_device *vdev)
 
 	virtio_device_ready(vdev);
 
+	vi->idev.parent = &vdev->dev;
 	err = input_device_register(&vi->idev);
 	if (err)
 		goto err_input_register;
diff --git a/include/input/input.h b/include/input/input.h
index d169c647bdaf..9445d20e566b 100644
--- a/include/input/input.h
+++ b/include/input/input.h
@@ -14,6 +14,7 @@ struct input_event {
 
 struct input_device {
 	struct list_head list;
+	struct device *parent;
 	DECLARE_BITMAP(keys, KEY_CNT);
 };
 
-- 
2.39.2



