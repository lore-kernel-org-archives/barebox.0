Delivery-date: Fri, 04 Sep 2026 16:00:22 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2USq-00Akev-1J
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 16:00:22 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="4gj2Pw/e";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=rUiIEROA;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E7A0320591C
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 16:00:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DZxC8/HazKJ3lI5aFvx/PrPQWRp56INNEQD/MaemihM=; b=4gj2Pw/eVZpuubMDBiwlG4erW1
	HFoOCmQDmfWfVPNyhssvD3NnWAUBmwClNsnxH2Dt4Nl/67Uc8YDKvjhGAXcBKL9p2uDRAD0tglVzE
	fDjJHKuUppy5+a9VBzB7PMSVTkCQrWIgZCb4ktrgxQ1eTarEa5ua7CSMpk/dSYoFBfZB87elZTsoq
	clWn74SsiObhyDHcX4yiyE4WM7h64B8o/B1vIv7yUQjhIpSdAiblr3B169SOze0mV+n3X0g23HghO
	7lM6W2FPbOEIZtCdWLcOu4BDW282UBkDuu6TeF6huSuYn8XSbEN5CJACicIYRIkCeSe256QvhVWJ6
	KCM9ppFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2URK-00000002Iz8-3FuH;
	Fri, 04 Sep 2026 13:58:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2URJ-00000002IyO-3I7L
	for barebox@bombadil.infradead.org;
	Fri, 04 Sep 2026 13:58:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=DZxC8/HazKJ3lI5aFvx/PrPQWRp56INNEQD/MaemihM=; b=rUiIEROAmZNlRDOwsiIYFwDwoX
	fQku7Y7lWkeaw3Z/m2sdxq+LqETslJjZxVRlCxE5K35RQD8aScq7YeFUt2rU22CFDxwLTm3Ri3hic
	FjPJc3iVfCX8M4Bo5rGxHjtDLHF5z7tE1ydQYZTSlPOKUgEDWvuogI1EOf3CrQhUYa9/um8/5x3wB
	u3YGWsJomh6bPNABm0dLpM1YSa+ZCGQ4HQLsfHRmebox7Rr4KmRRVaRqxlKsTRlKoqhR64WgABqYr
	hdmjOv2VTprS4Al4+6DZ4xlxbHEIyIDzR1U2YkYXg3nvCupD2pBexs6CV5zFmZ/cJK5TCdhBY69nS
	OcaLEwIg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x2URG-0000000EA8O-3BUh
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 13:58:44 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1x2URB-0000IT-N9; Fri, 04 Sep 2026 15:58:37 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 04 Sep 2026 15:58:30 +0200
Subject: [PATCH v4 6/6] drivers: usb: add usb_add_device to add a device
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260904-v2026-06-0-topic-efi_usb-v4-6-6f3a59d8e338@pengutronix.de>
References: <20260904-v2026-06-0-topic-efi_usb-v4-0-6f3a59d8e338@pengutronix.de>
In-Reply-To: <20260904-v2026-06-0-topic-efi_usb-v4-0-6f3a59d8e338@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.16.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::5c
X-SA-Exim-Mail-From: f.pflug@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_145842_949332_CAF39068 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Before this pull request, the only one to create new USB devices
    was the USB subsystem itselg, which did it in the usb_new_device function.
    This function is not viable for the efi driver, as it cannot [...] 
 
 Content analysis details:   (0.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: x5caig1btj4z7rtq84f1454mb1xoq9c1
X-Rspamd-Queue-Id: E7A0320591C
X-Spamd-Result: default: False [-7.61 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	FORGED_SENDER(0.00)[f.pflug@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received,2a0a:edc0:0:1101:1d::5c:received];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[f.pflug@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-];
	FORGED_SENDER_MAILLIST(0.00)[]

Before this pull request, the only one to create new USB devices was the
USB subsystem itselg, which did it in the usb_new_device function.
This function is not viable for the efi driver, as it cannot set the USB
descriptor as used by it.

Create a new header function to add a new USB device to the list of
known USB devices.

Modify the usb_new_device function to use the newly created header
instead of doing it itself and add it to efi-io-protocol for usb
devices.
---
 drivers/usb/core/usb.c             | 12 ++++++++++--
 drivers/usb/core/usb.h             |  1 +
 drivers/usb/host/efi-io-protocol.c |  2 ++
 3 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index ce10b71f40..38b0ec2595 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -557,8 +557,7 @@ int usb_new_device(struct usb_device *dev)
 			dev->descriptor->idVendor, "%04x");
 	dev_add_param_uint32_fixed(&dev->dev, "idProduct",
 			dev->descriptor->idProduct, "%04x");
-	list_add_tail(&dev->list, &usb_device_list);
-	dev_count++;
+	usb_add_device(dev);
 
 	err = 0;
 
@@ -575,6 +574,15 @@ void usb_free_device(struct usb_device *usbdev)
 	free(usbdev);
 }
 
+void usb_add_device(struct usb_device *usbdev)
+{
+	if (!usbdev)
+		return;
+
+	list_add_tail(&usbdev->list, &usb_device_list);
+	dev_count++;
+}
+
 void usb_remove_device(struct usb_device *usbdev)
 {
 	int i;
diff --git a/drivers/usb/core/usb.h b/drivers/usb/core/usb.h
index b503e5b4a8..49a6938246 100644
--- a/drivers/usb/core/usb.h
+++ b/drivers/usb/core/usb.h
@@ -5,6 +5,7 @@
 struct usb_device *usb_alloc_new_device(void);
 void usb_free_device(struct usb_device *dev);
 int usb_new_device(struct usb_device *dev);
+void usb_add_device(struct usb_device *dev);
 void usb_remove_device(struct usb_device *dev);
 void usb_set_maxpacket_ep(struct usb_device *dev,
 			  struct usb_endpoint_descriptor *ep);
diff --git a/drivers/usb/host/efi-io-protocol.c b/drivers/usb/host/efi-io-protocol.c
index 4858d30eb9..5bc25d132f 100644
--- a/drivers/usb/host/efi-io-protocol.c
+++ b/drivers/usb/host/efi-io-protocol.c
@@ -273,6 +273,8 @@ static int create_usb_device(struct efi_usb_io_priv *priv)
 	/* register as root device for host */
 	host->root_dev = dev;
 
+	usb_add_device(dev);
+
 	return 0;
 
 out_err:

-- 
2.47.3



