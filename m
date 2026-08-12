Delivery-date: Wed, 12 Aug 2026 18:38:51 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuByc-002OLu-0y
	for lore@lore.pengutronix.de;
	Wed, 12 Aug 2026 18:38:51 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4E0C4201EBE
	for <lore@pengutronix.de>; Wed, 12 Aug 2026 18:38:46 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LYsHSZqa;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PmB4q4h7+rcT906Qweqp6nE+1WahCzjVr5P8S5EFrLk=; b=LYsHSZqa3ym4ylK7FTqpGAta79
	jDeHvn0gVWuBviWKQ7pijgCCiR46l+iGAhfm7M7/Wk+CYxNpCfsj0g754Ye6WPK9bdn4A31wYujOW
	CakHMdBH36uXHMP5y8jdb0yZlByOSHkvZwsyZYClPXe4AuUSF4YEOwjEYmNXF7rHApqOcd20KqzOM
	HccF3CVE57lv3spvEcmHO1h0C4PpacuzL2xWJEOQzcnA/GjplFygw4o9z9cRykKQJBDYiyEkmy9bS
	SYKYsX5oZsVFYMfLkaCY7OezU+MeQ6/zy+URAIX/hRsE/55NStJekR+uvIb36sI2fxPmKINNPW/fP
	HqocTchA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuBwo-0000000GbEa-3MnD;
	Wed, 12 Aug 2026 16:36:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuBwk-0000000GbB6-0oQc
	for barebox@lists.infradead.org;
	Wed, 12 Aug 2026 16:36:57 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wuBwf-0003Qh-R5; Wed, 12 Aug 2026 18:36:49 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Wed, 12 Aug 2026 18:36:51 +0200
