Delivery-date: Wed, 12 Aug 2026 18:38:26 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuByD-002OKf-1I
	for lore@lore.pengutronix.de;
	Wed, 12 Aug 2026 18:38:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EAF26201CE0
	for <lore@pengutronix.de>; Wed, 12 Aug 2026 18:38:21 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ijomQr3I;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ggnr+qWAS3QVC9lEf4srv/T6z9dU8SKfq4txyLJL6s4=; b=ijomQr3I+sQwAS
	LuCoBMm3d2VsJg0/xL3F3NqesL7JHrjLzSI4XuDJhQuKdsNcZAsr+8flruQBcgoPc46rAScYUPkCA
	a/IiUg9AmQp7Aqd260VcRBg2piMwwHQF+NiFWkYjFWskWf0Rhh8ncTZu//9qxe8Q8jlq3RSa8/nI0
	TuSHVjMmHiS1Do8QAwm1hTKM++9aStJzIKZOIJA4+d4/wNZcpuw0hZET+IAGk18VonieQtZwXhzSc
	rhpNq5kPBIt1RxbPhE/d+2SUYyIClTpoPsvKcdTADmIhi6UCnw7RnzjxxA1UkIsx60W5ufmPab1tw
	SLEHn/vm7toyf1lzhpbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuBwn-0000000GbDd-1iw8;
	Wed, 12 Aug 2026 16:36:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuBwk-0000000GbAz-0nlo
	for barebox@lists.infradead.org;
	Wed, 12 Aug 2026 16:36:56 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wuBwf-0003Qh-O6; Wed, 12 Aug 2026 18:36:49 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Subject: [PATCH 0/5] Add support for USB-EFI devices in EFI Playload
Date: Wed, 12 Aug 2026 18:36:48 +0200
Message-Id: <20260812-v2026-06-0-topic-efi_usb-v1-0-9d2573c29f21@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACChfGoC/x2MQQqAMAwEvyI5G2iLVPErImI1ai62tFoE8e9GY
 Q87DLs3JIpMCdrihkiZE/tdQJcFTNu4r4Q8C4NRxqpGG8xfQyXBwweekBYezuTQkKttpZ11VoH
 MQxRz/ddd/zwv+BdgimoAAAA=
X-Change-ID: 20260812-v2026-06-0-topic-efi_usb-2eb7641b6b60
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::5c
X-SA-Exim-Mail-From: f.pflug@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_093654_251191_43D08128 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  When running as EFI payload, barebox does not have control
    over the USB bus, but instead the BIOS will have enumerated and set up devices.
    The UEFI will also expose an API to access the devices, with one handle per
    USB interface. This driver will create an USB-Host per device and initialize
    the device and pass it onto barebox for driver [...] 
 
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
X-Stat-Signature: k5ksx3yqapxr6i99gpzneq9oyjapykpo
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
X-Rspamd-Queue-Id: EAF26201CE0

When running as EFI payload, barebox does not have control over the USB
bus, but instead the BIOS will have enumerated and set up devices.

The UEFI will also expose an API to access the devices, with one handle
per USB interface.
This driver will create an USB-Host per device and initialize the device
and pass it onto barebox for driver initialization, allowing all
usb-devices to be used.

This might lead to problems where USB-Storage is handled as an USB
device as well as UEFI Block IO Storage, therefore it is not added to
efi_defconfig by default.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Fabian Pflug (5):
      efi: usb: add header for usb-efi
      usb: core: make usb_set_maxpacket_ep public
      drivers: usb: host: efi: add efi io driver
      efi: guid: add guid for usb host controller 2
      test: x86: add test for uefi usb io

 drivers/usb/core/usb.c             |  12 +-
 drivers/usb/core/usb.h             |   2 +
 drivers/usb/host/Kconfig           |  11 ++
 drivers/usb/host/Makefile          |   1 +
 drivers/usb/host/efi-io-protocol.c | 325 +++++++++++++++++++++++++++++++++++++
 efi/guid.c                         |   2 +
 include/efi/guid.h                 |   4 +
 include/efi/protocol/usb.h         |  66 ++++++++
 test/x86/pc@efi_defconfig.yaml     |   9 +-
 9 files changed, 421 insertions(+), 11 deletions(-)
---
base-commit: 87f49b49fdd06c0de492bd2c1cd6b8c93e393029
change-id: 20260812-v2026-06-0-topic-efi_usb-2eb7641b6b60

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



