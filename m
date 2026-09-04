Delivery-date: Fri, 04 Sep 2026 16:00:27 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2USw-00AkgQ-1g
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 16:00:27 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=UkalZpMl;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=gDprovu9;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C49CB2058BB
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 16:00:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VaEWYhzNZxOL7nWgLt/FmGJ9mZF1TpmTfLkAK3b8laY=; b=UkalZpMlGbddwRcD0YTDoDj4Z1
	fvHnt8TU9ldqJUUl5H7NWQJMWZwtPBrn1kYXOC+uXgSkWlaxGQmPrPZZr9ty1Rdekk09XX/LXAMaT
	LUg2TucVHpAAfE7lf/v76zoeNmSCZb4dB147allakOQVRs0k4B/eyFhI1ZryP9Hsjt9p0gz4anddK
	PS8pVDovI3auoB+FPJgSqZBj77Gu43cnRgfD3MiyxGfEh3r/ClCSE3pJ4ISrHgd7FHmMqWKAt2R3m
	pvMkKn225srVMlnSDzrBD7ZaJP3+vE5oxQ5Gvrx5PFglhkB5zEzBmZctiqYIwwCYNs0/VoIUZ/0ty
	WQVP0Vdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2URO-00000002J19-3yNq;
	Fri, 04 Sep 2026 13:58:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2URJ-00000002IyQ-3Zf7
	for barebox@bombadil.infradead.org;
	Fri, 04 Sep 2026 13:58:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=VaEWYhzNZxOL7nWgLt/FmGJ9mZF1TpmTfLkAK3b8laY=; b=gDprovu9uwQxPdVg7UGU7JFKsJ
	WuYmPlv2Nnl9VM2lNMOvl8lvxZBlfgx7wCe0Ov+knwMak0HvCjrCEsjtzOlTKckZC/JQYjNxFFbjf
	H1IOAxnB+qQdF443jXVWCoYLWZuGT7OT8SqQPsTNYlmUTlBllSG5qqEO8in23aOWJKw6UcWmtbVEw
	0h7vz94eIaGIEKLQUoceJVXrqFj+ILONDd4aDsyHM1V4TOVwJJZNg9+OP9C/Q1pwYMD8majRS9BP2
	F62T0a/r+RitFR+cGD5Obl0f5aAKpV3z4/AnaUKgI/yTNhXxAW94n5lr12xr6bk1OW/DSlQAeFhbf
	bRFLNgPg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x2URG-0000000EA8N-2q5J
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 13:58:44 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1x2URB-0000IT-MA; Fri, 04 Sep 2026 15:58:37 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 04 Sep 2026 15:58:29 +0200
Subject: [PATCH v4 5/6] test: x86: add test for uefi usb io
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260904-v2026-06-0-topic-efi_usb-v4-5-6f3a59d8e338@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260904_145842_832254_4FE57A56 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Check, that the EFI-USB-IO controller will create a USB Network
    device in barebox. The device has currently no driver, but is available nevertheless.
    Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de> Signed-off-by: Fabian
    Pflug <f.pflug@pengutronix.de> --- drivers/usb/host/efi-io-protocol.c | 15
    ++++++++++++--- test/x86/pc@efi_defconfig.yaml | 9 [...] 
 
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
X-Stat-Signature: 9pnb7rmcrfy15ociz7jejwg6jz4oz8w6
X-Rspamd-Queue-Id: C49CB2058BB
X-Spamd-Result: default: False [-7.61 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[f.pflug@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:1101:1d::5c:received,2a0a:edc0:2:b01:1d::104:received];
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

Check, that the EFI-USB-IO controller will create a USB Network device
in barebox. The device has currently no driver, but is available
nevertheless.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 drivers/usb/host/efi-io-protocol.c | 15 ++++++++++++---
 test/x86/pc@efi_defconfig.yaml     |  9 ++++++++-
 2 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/host/efi-io-protocol.c b/drivers/usb/host/efi-io-protocol.c
index 0921d4f7f1..4858d30eb9 100644
--- a/drivers/usb/host/efi-io-protocol.c
+++ b/drivers/usb/host/efi-io-protocol.c
@@ -146,6 +146,16 @@ static int efi_get_usb_string(struct efi_usb_io_protocol *protocol, u16 lang_id,
 	return 0;
 }
 
+static void print_usb_device_info(struct device *dev)
+{
+	struct usb_device *usb_dev = container_of(dev, struct usb_device, dev);
+
+	dev_info(dev, "Bus %03d Device %03d: ID %04x:%04x %s\n",
+		 usb_dev->host->busnum, usb_dev->devnum,
+		 usb_dev->descriptor->idVendor, usb_dev->descriptor->idProduct,
+		 usb_dev->prod);
+}
+
 static int create_usb_device(struct efi_usb_io_priv *priv)
 {
 	struct usb_host *host = &priv->host;
@@ -250,9 +260,8 @@ static int create_usb_device(struct efi_usb_io_priv *priv)
 				   sizeof(dev->serial));
 	}
 
-	dev_info(&dev->dev, "Bus %03d Device %03d: ID %04x:%04x %s\n",
-		 dev->host->busnum, dev->devnum, dev->descriptor->idVendor,
-		 dev->descriptor->idProduct, dev->prod);
+	print_usb_device_info(&dev->dev);
+	devinfo_add(&dev->dev, print_usb_device_info);
 
 	err = register_device(&dev->dev);
 	if (err) {
diff --git a/test/x86/pc@efi_defconfig.yaml b/test/x86/pc@efi_defconfig.yaml
index 2c077d5509..4feabb232d 100644
--- a/test/x86/pc@efi_defconfig.yaml
+++ b/test/x86/pc@efi_defconfig.yaml
@@ -8,7 +8,11 @@ targets:
         memory: 1024M
         kernel: barebox.efi
         display: qemu-default
-        extra_args: '-bios OVMF.fd'
+        extra_args: >
+          -bios OVMF.fd
+          -device qemu-xhci,id=xhci
+          -device usb-net,netdev=usb0,bus=xhci.0
+          -netdev user,id=usb0
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
@@ -16,6 +20,7 @@ targets:
     features:
       - pci
     devices:
+      usb1: 'usb1: Bus 001 Device 000: ID 0525:a4a2 RNDIS/QEMU USB Network Device'
       fb0: 'Type: primary'
       fbconsole0: 'Parent: fb0'
       wdog0: 'Parent: efi-wdt'
@@ -25,6 +30,8 @@ targets:
       acpi-APIC0: 'Signature: APIC (Multiple APIC Description Table)'
     runner:
       kconfig_add:
+        - CONFIG_USB_HOST=y
+        - CONFIG_USB_EFI_IO_PROTOCOL=y
         - CONFIG_DRIVER_SERIAL_NS16550=y
         - CONFIG_CONSOLE_ACTIVATE_FIRST=y # avoid duplicate output
 images:

-- 
2.47.3