Subject: [PATCH 3/5] drivers: usb: host: efi: add efi io driver
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260812-v2026-06-0-topic-efi_usb-v1-3-9d2573c29f21@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260812_093654_541416_4038F774 
X-CRM114-Status: GOOD (  26.14  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The driver is based on [1] with one "host" controller per
   device. The host controller will hopefully not have any sub-devices and only
    have the one root device, which functions as the only device need [...] 
 
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
X-Stat-Signature: fd1y7hte9rabsb9b6z65oewh4f11f8o3
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
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
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[f.pflug@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
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
X-Rspamd-Queue-Id: 4E0C4201EBE

The driver is based on [1] with one "host" controller per device.
The host controller will hopefully not have any sub-devices and only
have the one root device, which functions as the only device needed and
registered for.

[1] https://uefi.org/specs/UEFI/2.11/17_Protocols_USB_Support.html#usb-driver-model

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 drivers/usb/host/Kconfig           |  11 ++
 drivers/usb/host/Makefile          |   1 +
 drivers/usb/host/efi-io-protocol.c | 316 +++++++++++++++++++++++++++++++++++++
 efi/guid.c                         |   1 +
 include/efi/guid.h                 |   1 +
 5 files changed, 330 insertions(+)

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 58f276cdb4..66e320d163 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -22,6 +22,17 @@ config USB_EHCI_ZYNQ
 	help
 	  Enable support for Zynq on-chip EHCI USB controller
 
+config USB_EFI_IO_PROTOCOL
+	bool "EFI USB I/O Protocol"
+	depends on EFI_PAYLOAD
+	depends on USB_HOST
+	help
+	  Enable support for usb devices, initialized by the UEFI BIOS.
+	  Use this with caution, as devices may afterwards have multiple drivers.
+	  For example can a USB-Stick be treated as an IO Blockdevice by UEFI and
+	  have a driver for it, but can also be initiated as a USB-Storage device,
+	  which could lead to errors in handling the USB-Device.
+
 config USB_OHCI
 	bool "OHCI driver"
 	depends on !MMU && HAS_DMA
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
index cbddfbe923..4f77680fc7 100644
--- a/drivers/usb/host/Makefile
+++ b/drivers/usb/host/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_USB_EHCI_ZYNQ)	+= ehci-zynq.o
 obj-$(CONFIG_USB_OHCI)		+= ohci-hcd.o
 obj-$(CONFIG_USB_OHCI_AT91)	+= ohci-at91.o
 obj-$(CONFIG_USB_XHCI)		+= xhci.o xhci-mem.o xhci-ring.o
+obj-$(CONFIG_USB_EFI_IO_PROTOCOL)	+= efi-io-protocol.o
diff --git a/drivers/usb/host/efi-io-protocol.c b/drivers/usb/host/efi-io-protocol.c
new file mode 100644
index 0000000000..bd35628f59
--- /dev/null
+++ b/drivers/usb/host/efi-io-protocol.c
@@ -0,0 +1,316 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <efi/payload.h>
+#include <efi/payload/init.h>
+#include <efi/payload/driver.h>
+#include <efi/protocol/usb.h>
+#include <efi/error.h>
+
+#include "../core/usb.h"
+
+struct efi_usb_io_priv {
+	struct efi_usb_io_protocol *protocol;
+	struct device *dev;
+	struct usb_host host;
+};
+
+#define usb_dev_to_efi_priv(ptr) \
+	container_of(ptr->host, struct efi_usb_io_priv, host)
+
+static int efi_usb_error_check(efi_status_t efiret, int status)
+{
+	if (efiret == EFI_DEVICE_ERROR) {
+		if (status & EFI_USB_ERR_TIMEOUT)
+			return -ETIMEDOUT;
+		if (status & EFI_USB_ERR_STALL)
+			return -ETIMEDOUT;
+		if (status & EFI_USB_ERR_NAK)
+			return -EPROTO;
+		if (status & EFI_USB_ERR_BUFFER)
+			return -EINVAL;
+		if (status & EFI_USB_ERR_NOTEXECUTE)
+			return -EIO;
+		if (status & EFI_USB_ERR_BABBLE)
+			return -EIO;
+		if (status & EFI_USB_ERR_CRC)
+			return -EIO;
+		if (status & EFI_USB_ERR_BITSTUFF)
+			return -EIO;
+		if (status & EFI_USB_ERR_SYSTEM)
+			return -EIO;
+	}
+
+	if (EFI_ERROR(efiret))
+		return -efi_errno(efiret);
+
+	return 0;
+}
+
+static int efi_usb_control_msg(struct usb_device *dev, unsigned long pipe,
+			       void *buffer, int length,
+			       struct devrequest *setup, int timeout)
+{
+	struct efi_usb_io_priv *priv = usb_dev_to_efi_priv(dev);
+	enum efi_usb_data_direction direction;
+	efi_status_t efiret;
+	efi_uintn_t efi_timeout = timeout;
+	u32 status;
+
+	if (usb_pipein(pipe))
+		direction = EFI_USB_DATA_IN;
+	else
+		direction = EFI_USB_DATA_OUT;
+	if (length == 0)
+		direction = EFI_USB_NO_DATA;
+
+	efiret = priv->protocol->control_transfer(priv->protocol, setup,
+						  direction, efi_timeout,
+						  buffer, length, &status);
+
+	dev->status = status; // dev-status is a long, status is u32
+	dev->act_len = length;
+
+	return efi_usb_error_check(efiret, status);
+}
+
+static int efi_usb_bulk_msg(struct usb_device *dev, unsigned long pipe,
+			    void *buffer, int length, int timeout)
+{
+	struct efi_usb_io_priv *priv = usb_dev_to_efi_priv(dev);
+	efi_uintn_t efi_length = length;
+	efi_status_t efiret;
+	u32 status;
+
+	u8 epnum = usb_pipeendpoint(pipe) | (usb_pipein(pipe) << 7);
+
+	efiret = priv->protocol->bulk_transfer(priv->protocol, epnum, buffer,
+					       &efi_length, timeout, &status);
+
+	dev->status = status;
+	dev->act_len = efi_length;
+
+	return efi_usb_error_check(efiret, status);
+}
+
+static int efi_usb_int_msg(struct usb_device *dev, unsigned long pipe,
+			   void *buffer, int length,
+			   int __always_unused interval)
+{
+	struct efi_usb_io_priv *priv = usb_dev_to_efi_priv(dev);
+	efi_status_t efiret;
+	u32 status;
+	efi_uintn_t efi_length = length;
+
+	u8 epnum = usb_pipeendpoint(pipe) | (usb_pipein(pipe) << 7);
+
+	efiret = priv->protocol->sync_interrupt_transfer(
+		priv->protocol, epnum, buffer, &efi_length, 100, &status);
+
+	dev->status = status;
+	dev->act_len = efi_length;
+
+	return efi_usb_error_check(efiret, status);
+}
+
+static int efi_get_usb_string(struct efi_usb_io_protocol *protocol, u16 lang_id,
+			      int index, char *buf, size_t size)
+{
+	char *efi_name;
+	efi_status_t efiret;
+	unsigned int u, idx;
+
+	memset(buf, 0, size);
+
+	if (!index)
+		return 0;
+
+	efiret = protocol->get_string_descriptor(protocol, lang_id, index,
+						 &efi_name);
+	if (EFI_ERROR(efiret))
+		return -efi_errno(efiret);
+
+	size--; /* leave room for trailing NULL char in output buffer */
+	for (idx = 0, u = 2;; u += 2) {
+		if (idx >= size)
+			break;
+		if (efi_name[u + 1]) /* high byte */
+			buf[idx++] = '?'; /* non-ASCII character */
+		else if (efi_name[u])
+			buf[idx++] = efi_name[u];
+		else
+			break;
+	}
+	buf[idx] = 0;
+
+	return 0;
+}
+
+static int create_usb_device(struct efi_usb_io_priv *priv)
+{
+	struct usb_host *host = &priv->host;
+	struct usb_device *dev;
+	efi_status_t efiret;
+	struct usb_interface *interface;
+	int err;
+	u16 *lang_ids;
+	u16 num_langs;
+
+	dev = usb_alloc_new_device();
+	dev->host = host;
+
+	dev_set_name(&dev->dev, "usb%d", dev->host->busnum);
+	dev->dev.id = DEVICE_ID_SINGLE;
+
+	efiret = priv->protocol->get_device_descriptor(priv->protocol,
+						       dev->descriptor);
+	if (EFI_ERROR(efiret)) {
+		err = -efi_errno(efiret);
+		goto out_err;
+	}
+
+	switch (dev->descriptor->bMaxPacketSize0) {
+	case 8:
+		dev->maxpacketsize = PACKET_SIZE_8;
+		break;
+	case 16:
+		dev->maxpacketsize = PACKET_SIZE_16;
+		break;
+	case 32:
+		dev->maxpacketsize = PACKET_SIZE_32;
+		break;
+	case 64:
+		dev->maxpacketsize = PACKET_SIZE_64;
+		break;
+	}
+
+	// There is only the possibility to access the current active configuration
+	// and not set the configuration.
+	// https://uefi.org/specs/UEFI/2.11/17_Protocols_USB_Support.html#efi-usb-io-protocol-usbgetconfigdescriptor
+	efiret = priv->protocol->get_config_descriptor(priv->protocol,
+						       &dev->config.desc);
+	if (EFI_ERROR(efiret)) {
+		err = -efi_errno(efiret);
+		goto out_err;
+	}
+
+	// UEFI has by definition only one interface per config
+	// https://uefi.org/specs/UEFI/2.11/17_Protocols_USB_Support.html#efi-usb-io-protocol-usbgetinterfacedescriptor
+	dev->config.no_of_if = 1;
+	interface = &dev->config.interface[0];
+
+	efiret = priv->protocol->get_interface_descriptor(priv->protocol,
+							  &interface->desc);
+	if (EFI_ERROR(efiret)) {
+		err = -efi_errno(efiret);
+		goto out_err;
+	}
+
+	interface->no_of_ep = interface->desc.bNumEndpoints;
+
+	if (interface->no_of_ep > USB_MAXENDPOINTS) {
+		err = -EPROTO;
+		goto out_err;
+	}
+
+	for (int i = 0; i < interface->no_of_ep; i++) {
+		efiret = priv->protocol->get_endpoint_descriptor(
+			priv->protocol, i, &interface->ep_desc[i]);
+		if (EFI_ERROR(efiret))
+			return -efi_errno(efiret);
+		usb_set_maxpacket_ep(dev, &interface->ep_desc[i]);
+	}
+
+	efiret = priv->protocol->get_supported_languages(priv->protocol,
+							 &lang_ids, &num_langs);
+	if (EFI_ERROR(efiret)) {
+		err = -efi_errno(efiret);
+		goto out_err;
+	}
+
+	num_langs = num_langs / sizeof(u16);
+	if (num_langs == 0) {
+		err = -EPROTO;
+		goto out_err;
+	}
+
+	dev->string_langid = lang_ids[0];
+	dev->have_langid = num_langs;
+
+	dev_info(&dev->dev, "new device: Mfr=%d, Product=%d, SerialNumber=%d\n",
+		 dev->descriptor->iManufacturer, dev->descriptor->iProduct,
+		 dev->descriptor->iSerialNumber);
+
+	err = efi_get_usb_string(priv->protocol, dev->string_langid,
+				 dev->descriptor->iManufacturer, dev->mf,
+				 sizeof(dev->mf));
+	if (err)
+		goto out_err;
+	err = efi_get_usb_string(priv->protocol, dev->string_langid,
+				 dev->descriptor->iProduct, dev->prod,
+				 sizeof(dev->prod));
+	if (err)
+		goto out_err;
+	err = efi_get_usb_string(priv->protocol, dev->string_langid,
+				 dev->descriptor->iSerialNumber, dev->serial,
+				 sizeof(dev->serial));
+	if (err)
+		goto out_err;
+
+	dev_info(&dev->dev, "Bus %03d Device %03d: ID %04x:%04x %s\n",
+		 dev->host->busnum, dev->devnum, dev->descriptor->idVendor,
+		 dev->descriptor->idProduct, dev->prod);
+
+	err = register_device(&dev->dev);
+	if (err) {
+		dev_err(&dev->dev, "Failed to register device: %pe\n",
+			ERR_PTR(err));
+		goto out_err;
+	}
+
+	// register as root device for host
+	host->root_dev = dev;
+
+	return 0;
+
+out_err:
+	dev_err(&dev->dev, "Failed to create UEFI-USB-IO device: %pe\n",
+		ERR_PTR(err));
+	usb_free_device(dev);
+	return err;
+}
+
+static int efi_usb_io_probe(struct efi_device *efidev)
+{
+	struct device *dev = &efidev->dev;
+	struct efi_usb_io_priv *priv;
+	struct usb_host *host;
+
+	priv = xzalloc(sizeof(*priv));
+
+	BS->handle_protocol(efidev->handle, &efi_usb_io_protocol_guid,
+			    (void **)&priv->protocol);
+	if (!priv->protocol)
+		return -ENODEV;
+
+	dev->priv = priv;
+	priv->dev = dev;
+
+	// EFI has one device per probe, which now needs its own host controller,
+	// since there is no shared host controller resource.
+
+	host = &priv->host;
+	host->submit_int_msg = efi_usb_int_msg;
+	host->submit_control_msg = efi_usb_control_msg;
+	host->submit_bulk_msg = efi_usb_bulk_msg;
+	usb_register_host(host);
+
+	return create_usb_device(priv);
+}
+
+static struct efi_driver efi_usb_io_driver = {
+	.driver = {
+		.name  = "efi-usb-io-protocol",
+	},
+	.probe = efi_usb_io_probe,
+	.guid = EFI_USB_IO_PROTOCOL_GUID,
+};
+device_efi_driver(efi_usb_io_driver);
diff --git a/efi/guid.c b/efi/guid.c
index 8853829d21..f438783fc1 100644
--- a/efi/guid.c
+++ b/efi/guid.c
@@ -15,6 +15,7 @@ efi_guid_t efi_null_guid = EFI_NULL_GUID;
 efi_guid_t efi_global_variable_guid = EFI_GLOBAL_VARIABLE_GUID;
 const efi_guid_t efi_guid_image_security_database = EFI_IMAGE_SECURITY_DATABASE_GUID;
 efi_guid_t efi_block_io_protocol_guid = EFI_BLOCK_IO_PROTOCOL_GUID;
+efi_guid_t efi_usb_io_protocol_guid = EFI_USB_IO_PROTOCOL_GUID;
 efi_guid_t efi_rng_protocol_guid = EFI_RNG_PROTOCOL_GUID;
 efi_guid_t efi_barebox_vendor_guid = EFI_BAREBOX_VENDOR_GUID;
 efi_guid_t efi_file_store_vars_guid = EFI_FILE_STORE_VARS_GUID;
diff --git a/include/efi/guid.h b/include/efi/guid.h
index 202300c74a..7d75842b04 100644
--- a/include/efi/guid.h
+++ b/include/efi/guid.h
@@ -27,6 +27,7 @@ extern efi_guid_t efi_null_guid;
 extern efi_guid_t efi_global_variable_guid;
 extern const efi_guid_t efi_guid_image_security_database;
 extern efi_guid_t efi_block_io_protocol_guid;
+extern efi_guid_t efi_usb_io_protocol_guid;
 extern efi_guid_t efi_rng_protocol_guid;
 extern efi_guid_t efi_barebox_vendor_guid;
 extern efi_guid_t efi_file_store_vars_guid;

-- 
2.47.3



