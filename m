Delivery-date: Fri, 04 Sep 2026 16:04:04 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2UWR-00Akvn-32
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 16:04:04 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zkWeVhmr;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=dY9AYKya;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7C7E62058E0
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 16:04:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4deYkcUbm+iO36cEfkgKuglPVi4uAdm1/tK9ptKdFIY=; b=zkWeVhmrbgIYgQNULckAZXCf9Z
	9i2WNteUktdNhJy7oNTrKTtj90/mMEWmCAw8mPfEy5Hx9Pn2CpFbn0lo0kUzOnsCDU0HHrmqGofTv
	nNav4A7RMdkjqVW4CIqQbd3tUAO4NRougEq1dIHfS99o4jvOq6h0IMF7RdTCJpwCLis28O4CzBuvP
	5yMmr5QEdSX4K+B1j0IC3wgU4//+PZ6H3qtIdS3VB99kF2vtzY9U5FcSmEyJ34CmnmXCm52MC6hQY
	wAcSHmninEg6ej7l91y8EH3qlcruikzQAOeAi9OIQEToKaU6sbCNKmblBYEUQMh3NQoJvG1WPTUHx
	f1o3VvRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2URP-00000002J1X-0cox;
	Fri, 04 Sep 2026 13:58:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2URL-00000002Izb-2yHn
	for barebox@bombadil.infradead.org;
	Fri, 04 Sep 2026 13:58:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=4deYkcUbm+iO36cEfkgKuglPVi4uAdm1/tK9ptKdFIY=; b=dY9AYKya7jKs98m+MIKQGc3tXn
	CQrPJoNeYEgzTXE0jwA6fyOx/HnlthMLM7psGwCAeAnoJtv17hEDqsEKaPNMMnDSqQh2P8eac+icH
	ucSkIKcNuXjyWUXo7beijRoVYri45ft+T6UK/VkUFv2NIfYYi97gftqWf+rkd3FTgNy3Qu1O3rOjU
	u25fIyWtmOjxIf/wZzIDPk4WHp2xUY7cFadc1EA9jxsZ/RQu8jkWsVHBJSMDtJI2IC/CQ1uRU07Fo
	ujsLtKDzOtpsfWc81p7jAZ6OpIqKp77csrCcApkTT08gG6ut/W/8zXvNl0KlSYq9DXU/mhuwgT3Nc
	AtatlUjA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x2URG-0000000EA8P-3qkH
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 13:58:46 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1x2URB-0000IT-LB; Fri, 04 Sep 2026 15:58:37 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 04 Sep 2026 15:58:28 +0200
Subject: [PATCH v4 4/6] efi: guid: add guid for usb host controller 2
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260904-v2026-06-0-topic-efi_usb-v4-4-6f3a59d8e338@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260904_145843_112875_38562112 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Taken from https://uefi.org/specs/UEFI/2.11/17_Protocols_USB_Support.html#usb2-host-controller-protocol
    Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de> Signed-off-by: Fabian Pflug
    <f.pflug@pengutronix.de> --- efi/guid.c | 1 + include/efi/guid.h | 3 +++
   2 files changed, 4 insertions(+) 
 
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
X-Stat-Signature: 4qxxjy47xg9mm93f9qnkof9x3jhb5uoc
X-Rspamd-Queue-Id: 7C7E62058E0
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



