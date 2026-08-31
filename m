Delivery-date: Mon, 31 Aug 2026 15:25:36 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1211-009I5N-2t
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 15:25:36 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 631C5202498
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 15:25:32 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Ym8iGu6n;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yQZdFgsi/dpz53Ilr2Iay86pFOc+vksmOLBAaFxeDmE=; b=Ym8iGu6nbs65t6hfceuSef1bXp
	bLMrIBiqEdic76UX7Aq/LMZykj0yHWKwBQf11lFK+1+W/qxNnkP+hwMMqJZFJLhcAkATe/rUtRcyt
	LKbXM3fD1BEUseE1wOxvzOO9dTogOTwiRPj/CK6IlGEGzXmoK/DRA6SN7zHwBQdR0LKjr4Qj9US32
	D1cUEhtbxuD46aU8scuZbaRd0HTXCAEk1ltWTFFISWDB4fgTXziuAFmRT/yx3kkaeMiKixaLiB57n
	6vszjU8ZThJDwA2xENW+66f/OcRapIi3jgjHyRF04OvZhCdTqQCpcwMZueuhby6w4IMgTI9b2yVrR
	Bq/VPYkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11w1-00000009Nzy-0Mud;
	Mon, 31 Aug 2026 13:20:25 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11vy-00000009Nvf-31I5
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 13:20:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E5A50202488;
	Mon, 31 Aug 2026 15:20:10 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-004GR5-1z;
	Mon, 31 Aug 2026 15:20:10 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-0000000H7Av-20Js;
	Mon, 31 Aug 2026 15:20:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2026 15:20:15 +0200
Subject: [PATCH 08/13] usb: reuse the addresses of removed devices
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260831-usb-device-lifetime-v1-8-6adf4054b909@pengutronix.de>
References: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
In-Reply-To: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788182410; l=2622;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=dlh4aQHrDXIWSEK9fpQZwrLULJ6jCMRHGXM4RLyIeM8=;
 b=5OTZD1AT29NR5ocSzNwi77GM2Kz+y5/ee+XNx1Gk6YXzSbu8Mcn0t2ROgo1+jiAtTszU10uno
 P+u+4XpAAQsCiiXXE1S3lKUr/D+l3vVXhj4MBEsi2ODXAkOlBt4rdKG
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_062022_947415_060ED101 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  dev_index only ever counted up, so every device that showed
    up got an address one higher than the previous one. Without device removal
    that was fine - there is a limited number of devices on a bus - b [...] 
 
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
X-Stat-Signature: ya4eqp1ucpuc3ujxxxytx7o9ikj1zx8s
X-Rspamd-Queue-Id: 631C5202498
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
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

dev_index only ever counted up, so every device that showed up got an
address one higher than the previous one. Without device removal that
was fine - there is a limited number of devices on a bus - but once
devices come and go, the counter keeps climbing. USB addresses are 7 bit
wide, so after 127 devices usb_set_address() starts handing out values
that cannot be represented and enumeration breaks until the next reset.

Keep a bitmap of the addresses in use instead and hand back the address
when the device is freed. As a side effect an exhausted address space is
now reported instead of silently producing broken addresses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Assisted-by: Claude:claude-opus-5
---
 drivers/usb/core/usb.c | 37 +++++++++++++++++++++++++++++++++++--
 1 file changed, 35 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index bc80e66fcb..ad0d0965b1 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -38,6 +38,7 @@
 #include <init.h>
 #include <dma.h>
 
+#include <linux/bitmap.h>
 #include <linux/usb/usb.h>
 #include <linux/usb/ch9.h>
 
@@ -46,7 +47,33 @@
 #define USB_BUFSIZ	512
 
 static int dev_count;
-static int dev_index;
+
+/*
+ * USB addresses are 7 bit wide and 0 is reserved for the default address,
+ * so the usable range is 1..127. Track them in a bitmap rather than just
+ * counting up, otherwise a board that sees enough plug/unplug cycles
+ * eventually hands out addresses a device cannot have.
+ */
+static DECLARE_BITMAP(usb_addresses, 128);
+
+static int usb_alloc_address(void)
+{
+	int addr;
+
+	addr = find_next_zero_bit(usb_addresses, 128, 1);
+	if (addr >= 128)
+		return -EADDRNOTAVAIL;
+
+	set_bit(addr, usb_addresses);
+
+	return addr;
+}
+
+static void usb_free_address(int addr)
+{
+	if (addr > 0)
+		clear_bit(addr, usb_addresses);
+}
 
 LIST_HEAD(usb_host_list);
 LIST_HEAD(usb_device_list);
@@ -487,7 +514,12 @@ int usb_new_device(struct usb_device *dev)
 
 	usb_setup_descriptor(dev, !host->no_desc_before_addr);
 
-	dev->devnum = ++dev_index;
+	err = usb_alloc_address();
+	if (err < 0) {
+		dev_err(&dev->dev, "out of USB addresses\n");
+		goto err_out;
+	}
+	dev->devnum = err;
 
 	err = usb_set_address(dev); /* set address */
 
@@ -605,6 +637,7 @@ int usb_new_device(struct usb_device *dev)
 
 void usb_free_device(struct usb_device *usbdev)
 {
+	usb_free_address(usbdev->devnum);
 	dma_free(usbdev->descriptor);
 	dma_free(usbdev->setup_packet);
 	free_device_res(&usbdev->dev);

-- 
2.47.3



