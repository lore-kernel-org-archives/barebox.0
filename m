Delivery-date: Fri, 04 Sep 2026 16:00:22 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2USr-00Akew-0y
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 16:00:22 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HQDYIObN;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CC23A205858
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 16:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bnxa+xwIpNEc6jaPBm+ilbHhZ3m9IKx2Pr34itWtm0o=; b=HQDYIObNn0GmViVwT9O9Uqrlj8
	1OnmLXaSJtzwyRtrVSbkt3HU44Y0wnLMsHI4lRy7OFL5RPd5XrIA+x9bBydT2N9Dp5+xzBIDO0Yqb
	QWzhEhiNqyrF11l1SrsJEDoHaC6l8/gU/KVpwZNcogJ9J3XdYgil8I9rkbBOA1sbACP0x0wZGOdLE
	Wf9r4/IKrcZ+BKvHT95fY0FLfdtKXFsRZ22CMvoKnME0nuAvFoC+PwVdPE4q4k7qxtrAAgm64rmm4
	ZJc0TMY1r+MJgfxAlH5joUFg+kc4SMW1mNyyDLYKKHvCoYNerifsJJlwBTmNp8EoHVsSkYGDJcxqx
	t2AfNEmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2URK-00000002Iyy-2ULJ;
	Fri, 04 Sep 2026 13:58:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2URG-00000002Ivx-0Vnq
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 13:58:45 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1x2URB-0000IT-I8; Fri, 04 Sep 2026 15:58:37 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 04 Sep 2026 15:58:25 +0200
Subject: [PATCH v4 1/6] efi: usb: add header for usb-efi
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260904-v2026-06-0-topic-efi_usb-v4-1-6f3a59d8e338@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260904_065842_185088_17B8699D 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Convert the spec in [1] to a header, that is useable for barebox.
    The async headers are not defined, since it is currently not planned to support
    async in addition to sync. [1] https://uefi.org/specs/UEFI/2.11/17_Protocols_USB_Support.html
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Stat-Signature: mh65t9ozskyopn7foztena5uq6zd3r4h
X-Rspamd-Queue-Id: CC23A205858
X-Spamd-Result: default: False [-7.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
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
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:1101:1d::5c:received,2a0a:edc0:2:b01:1d::104:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]

Convert the spec in [1] to a header, that is useable for barebox.
The async headers are not defined, since it is currently not planned to
support async in addition to sync.

[1] https://uefi.org/specs/UEFI/2.11/17_Protocols_USB_Support.html

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
v3:
- predeclared header instead of including linux/usb/usb.h
v2:
- Fixed wrong type in header for get_string_descriptor
---
 include/efi/protocol/usb.h | 71 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/include/efi/protocol/usb.h b/include/efi/protocol/usb.h
new file mode 100644
index 0000000000..322e32c205
--- /dev/null
+++ b/include/efi/protocol/usb.h
@@ -0,0 +1,71 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __EFI_PROTOCOL_USB_H_
+#define __EFI_PROTOCOL_USB_H_
+
+#include <efi/types.h>
+
+struct devrequest;
+struct usb_device_descriptor;
+struct usb_config_descriptor;
+struct usb_interface_descriptor;
+struct usb_endpoint_descriptor;
+
+enum efi_usb_data_direction {
+	EFI_USB_DATA_IN,
+	EFI_USB_DATA_OUT,
+	EFI_USB_NO_DATA
+};
+
+//
+// Error code for USB Transfer Results
+//
+#define EFI_USB_NOERROR 0x0000
+#define EFI_USB_ERR_NOTEXECUTE 0x0001
+#define EFI_USB_ERR_STALL 0x0002
+#define EFI_USB_ERR_BUFFER 0x0004
+#define EFI_USB_ERR_BABBLE 0x0008
+#define EFI_USB_ERR_NAK 0x0010
+#define EFI_USB_ERR_CRC 0x0020
+#define EFI_USB_ERR_TIMEOUT 0x0040
+#define EFI_USB_ERR_BITSTUFF 0x0080
+#define EFI_USB_ERR_SYSTEM 0x0100
+
+struct efi_usb_io_protocol {
+	efi_status_t(EFIAPI *control_transfer)(
+		struct efi_usb_io_protocol *this, struct devrequest *request,
+		enum efi_usb_data_direction direction, u32 timeout, void *data,
+		efi_uintn_t length, u32 *status);
+	efi_status_t(EFIAPI *bulk_transfer)(struct efi_usb_io_protocol *this,
+					    u8 device_endpoint, void *data,
+					    efi_uintn_t *length,
+					    efi_uintn_t timeout, u32 *status);
+	void *usb_io_async_interrupt_transfer;
+	efi_status_t(EFIAPI *sync_interrupt_transfer)(
+		struct efi_usb_io_protocol *this, u8 device_endpoint,
+		void *data, efi_uintn_t *length, efi_uintn_t timeout,
+		u32 *status);
+	void *efi_usb_io_isochronous_transfer;
+	void *efi_usb_io_async_isochronous_transfer;
+	efi_status_t(EFIAPI *get_device_descriptor)(
+		struct efi_usb_io_protocol *this,
+		struct usb_device_descriptor *desc);
+	efi_status_t(EFIAPI *get_config_descriptor)(
+		struct efi_usb_io_protocol *this,
+		struct usb_config_descriptor *desc);
+	efi_status_t(EFIAPI *get_interface_descriptor)(
+		struct efi_usb_io_protocol *this,
+		struct usb_interface_descriptor *desc);
+	efi_status_t(EFIAPI *get_endpoint_descriptor)(
+		struct efi_usb_io_protocol *this, u8 index,
+		struct usb_endpoint_descriptor *desc);
+	efi_status_t(EFIAPI *get_string_descriptor)(
+		struct efi_usb_io_protocol *this, u16 lang_id, u8 string_id,
+		wchar_t **desc);
+	efi_status_t(EFIAPI *get_supported_languages)(
+		struct efi_usb_io_protocol *this, u16 **lang_id_table,
+		u16 *table_size);
+	efi_status_t(EFIAPI *port_reset)(struct efi_usb_io_protocol *this);
+};
+
+#endif

-- 
2.47.3



