Delivery-date: Mon, 31 Aug 2026 15:37:40 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x12Ch-009IGY-2T
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 15:37:40 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 45475201ED7
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 15:37:36 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=tERMqlGZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gvJfC+NVqIyUX49YE0t+ole7wnKfPlP362+SvW5e0lc=; b=tERMqlGZrpgIcaFi+yCBKVX1fO
	XHNcGL01x28RwgsDSFT2Np/f8yOqX02PDIW9IOgSjhMZf+RG4hZBQeaED4OXzdxAyL6Z0wT3SDrj/
	miuqYGGuzLGvhq5G7/9/DsWAp+eNEEtYydQOiwvEFfsSzJABgn7RnKgEg06BGG1Mjg0SgmpTYdkQr
	HtEEXeeBltKvVe6EA6up4JejnulCdFV8G5/jWGws2LBfM+Y4jwjY0RMao6FvjH31irzoYj/IwrdVd
	psjpvrHE3Ou84blYizB5wEZZgKJ3xooy7mEhRsNiJJHiJ0wUuqfQtnpZsEwa6RTAAH/B3WwXUbHXw
	NgPmEFSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12Bt-00000009ROz-460o;
	Mon, 31 Aug 2026 13:36:49 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12Br-00000009RNl-172N
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 13:36:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 81915202433;
	Mon, 31 Aug 2026 15:36:41 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x12Bl-004GXf-1O;
	Mon, 31 Aug 2026 15:36:41 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-0000000H7Av-22eY;
	Mon, 31 Aug 2026 15:20:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2026 15:20:18 +0200
Subject: [PATCH 11/13] usb: hub: limit the number of ports to
 USB_MAXCHILDREN
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260831-usb-device-lifetime-v1-11-6adf4054b909@pengutronix.de>
References: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
In-Reply-To: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788182410; l=1674;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9tqw5bF6LbqsYsPClBSKyddjpzw5gJYMxDvJ/TE5WYI=;
 b=+D10Wbng0kkaIjKIFSnzcPrcZe+2Kaa/z04hGU3+DgdpysGTf8JUkq88BeMET5GncnNA99/Du
 0IK5P2r9ck/CBpeqMfMnfzo6Bzgrz80WaUR0UWIe3vw4zGRRa2ldyzB
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_063647_481653_5E4542EA 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  usb_hub_configure() takes the port count straight from the
    hub descriptor: dev->maxchild = descriptor->bNbrPorts; children[] in struct
    usb_device and overcurrent_count[] in struct usb_hub_device are both sized
    USB_MAXCHILDREN though, which is 8. A hub that reports more ports than that
    - bNbrPorts is a byte, so up [...] 
 
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
X-Stat-Signature: j6qpfnjhfpob6cobeda7shcm7i3no5d1
X-Rspamd-Queue-Id: 45475201ED7
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
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

usb_hub_configure() takes the port count straight from the hub
descriptor:

	dev->maxchild = descriptor->bNbrPorts;

children[] in struct usb_device and overcurrent_count[] in struct
usb_hub_device are both sized USB_MAXCHILDREN though, which is 8. A hub that reports
more ports than that - bNbrPorts is a byte, so up to 255 - makes
usb_hub_configure_ports() queue a scan for every one of them, and
usb_scan_port() and usb_hub_port_connect_change() then index both arrays
out of bounds.

The port count is device supplied, so cap it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Assisted-by: Claude:claude-opus-5
---
 drivers/usb/core/hub.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 18de8badf5..f897740cbf 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -550,7 +550,17 @@ static int usb_hub_configure(struct usb_device *dev)
 	for (i = 0; i < ((hub->desc.bNbrPorts + 1 + 7)/8); i++)
 		hub->desc.u.hs.PortPwrCtrlMask[i] = descriptor->u.hs.PortPwrCtrlMask[i];
 
+	/*
+	 * bNbrPorts comes from the device, while children[] and
+	 * overcurrent_count[] are sized after USB_MAXCHILDREN. Don't let a
+	 * hub that reports more ports than that write past their ends.
+	 */
 	dev->maxchild = descriptor->bNbrPorts;
+	if (dev->maxchild > USB_MAXCHILDREN) {
+		dev_warn(&dev->dev, "hub reports %d ports, only using %d\n",
+			 dev->maxchild, USB_MAXCHILDREN);
+		dev->maxchild = USB_MAXCHILDREN;
+	}
 	dev_dbg(&dev->dev, "%d ports detected\n", dev->maxchild);
 
 	switch (hub->desc.wHubCharacteristics & HUB_CHAR_LPSM) {

-- 
2.47.3



