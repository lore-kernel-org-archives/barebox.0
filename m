Delivery-date: Thu, 20 Aug 2026 16:36:06 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wx3sD-005FgW-34
	for lore@lore.pengutronix.de;
	Thu, 20 Aug 2026 16:36:06 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7CC0420227A
	for <lore@pengutronix.de>; Thu, 20 Aug 2026 16:36:02 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BdqONFTg;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4deYkcUbm+iO36cEfkgKuglPVi4uAdm1/tK9ptKdFIY=; b=BdqONFTgIq4u4BpjiXsB97PUP8
	PcCRCr8+5p88w4pcIcMmlP74gpe9vy5X3uVHeQGWj7RqG6VVu0+lHVFwgpLQl5Np3GVzMnkpSfhBU
	uJAzXzhg5Hk60z22wMfB3KzASz0pDUfpcaJLiE68OaJp1yrr5L58iXckgcsKtqhtFN5gQri0UNgXy
	5w7gqUXOwpdlbSypKGA9t/jv07KdPCQh9+VbxE/N1s46uzOkGJGCaKm7SYDQWNGXUiVWoYfH4Lc0k
	ZASdRj6Dw5ggmhm+yhf7weXEfU4Q7FGEu5vsxBW45yAaOz9d95b6k0fUg1IrC0BdY7cqtyM/ghB59
	h1jlt+BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3qh-0000000BiJ7-1Cy7;
	Thu, 20 Aug 2026 14:34:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3qc-0000000BiGx-0FxB
	for barebox@lists.infradead.org;
	Thu, 20 Aug 2026 14:34:29 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wx3qW-0008Bx-OI; Thu, 20 Aug 2026 16:34:20 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 20 Aug 2026 16:34:19 +0200
Subject: [PATCH v3 4/5] efi: guid: add guid for usb host controller 2
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260820-v2026-06-0-topic-efi_usb-v3-4-faf0b9267966@pengutronix.de>
References: <20260820-v2026-06-0-topic-efi_usb-v3-0-faf0b9267966@pengutronix.de>
In-Reply-To: <20260820-v2026-06-0-topic-efi_usb-v3-0-faf0b9267966@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::5c
X-SA-Exim-Mail-From: f.pflug@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_073426_128608_E2AD078E 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Taken from https://uefi.org/specs/UEFI/2.11/17_Protocols_USB_Support.html#usb2-host-controller-protocol
    Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de> Signed-off-by: Fabian Pflug
    <f.pflug@pengutronix.de> --- efi/guid.c | 1 + include/efi/guid.h | 3 +++
   2 files changed, 4 insertions(+) 
 
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
X-Stat-Signature: 8eox9wtexkf5iy6ob34zsdm48iumazbz
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
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 7CC0420227A

Taken from https://uefi.org/specs/UEFI/2.11/17_Protocols_USB_Support.html#usb2-host-controller-protocol

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 efi/guid.c         | 1 +
 include/efi/guid.h | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/efi/guid.c b/efi/guid.c
index f438783fc1..568e1daa7d 100644
--- a/efi/guid.c
+++ b/efi/guid.c
@@ -100,6 +100,7 @@ const char *efi_guid_string(const efi_guid_t *g)
 	EFI_GUID_STRING(EFI_UGA_IO_PROTOCOL_GUID, "UGA Protocol", "EFI 1.1 UGA Protocol");
 	EFI_GUID_STRING(EFI_PCI_IO_PROTOCOL_GUID, "PCI IO Protocol", "EFI 1.1 PCI IO Protocol");
 	EFI_GUID_STRING(EFI_USB_IO_PROTOCOL_GUID, "USB IO Protocol", "EFI 1.0 USB IO Protocol");
+	EFI_GUID_STRING(EFI_USB2_HC_PROTOCOL_GUID, "USB HC2 Protocol", "EFI 1.0 USB Host Protocol");
 	EFI_GUID_STRING(EFI_FILE_INFO_GUID, "File Info", "EFI File Info");
 	EFI_GUID_STRING(EFI_FILE_SYSTEM_INFO_GUID, "Filesystem Info", "EFI FileSystem Info");
 	EFI_GUID_STRING(EFI_FILE_SYSTEM_VOLUME_LABEL_ID, "Filesystem Volume Label ID", "EFI FileSystem Volume Label ID");
diff --git a/include/efi/guid.h b/include/efi/guid.h
index 7d75842b04..3e8cff0373 100644
--- a/include/efi/guid.h
+++ b/include/efi/guid.h
@@ -121,6 +121,9 @@ extern const efi_guid_t efi_debug_image_info_table_guid;
 #define EFI_USB_IO_PROTOCOL_GUID \
     EFI_GUID(0x2B2F68D6, 0x0CD2, 0x44cf, 0x8E, 0x8B, 0xBB, 0xA2, 0x0B, 0x1B, 0x5B, 0x75)
 
+#define EFI_USB2_HC_PROTOCOL_GUID \
+    EFI_GUID(0x3e745226, 0x9818, 0x45b6, 0xa2, 0xac, 0xd7, 0xcd, 0x0e, 0x8b, 0xa2, 0xbc)
+
 #define EFI_FILE_INFO_GUID \
     EFI_GUID(  0x9576e92, 0x6d3f, 0x11d2, 0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b )
 

-- 
2.47.3



