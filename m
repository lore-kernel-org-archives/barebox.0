Delivery-date: Mon, 31 Aug 2026 15:25:37 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1212-009I5m-1v
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 15:25:37 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C3CE82024A9
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 15:25:32 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0jbZPYSj;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BZGEn72169ctL3gI38DOkyaJ6Omg0tvVeMOj5waOMOo=; b=0jbZPYSjQSPMZ6jEZexSHUUqCS
	t4NzC6wPN2kJ2EHYnV8hvPBfRh+SRD/RmqltGzkAaQCnWbqaBwUxQrCtvFRFTit7i2/0dPz1FaZFG
	X/De0vQlSU50zB9c6IkQ2DpkwSuWtxilSe56uox2x7RZmIDhFcvZm8WQBss/LDpFlXzdaJiqg5a9r
	XO18xORO6iVTXZHtdifZro19ugBGL1ePI6fez3iK++RLKDMTYzvWjw0SVSZ1coALNoy2rO9XAAse0
	RZRJJ13Lcf6kHpbxoZNf8p9hia6rvNs/nEcTz8BU1EDQB6EblJhWhj37uFGvhzsrJa/PV2yYUnHnD
	HWNNdxTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11w0-00000009NzN-3Yxx;
	Mon, 31 Aug 2026 13:20:24 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11vx-00000009Nv3-34AZ
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 13:20:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C8907202476;
	Mon, 31 Aug 2026 15:20:10 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-004GR4-22;
	Mon, 31 Aug 2026 15:20:10 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-0000000H7Av-1zVQ;
	Mon, 31 Aug 2026 15:20:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2026 15:20:14 +0200
Subject: [PATCH 07/13] usb: hub: cancel pending port scans of a removed
 device
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260831-usb-device-lifetime-v1-7-6adf4054b909@pengutronix.de>
References: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
In-Reply-To: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788182410; l=3203;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=6FYykOTtn/QEEZwVwAKXkwJKM4eifJUEiFllhS9geEU=;
 b=4S1GrQKkmK6F+Qug55X5XzKxz7hSB02he1SH7PCGzxT2udIzim7ZcqmpcO2/FCcMlOrlICG5z
 molImzRWYPoCK5fwVubGL3DYIjNV5PNp/MBhvvLn7Ug7Qq0nZptSkRP
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_062021_943524_D056DB0B 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  usb_hub_configure_ports() queues one scan entry per port and
    leaves the draining to usb_device_list_scan(). That function is not reentrant:
    when a hub is found during a scan, its ports are queued and [...] 
 
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
X-Stat-Signature: ifc1xuu845nbdwn6youbyt6oiqkm5tzc
X-Rspamd-Queue-Id: C3CE82024A9
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
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

usb_hub_configure_ports() queues one scan entry per port and leaves the
draining to usb_device_list_scan(). That function is not reentrant: when
a hub is found during a scan, its ports are queued and processed by the
loop that is already running rather than by a nested one.

An entry therefore outlives the call that created it, and it holds
pointers to both the usb_device and its usb_hub_device. Removing a hub
frees the former in usb_free_device() and the latter in
usb_hub_disconnect(), so any entry left in the list would be dereferenced
after the free - hub->query_delay is read on every round.

Drop the entries belonging to a device before it goes away.
usb_remove_device() recurses into the children first, so every device in
a removed subtree cleans up its own entries.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Assisted-by: Claude:claude-opus-5
---
 drivers/usb/core/hub.c | 24 ++++++++++++++++++++++++
 drivers/usb/core/usb.c |  3 +++
 drivers/usb/core/usb.h |  1 +
 3 files changed, 28 insertions(+)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 3820b4cc90..b56c658f91 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -260,6 +260,30 @@ static int hub_port_reset(struct usb_device *hub, int port,
 }
 
 
+/**
+ * usb_hub_cancel_scans - drop pending port scans of a hub that goes away
+ * @dev: the USB device that is about to be removed
+ *
+ * The scan list is filled by usb_hub_configure_ports() and drained by
+ * usb_device_list_scan(). As the latter is not reentrant, a hub found
+ * during a scan queues its ports and leaves them for the loop that is
+ * already running. If that hub is removed before its entries have been
+ * processed, they would be left pointing at the freed usb_device and its
+ * freed usb_hub_device.
+ */
+void usb_hub_cancel_scans(struct usb_device *dev)
+{
+	struct usb_device_scan *usb_scan, *tmp;
+
+	list_for_each_entry_safe(usb_scan, tmp, &usb_scan_list, list) {
+		if (usb_scan->dev != dev)
+			continue;
+
+		list_del(&usb_scan->list);
+		free(usb_scan);
+	}
+}
+
 static void usb_hub_port_connect_change(struct usb_device *dev, int port,
 					uint16_t portstatus, uint16_t portchange)
 {
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 3daa6b1d1d..bc80e66fcb 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -620,6 +620,9 @@ void usb_remove_device(struct usb_device *usbdev)
 
 	for (i = 0; i < usbdev->maxchild; i++)
 		usb_remove_device(usbdev->children[i]);
+
+	usb_hub_cancel_scans(usbdev);
+
 	if (usbdev->parent && usbdev->portnr)
 		usbdev->parent->children[usbdev->portnr - 1] = NULL;
 	list_del(&usbdev->list);
diff --git a/drivers/usb/core/usb.h b/drivers/usb/core/usb.h
index 0d4f80c21d..b3c224d88f 100644
--- a/drivers/usb/core/usb.h
+++ b/drivers/usb/core/usb.h
@@ -6,5 +6,6 @@ struct usb_device *usb_alloc_new_device(void);
 void usb_free_device(struct usb_device *dev);
 int usb_new_device(struct usb_device *dev);
 void usb_remove_device(struct usb_device *dev);
+void usb_hub_cancel_scans(struct usb_device *dev);
 
 #endif /* __CORE_USB_H */

-- 
2.47.3



