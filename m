Delivery-date: Mon, 31 Aug 2026 15:21:49 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x11xM-009I0r-1z
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 15:21:49 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C7B80202476
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 15:21:44 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="2u/YwX5p";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2GiVuPKdD2NPVXl0KyJYmpNjfqc/oSupbJAY7nI+Oho=; b=2u/YwX5pgoRsZN2Qk4rkLpXDof
	5rcK6+a51uH0tdoiD2yokoD5qSCo9Me7WGpcu+s3sRuiiW8BL5PfzgZ1CBaxkUV43+yP2t14oqoOY
	ncfuZZFEbKATwOmbC3fCpu9tD8NdUTN8JxvG+O6aL82QViszOVIA8s8CPwS3ulq82CPzi6PrdUge/
	foQu0xdnRNM7lFgvggIOfEcMv9g4rqvkqyMwxqPn68vRsK7xyDA7LJWuYjJbYxpgogcNtKtUmfTr3
	79N3qBwzY4t9JwZhAqzz0H/vc4n8O30FMnNQu6jzuETyvbNDvBXTv23qoidBSsq3leDneO2O3JTss
	cI+K3O8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11w1-00000009O07-0zM0;
	Mon, 31 Aug 2026 13:20:25 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11vx-00000009Nv5-489f
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 13:20:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DF3AE202487;
	Mon, 31 Aug 2026 15:20:10 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-004GR6-21;
	Mon, 31 Aug 2026 15:20:10 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-0000000H7Av-21L2;
	Mon, 31 Aug 2026 15:20:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2026 15:20:16 +0200
Subject: [PATCH 09/13] usb: hub: detect disconnected devices
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260831-usb-device-lifetime-v1-9-6adf4054b909@pengutronix.de>
References: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
In-Reply-To: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788182410; l=5128;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=bFIwLpr7EqiqQhSgHYHj8n1bANhJ4+lv1wxCK1n2+LA=;
 b=VrZZ4Tws4lci0Cmolt2OZ7vRi9qIlFNNogivu62p67k2F27EPYhVPpOSDa4DlLFKywvJmfMOj
 zgWW2Zm4mFPDeV8MwdynApcxWL+K++fr2yfVBzexD6iyOsEzZrWd7+r
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_062022_207211_F6A1CABB 
X-CRM114-Status: GOOD (  27.84  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  barebox never noticed that a USB device was unplugged. Running
    "usb" again after removing a stick kept reporting it, /dev/disk0 and its
   partitions stayed around and reads went to a device that was not [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: 6hfg3qfswxgqtjyank7rgithdrfio3jq
X-Rspamd-Queue-Id: C7B80202476
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::28:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_ALL(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US]
X-Rspamd-Action: no action

barebox never noticed that a USB device was unplugged. Running "usb"
again after removing a stick kept reporting it, /dev/disk0 and its
partitions stayed around and reads went to a device that was not there
anymore.

The machinery to remove a device was all there, it was just never
reached. usb_scan_port() bailed out before usb_hub_port_connect_change()
whenever the port reported no connection:

	if (!(portchange & USB_PORT_STAT_C_CONNECTION) ||
	    !(portstatus & USB_PORT_STAT_CONNECTION))

A port whose device has been unplugged has the change bit set - the hub
latches it - and the connection bit clear, which is exactly what the
second half of the condition filters out. The disconnect branch in
usb_hub_port_connect_change() could therefore never run: getting there
required the connection bit to be set, so its test for the very same bit
being clear was always false.

Let a connection change through when we have a device on that port, no
matter what the connection bit says, and decide in
usb_hub_port_connect_change() what it means: the device we knew about is
gone in either case, so remove it and enumerate a new one only if the
port reports a connection again. That also covers a device being swapped
for another one between two scans, which used to end in

	ERROR: register_device: already registered usb1-0

with the new device unusable and the old one orphaned from the port
array, so it could never be removed at all.

The previous attempt to catch that case tested for USB_PORT_STAT_ENABLE
being clear. That cannot work on xHCI: a SuperSpeed root port is enabled
by the controller during link training, so it is already enabled the
first time we look at it. Drop the test.

Ports without a device keep the old behaviour and stay in the scan list
until the connect timeout expires, so slow devices still get their
second before we give up on them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Assisted-by: Claude:claude-opus-5
---
 drivers/usb/core/hub.c | 35 +++++++++++++++++++++++++----------
 1 file changed, 25 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index b56c658f91..18de8badf5 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -292,20 +292,29 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port,
 	/* Clear the connection change status */
 	usb_clear_port_feature(dev, port + 1, USB_PORT_FEAT_C_CONNECTION);
 
-	/* Disconnect any existing devices under this port */
-	if (dev->children[port] && !(portstatus & USB_PORT_STAT_CONNECTION)) {
+	/*
+	 * The connection changed, so whatever we knew about this port is
+	 * gone. That covers a plain unplug as well as a device that has been
+	 * replaced while we were not looking: the port reports a connection
+	 * again in that case, but not the one we have a device for.
+	 *
+	 * Note we must not test for USB_PORT_STAT_ENABLE here to tell the
+	 * two apart. An xHCI root hub enables a SuperSpeed port on its own
+	 * during link training, so the port is already enabled the first
+	 * time we see it.
+	 */
+	if (dev->children[port]) {
 		dev_dbg(&dev->dev, "port%d: disconnect detected\n", port + 1);
 		usb_remove_device(dev->children[port]);
+		dev->children[port] = NULL;
 
 		if (!dev->parent && dev->host->usbphy)
 			usb_phy_notify_disconnect(dev->host->usbphy, dev->speed);
-
-		return;
 	}
 
-	/* Remove disabled but connected devices */
-	if (dev->children[port] && !(portstatus & USB_PORT_STAT_ENABLE))
-		usb_remove_device(dev->children[port]);
+	/* Nothing connected anymore, we are done */
+	if (!(portstatus & USB_PORT_STAT_CONNECTION))
+		return;
 
 	/* Allocate a new device struct for the port */
 	usb = usb_alloc_new_device();
@@ -380,8 +389,15 @@ static void usb_scan_port(struct usb_device_scan *usb_scan)
 	dev_dbg(&dev->dev, "port%d: Status 0x%04x Change 0x%04x\n",
 			port + 1, portstatus, portchange);
 
+	/*
+	 * A connection change on a port we have a device for has to be
+	 * handled even when the port reports no connection: that is how a
+	 * disconnect looks. An empty port on the other hand keeps its change
+	 * bit set from the power-on, so leave it in the scan list until the
+	 * connect timeout expires to give slow devices time to show up.
+	 */
 	if (!(portchange & USB_PORT_STAT_C_CONNECTION) ||
-	    !(portstatus & USB_PORT_STAT_CONNECTION)) {
+	    (!(portstatus & USB_PORT_STAT_CONNECTION) && !dev->children[port])) {
 		if (get_time_ns() >= hub->connect_timeout) {
 			dev_dbg(&dev->dev, "port%d: timeout\n", port + 1);
 			/* Remove this device from scanning list */
@@ -402,8 +418,7 @@ static void usb_scan_port(struct usb_device_scan *usb_scan)
 		usb_clear_port_feature(dev, port + 1, USB_PORT_FEAT_C_BH_PORT_RESET);
 	}
 
-	/* A new USB device is ready at this point */
-	dev_dbg(&dev->dev, "port%d: USB dev found\n", port + 1);
+	dev_dbg(&dev->dev, "port%d: connection change\n", port + 1);
 
 	usb_hub_port_connect_change(dev, port, portstatus, portchange);
 

-- 
2.47.3



