Delivery-date: Mon, 31 Aug 2026 15:21:47 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x11xK-009I0M-0m
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 15:21:47 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B68232024A9
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 15:21:42 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=cFeyAeqx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LQt4haAxM6YR7Ll7g8wdPDzkpnPS2T1UmefAmdSLLcU=; b=cFeyAeqxgrr/Yuw/sjic8HJXz7
	ps0ZUhGcL5O09lbO+Q2oB/veaonmAuXalT69p+mHoITOb0DHg64QLm2CtAc4A3cR4jdSjhOLlTct4
	FbgIZSwg8U5ZUbXOfsHF5mU6TZKnb3OFJ3Eh+FSNQiG/iWBAwAgOUAwQNrf5ThuXwSz+ZY1t4cqYR
	nVivZJzHSJ80g269RMR/Qoc2F8Si91seCyP5C0N4DOdNV1PYYsBAdsZwyg0AUPm7KO5s4KP4+MQ3V
	VXITuS+w3AiXz9kj7ilpKpk28cR2JtnbdBIGhS/d5l7EL/WcVExlJziC8fcpQgcbrAnsGgD3Jn32A
	dQBiI0wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11vy-00000009Nwx-2G1N;
	Mon, 31 Aug 2026 13:20:22 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11vs-00000009NtB-31qs
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 13:20:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B8009200700;
	Mon, 31 Aug 2026 15:20:10 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-004GQx-1j;
	Mon, 31 Aug 2026 15:20:10 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-0000000H7Av-1tRG;
	Mon, 31 Aug 2026 15:20:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 00/13] USB: Make USB devices removable
Date: Mon, 31 Aug 2026 15:20:07 +0200
Message-Id: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAId/lWoC/x2MSQqAMAwAvyI5G2haFPUr4kHbqAE3WhVB+neLx
 4GZeSGwFw7QZC94viXIviWgPAM799vEKC4xaKVLVRnCKwzokmgZFxn5lJWRLGljilo7RZDKw/M
 oz39tuxg/WGMcCGUAAAA=
X-Change-ID: 20260831-usb-device-lifetime-1c1233592d01
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788182410; l=2484;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=aKHpEBXD7ZMZZjPsLBb/+ikNCS5sVSb4RC5BuM9Jg7E=;
 b=fPDD8GCKqKoI7qwBuI4X1YWp+muwY0yr5X+HkHlmDERSr3UhMyOexWdQlTxRKv180Mldm75jG
 UnOKsrpF48/AXqBc0h6Ypv3D/8RefNWZdQq0ob7/hWGEDsEIYCBXyaX
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_062016_926732_B30CF4B7 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  So far we assumed that USB devices are not disconnected during
    barebox lifetime, so we would only ever add to the list of devices. This
   series relaxes this assumption. USB storage devices can now be d [...] 
 
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
X-Stat-Signature: 9nk36a1t95ht3pkp54y4smypbfxih3kt
X-Rspamd-Queue-Id: B68232024A9
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
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
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

So far we assumed that USB devices are not disconnected during barebox
lifetime, so we would only ever add to the list of devices. This series
relaxes this assumption. USB storage devices can now be disconnected at
runtime and the disk devices associated with them properly unregister
and filesystems are unmounted. Accesses to files on dead devices are
caught and return an error. Re-plugging USB storage devices works as
well. We still don't detect changes to the USB topology automatically,
but a subsequent "usb" command will bring the barebox topology up to
date with the hardware state.

This has so far only been tested with USB storage devices, USB network
devices and keyboards likely still need some fixes, but as we assumed
USB devices to be non-removable we can still see this series as a new
feature currently limited to USB storage devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (13):
      usb: don't report device removal after the device name is gone
      fs: devfs: count an open partition as an open device
      block: propagate errors from blockdevice_unregister()
      fs: add cdev_umount_all()
      block: add blockdevice_unregister_removed()
      usb: storage: tear the disk down properly on disconnect
      usb: hub: cancel pending port scans of a removed device
      usb: reuse the addresses of removed devices
      usb: hub: detect disconnected devices
      usb: don't keep a dangling root device on enumeration failure
      usb: hub: limit the number of ports to USB_MAXCHILDREN
      usb: detect unplugged devices on transfer errors
      usb: storage: stop talking to a device that is gone

 common/block.c                  |  36 +++++++++-
 drivers/usb/core/hub.c          |  91 +++++++++++++++++++++++---
 drivers/usb/core/usb.c          | 141 +++++++++++++++++++++++++++++++++++++---
 drivers/usb/core/usb.h          |   2 +
 drivers/usb/storage/transport.c |   4 ++
 drivers/usb/storage/usb.c       |  31 ++++++++-
 fs/devfs-core.c                 |  14 +++-
 fs/fs.c                         |  31 +++++++++
 include/block.h                 |   1 +
 include/fs.h                    |   1 +
 include/linux/usb/usb.h         |  16 +++++
 11 files changed, 344 insertions(+), 24 deletions(-)
---
base-commit: 39ce98f9cb1cfd4a0601147a4dffa2319d73fc3f
change-id: 20260831-usb-device-lifetime-1c1233592d01

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



