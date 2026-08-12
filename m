Delivery-date: Wed, 12 Aug 2026 18:38:50 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuByb-002OLZ-1b
	for lore@lore.pengutronix.de;
	Wed, 12 Aug 2026 18:38:50 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 11BE2201EA3
	for <lore@pengutronix.de>; Wed, 12 Aug 2026 18:38:46 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xm8pzXfb;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f+ShLBZbZpPWDFXWya09IbMfmqiYvnOIhm8TR5bB+do=; b=xm8pzXfbNc/mPBcCojj/WNhO56
	HIx4+BWtqXpi0rvmQ6vHeSQK3RgWEilNP0zRU+hA9Ip9LR78FHDMJRvTCIWEdm/CpYOXAubOzPxyn
	NNIKjNTA4YwFmGzG+msArzGqkQczQdAVlWEpPvVv1v/QUWB9bF3JvPYyNPys+7tP+deyeeYoUeiaO
	/I6iMK6tbzvMz/cIf0QXOiY83g03lLZHA5UEyjWST39mrgbz9XomupmyS3MZbnAdGxd1Y+nyLVFoA
	zJs39Juu5SH911aIZEsDd2qPUmh5j+nj/EApMJXggSDOGibkAlXv496qqdHEByiNaInlT95XWE/yo
	Y3WOaVkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuBwn-0000000GbDu-27Xo;
	Wed, 12 Aug 2026 16:36:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuBwk-0000000GbB4-0oCZ
	for barebox@lists.infradead.org;
	Wed, 12 Aug 2026 16:36:56 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wuBwf-0003Qh-P9; Wed, 12 Aug 2026 18:36:49 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Wed, 12 Aug 2026 18:36:49 +0200
Subject: [PATCH 1/5] efi: usb: add header for usb-efi
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260812-v2026-06-0-topic-efi_usb-v1-1-9d2573c29f21@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260812_093654_240739_90C8F7DA 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
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
X-Stat-Signature: rbtyjshxy78yac5uf3rt6aqyg8q7ubhu
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
X-Rspamd-Queue-Id: 11BE2201EA3

Convert the spec in [1] to a header, that is useable for barebox.
The async headers are not defined, since it is currently not planned to
support async in addition to sync.

[1] https://uefi.org/specs/UEFI/2.11/17_Protocols_USB_Support.html

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 include/efi/protocol/usb.h | 66 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/include/efi/protocol/usb.h b/include/efi/protocol/usb.h
new file mode 100644
index 0000000000..7d30fbbcaa
--- /dev/null
+++ b/include/efi/protocol/usb.h
@@ -0,0 +1,66 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __EFI_PROTOCOL_USB_H_
+#define __EFI_PROTOCOL_USB_H_
+
+#include <efi/types.h>
+#include <linux/usb/usb.h>
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
+		char **desc);
+	efi_status_t(EFIAPI *get_supported_languages)(
+		struct efi_usb_io_protocol *this, u16 **lang_id_table,
+		u16 *table_size);
+	efi_status_t(EFIAPI *port_reset)(struct efi_usb_io_protocol *this);
+};
+
+#endif

-- 
2.47.3



