Delivery-date: Mon, 31 Aug 2026 15:37:45 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x12Cm-009IHU-1v
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 15:37:45 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B7BB8201ED1
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 15:37:40 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HTapnFtI;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L6eMz/ThWDndL93SWhrvGlDq5d+uD6slGMcjTYkPw88=; b=HTapnFtII/Dwhp8d2NdPWNpuQ8
	SbdhP25jnd9GwLQoNlpKJMgoIBwi7Y9RtfHSAvNY7S2bmrc3habAWU23v5Fo3D3cWln/B1K6dwlNu
	N8cQNKYIJ0qBEmTf+IPCUInhsKLkWqeI79RejD03bD+zP/JWvHaUVqCC8GnLXIiE73aUcrjEbC43A
	L637DBdnU+4QPld4rPBk06PwT20D+eraICTNATMpIfmfSEX7eg5OU83EI+FN6PY28m6MRjjAkzbzT
	N7rG9mO2To4bpBZb99v4WhJNKb0XloeetmSOQ0M3jHsg1t8bzF+RpWP/eKXbd/8slFOj7GJV0MCC9
	OX66KRSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12Bx-00000009RQ4-0vjq;
	Mon, 31 Aug 2026 13:36:53 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12Br-00000009RNm-1dU8
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 13:36:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 974F1202475;
	Mon, 31 Aug 2026 15:36:41 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x12Bl-004GXi-1g;
	Mon, 31 Aug 2026 15:36:41 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-0000000H7Av-23Lq;
	Mon, 31 Aug 2026 15:20:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2026 15:20:19 +0200
