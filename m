Delivery-date: Mon, 17 Aug 2026 10:48:37 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvt1J-0044Tj-0a
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 10:48:37 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C382A20153F
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 10:48:37 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=dJZEFtZD;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q9bHxntNVXZezudT/OM6lUwj9dwtxmzM3PLntz3WMfo=; b=dJZEFtZD+f03xpjyz9KMU9ec3c
	+eDk6nyHAuWISBj4p68ne0TSwIVmxSUxo3tCfBI42oZG7NJcHt/tiPB65MoNVFEVz1f1jbdILBhSi
	TXkp3TmRmSu9MtceCKOlQ8Oe11PoHDjkWQPBU5jAEznv9zRkeRv5ZlHI3maxtEjD1GtV/TdKbq61g
	LBxWI401RsS3Ii/EKcCbmJkaofKxPou2N0rCTlm37Ly+2bpLGyb6upRGceobGUKhgy5ZUKRQcOe1O
	OAIBE3azCptwyGjXx8fy4DOf0d5IYS77zezdCi0XbulCbQya8H/OnnRWtC879VvyM9F4TVPJnUXb6
	f/xS1vzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvt08-00000005j70-1bqE;
	Mon, 17 Aug 2026 08:47:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvt03-00000005j4j-3qsw
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 08:47:22 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wvszz-0000IK-IP; Mon, 17 Aug 2026 10:47:15 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Mon, 17 Aug 2026 10:47:08 +0200
Subject: [PATCH v2 4/5] efi: guid: add guid for usb host controller 2
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260817-v2026-06-0-topic-efi_usb-v2-4-3d45c1782ccc@pengutronix.de>
References: <20260817-v2026-06-0-topic-efi_usb-v2-0-3d45c1782ccc@pengutronix.de>
In-Reply-To: <20260817-v2026-06-0-topic-efi_usb-v2-0-3d45c1782ccc@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::5c
X-SA-Exim-Mail-From: f.pflug@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_014719_978065_CA763A90 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Taken from https://uefi.org/specs/UEFI/2.11/17_Protocols_USB_Support.html#usb2-host-controller-protocol
    Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de> --- efi/guid.c | 1 +
    include/efi/guid.h | 3 +++ 2 files changed, 4 insertions(+) 
 
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
X-Stat-Signature: r5bmbuxdao8aq5qf355orey3gto9m38x
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
X-Rspamd-Queue-Id: C382A20153F

Taken from https://uefi.org/specs/UEFI/2.11/17_Protocols_USB_Support.html#usb2-host-controller-protocol

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



