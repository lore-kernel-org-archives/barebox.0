Delivery-date: Wed, 12 Aug 2026 18:38:24 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuByB-002OK8-21
	for lore@lore.pengutronix.de;
	Wed, 12 Aug 2026 18:38:24 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 24C70201EAD
	for <lore@pengutronix.de>; Wed, 12 Aug 2026 18:38:20 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Q3NZkyzl;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EMavmRvew+ZJ52S0ETXZgckBzGof4vyk1sx9fRrYcpk=; b=Q3NZkyzln3QElDCEnHvoC3TvAo
	Aa+eQVnylO5SyKz28qoyV4MTX+6uXbZ4Jf3Xw1a3NSvavbKhdXhEOrs9qeMh4sSfZZHp9M7Jbjiqx
	F+PeBeNCKKs7ogM5wHIUrFh8tOsm8Fm3Zs3IL0R/C68qF/0b5yHvfU2E9VSu4cCb9CYBcS5C8iVqS
	68CBoj78kT8jBXeh0GFfsHmTCn6Q6k2Pr0684xjt7ftcdXAQXVK/dmMYarr8d+XrXpU2qkln0roXz
	Cy/TX+icdOtI2L+eo4svMt45lFjXGqJpOlfGdiN/49dF5rI44orcbV8TsDcDALWPXF4x3JD9B7X8r
	vJ5UrQxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuBwo-0000000GbET-2oJp;
	Wed, 12 Aug 2026 16:36:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuBwk-0000000GbB8-0orZ
	for barebox@lists.infradead.org;
	Wed, 12 Aug 2026 16:36:57 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wuBwf-0003Qh-TO; Wed, 12 Aug 2026 18:36:49 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Wed, 12 Aug 2026 18:36:53 +0200
Subject: [PATCH 5/5] test: x86: add test for uefi usb io
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260812-v2026-06-0-topic-efi_usb-v1-5-9d2573c29f21@pengutronix.de>
References: <20260812-v2026-06-0-topic-efi_usb-v1-0-9d2573c29f21@pengutronix.de>
In-Reply-To: <20260812-v2026-06-0-topic-efi_usb-v1-0-9d2573c29f21@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::5c
X-SA-Exim-Mail-From: f.pflug@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_093654_260125_261CB7D2 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Check, that the EFI-USB-IO controller will create a USB Network
    device in barebox. The device has currently no driver, but is available nevertheless.
    Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de> --- drivers/usb/host/efi-io-protocol.c
    | 15 ++++++++++++--- test/x86/pc@efi_defconfig.yaml | 9 ++++++++- 2 files
    changed, 20 insertions(+), 4 delet [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: cyih5ai3wyhhw7c1jtb7w6nt6ron7xye
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:1101:1d::5c:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[f.pflug@pengutronix.de,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_ALL(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[f.pflug@pengutronix.de,barebox-bounces@lists.infradead.org];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 24C70201EAD

Check, that the EFI-USB-IO controller will create a USB Network device
in barebox. The device has currently no driver, but is available
nevertheless.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 drivers/usb/host/efi-io-protocol.c | 15 ++++++++++++---
 test/x86/pc@efi_defconfig.yaml     |  9 ++++++++-
 2 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/host/efi-io-protocol.c b/drivers/usb/host/efi-io-protocol.c
index bd35628f59..5c6abe5114 100644
--- a/drivers/usb/host/efi-io-protocol.c
+++ b/drivers/usb/host/efi-io-protocol.c
@@ -144,6 +144,16 @@ static int efi_get_usb_string(struct efi_usb_io_protocol *protocol, u16 lang_id,
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
@@ -255,9 +265,8 @@ static int create_usb_device(struct efi_usb_io_priv *priv)
 	if (err)
 		goto out_err;
 
-	dev_info(&dev->dev, "Bus %03d Device %03d: ID %04x:%04x %s\n",
-		 dev->host->busnum, dev->devnum, dev->descriptor->idVendor,
-		 dev->descriptor->idProduct, dev->prod);
+	print_usb_device_info(&dev->dev);
+	devinfo_add(&dev->dev, print_usb_device_info);
 
 	err = register_device(&dev->dev);
 	if (err) {
diff --git a/test/x86/pc@efi_defconfig.yaml b/test/x86/pc@efi_defconfig.yaml
index 2c077d5509..0e77d5a0eb 100644
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
+      usb1: 'usb1: Bus 001 Device 000: ID 0525:a4a2 NDIS/QEMU USB Network Device'
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