Subject: [PATCH 12/13] usb: detect unplugged devices on transfer errors
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260831-usb-device-lifetime-v1-12-6adf4054b909@pengutronix.de>
References: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
In-Reply-To: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788182410; l=7859;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=uLVdVzInk3aN2iFK9/gm6g+/7fFAkrDoTlyMZA93Ms8=;
 b=skFE32agAgdh85NOI5zEtawlJjUyPgTkaMS9OWgXSlqN+iKbFjwB7ipO8J2AUMlmi4opHq+6v
 MuDzwKeGLBVD/7hexiy80cyd8JQj8rrt/XJP+IHu/s+sS2b9GoIsrLm
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_063647_595081_C8DD5BDD 
X-CRM114-Status: GOOD (  30.77  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Removing a device is only done when somebody runs "usb". Until
    then I/O to a device that has been unplugged in the meantime keeps failing,
    and neither the USB core nor the drivers realise why. Reading [...] 
 
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
X-Stat-Signature: nq6komgya8d4x3pkm8iben6hqfp5nyna
X-Rspamd-Queue-Id: B7BB8201ED1
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

Removing a device is only done when somebody runs "usb". Until then I/O
to a device that has been unplugged in the meantime keeps failing, and
neither the USB core nor the drivers realise why. Reading from a
filesystem that was mounted off a stick that is gone results in an
endless stream of

	usb-storage usb1-0-1: Resetting EP 1...
	ERROR: xHCI xHCI0: halted endpoint, not queueing URB.

as the storage driver keeps resetting endpoints of a device that is not
there and retries the command.

When a transfer fails, ask the hub the device is attached to whether the
port still reports a connection. That is cheap - the hub is still there -
and it answers the question the transfer error cannot: is this a flaky
device or no device at all. Remember the answer, so the bus is asked once
and every further transfer fails with -ENODEV right away.

Only a hub that positively reports an empty port counts. If the hub
cannot be asked we have learned nothing, and marking a device gone
because some unrelated transfer failed would be worse than leaving it
alone. A device behind a hub that turns out to be gone is marked as well,
along with everything below it.

Removal itself is left to the next scan. Tearing the device down from
inside a transfer would pull the block device and the cdevs out from
under the filesystem that is asking for the data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Assisted-by: Claude:claude-opus-5
---
 drivers/usb/core/hub.c  | 22 ++++++++++++
 drivers/usb/core/usb.c  | 89 +++++++++++++++++++++++++++++++++++++++++++++++--
 drivers/usb/core/usb.h  |  1 +
 include/linux/usb/usb.h | 16 +++++++++
 4 files changed, 126 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index f897740cbf..6520cd43d5 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -260,6 +260,28 @@ static int hub_port_reset(struct usb_device *hub, int port,
 }
 
 
+/**
+ * usb_hub_port_connected - ask a hub whether a port still has a device
+ * @hub: the hub to ask
+ * @port: 1-based port number
+ *
+ * Return: 1 if the port reports a device, 0 if it doesn't and a negative
+ * error code when the hub could not be asked. Do not treat the latter as
+ * "no device": a hub that doesn't answer tells us nothing about what is
+ * plugged into it.
+ */
+int usb_hub_port_connected(struct usb_device *hub, int port)
+{
+	struct usb_port_status portsts;
+	int ret;
+
+	ret = usb_get_port_status(hub, port, &portsts);
+	if (ret < 0)
+		return ret;
+
+	return !!(le16_to_cpu(portsts.wPortStatus) & USB_PORT_STAT_CONNECTION);
+}
+
 /**
  * usb_hub_cancel_scans - drop pending port scans of a hub that goes away
  * @dev: the USB device that is about to be removed
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 55c57e6334..71b72c3efb 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -751,6 +751,73 @@ int usb_rescan(void)
  *
  */
 
+/**
+ * usb_mark_disconnected - remember that a device and its children are gone
+ * @dev: the device that has been unplugged
+ */
+static void usb_mark_disconnected(struct usb_device *dev)
+{
+	int i;
+
+	if (usb_device_disconnected(dev))
+		return;
+
+	dev->disconnected = true;
+	dev_info(&dev->dev, "disconnected\n");
+
+	/* everything behind an unplugged hub is gone as well */
+	for (i = 0; i < dev->maxchild; i++)
+		if (dev->children[i])
+			usb_mark_disconnected(dev->children[i]);
+}
+
+/**
+ * usb_device_check_gone - find out whether a failed transfer means "unplugged"
+ * @dev: the device a transfer just failed on
+ *
+ * A transfer can fail for all kinds of reasons, so ask the hub the device
+ * is attached to whether the port still sees a device. Without this the
+ * only thing telling a stale device from a flaky one is a scan, and until
+ * somebody runs one we keep resetting endpoints of a device that is not
+ * there anymore.
+ *
+ * The result is remembered, so this asks the bus once and all further
+ * transfers fail right away.
+ */
+static bool usb_device_check_gone(struct usb_device *dev)
+{
+	struct usb_device *parent = dev->parent;
+
+	if (usb_device_disconnected(dev))
+		return true;
+
+	/*
+	 * A root hub has no hub to ask. It goes away with its controller,
+	 * which is not something we can detect here.
+	 */
+	if (!parent)
+		return false;
+
+	/* If the hub itself is gone, so is everything below it */
+	if (usb_device_check_gone(parent)) {
+		usb_mark_disconnected(dev);
+		return true;
+	}
+
+	/*
+	 * Only believe a hub that positively says the port is empty. If it
+	 * doesn't answer we have learned nothing, and declaring the device
+	 * gone on a transfer that failed for some other reason would be
+	 * worse than leaving it alone.
+	 */
+	if (usb_hub_port_connected(parent, dev->portnr) != 0)
+		return false;
+
+	usb_mark_disconnected(dev);
+
+	return true;
+}
+
 /*
  * submits an Interrupt Message
  */
@@ -760,6 +827,9 @@ int usb_submit_int_msg(struct usb_device *dev, unsigned long pipe,
 	struct usb_host *host = dev->host;
 	int ret;
 
+	if (usb_device_disconnected(dev))
+		return -ENODEV;
+
 	ret = usb_host_acquire(host);
 	if (ret)
 		return ret;
@@ -768,6 +838,9 @@ int usb_submit_int_msg(struct usb_device *dev, unsigned long pipe,
 
 	usb_host_release(host);
 
+	if (ret && usb_device_check_gone(dev))
+		return -ENODEV;
+
 	return ret;
 }
 
@@ -788,6 +861,9 @@ int usb_control_msg(struct usb_device *dev, unsigned int pipe,
 	int ret;
 	struct devrequest *setup_packet = dev->setup_packet;
 
+	if (usb_device_disconnected(dev))
+		return -ENODEV;
+
 	ret = usb_host_acquire(host);
 	if (ret)
 		return ret;
@@ -808,8 +884,11 @@ int usb_control_msg(struct usb_device *dev, unsigned int pipe,
 
 	usb_host_release(host);
 
-	if (ret)
+	if (ret) {
+		if (usb_device_check_gone(dev))
+			return -ENODEV;
 		return ret;
+	}
 
 	return dev->act_len;
 }
@@ -828,6 +907,9 @@ int usb_bulk_msg(struct usb_device *dev, unsigned int pipe,
 	if (len < 0)
 		return -1;
 
+	if (usb_device_disconnected(dev))
+		return -ENODEV;
+
 	ret = usb_host_acquire(host);
 	if (ret)
 		return ret;
@@ -837,8 +919,11 @@ int usb_bulk_msg(struct usb_device *dev, unsigned int pipe,
 
 	usb_host_release(host);
 
-	if (ret)
+	if (ret) {
+		if (usb_device_check_gone(dev))
+			return -ENODEV;
 		return ret;
+	}
 
 	*actual_length = dev->act_len;
 
diff --git a/drivers/usb/core/usb.h b/drivers/usb/core/usb.h
index b3c224d88f..2529bcfec1 100644
--- a/drivers/usb/core/usb.h
+++ b/drivers/usb/core/usb.h
@@ -7,5 +7,6 @@ void usb_free_device(struct usb_device *dev);
 int usb_new_device(struct usb_device *dev);
 void usb_remove_device(struct usb_device *dev);
 void usb_hub_cancel_scans(struct usb_device *dev);
+int usb_hub_port_connected(struct usb_device *hub, int port);
 
 #endif /* __CORE_USB_H */
diff --git a/include/linux/usb/usb.h b/include/linux/usb/usb.h
index c25f3d73c3..784786dad5 100644
--- a/include/linux/usb/usb.h
+++ b/include/linux/usb/usb.h
@@ -126,8 +126,24 @@ struct usb_device {
 
 	/* slot_id - for xHCI enabled devices */
 	unsigned int slot_id;
+
+	/* device is physically gone, don't talk to it anymore */
+	bool disconnected;
 };
 
+/**
+ * usb_device_disconnected - has the device been unplugged?
+ * @dev: the USB device
+ *
+ * Set once a transfer to the device failed and the hub it is attached to
+ * confirmed that the port has no connection anymore. Transfers to such a
+ * device fail with -ENODEV without touching the bus.
+ */
+static inline bool usb_device_disconnected(struct usb_device *dev)
+{
+	return dev->disconnected;
+}
+
 struct usb_device_id;
 
 struct usb_driver {

-- 
2.47.3



