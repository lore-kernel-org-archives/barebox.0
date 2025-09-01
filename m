Delivery-date: Mon, 01 Sep 2025 10:02:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uszUe-006q3T-2y
	for lore@lore.pengutronix.de;
	Mon, 01 Sep 2025 10:02:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uszUd-0000cq-MG
	for lore@pengutronix.de; Mon, 01 Sep 2025 10:02:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z1NcSmJo11AeXzIFGWa0Zu6AxdUCfrpaPpERCNz8ioU=; b=Gg1ZwBNMY5PvIw
	CxPtQFyurAA3DLuEwX4v+9DlzyXLhBgKOCw0/MErBj6ev1eVv/tk8lbWoaxmxdpo1VJYmlhRCVfxG
	wpuRPPQeeDe6004S5tb0spBdi3R+kCW77GobnE0MFMnPe6lVNXxijd7Anbg6epQb1FoN7u9xyQGeX
	GwQzFOmPNOzMLFGpToik2MuhUgqExA4ZUwZEw8ek7uOExN+99gT9GlQma1sAWYjGDJz0rUtHRq7OQ
	N1V4cbxF5m3T4NPWS5TRsGP6Jhk0qF1PmHvdTZiihMZVMc5xBGpW4JVIiwr1Y1QlGOqNWV6eF6S7F
	yiDIlKMprhYXnobDG/mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uszTz-0000000BVv7-44At;
	Mon, 01 Sep 2025 08:01:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usz4u-0000000BSFV-2bcc
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 07:35:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1usz4l-0008Vf-Fz; Mon, 01 Sep 2025 09:35:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1usz4l-003BNn-0j;
	Mon, 01 Sep 2025 09:35:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1usz4l-00000000kLH-0eCT;
	Mon, 01 Sep 2025 09:35:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 01 Sep 2025 09:35:28 +0200
Message-Id: <20250901-imx6-usb-uuu-v1-0-1194bb6135ae@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMBMtWgC/x3MQQqAIBBA0avErBtQKaGuEi3SxppFFoohiHdPW
 r7F/wUiBaYIc1cg0MuRb98g+w7sufmDkPdmUEKNYhIS+coaUzSYUkJlzCCctaSVhpY8gRznf7e
 stX6wLC5LXgAAAA==
X-Change-ID: 20250901-imx6-usb-uuu-2bb40fcce626
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756712139; l=1532;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=8KgSBj0piqgeQa1tyflSPPq+GBxC2DBop0XHcgLEXhQ=;
 b=8N51DFXf8V3IOcrZ8qRr1dPGp12idMa+CKEKVHDpuHg1xDnXtpkxHAa69vNldkTMinecawuh3
 SOODo0KQTs1AkEaQgdqdpw2/U7d43n0IjiYT6mf084I/Fl+Z1mVza60
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_003548_663476_BD0E341C 
X-CRM114-Status: GOOD (  12.67  )
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
Cc: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] i.MX6 uuu support for signed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far uploading signed images via USB on i.MX6 requires using the
barebox included imx-usb-loader. This series adds a new image target for
i.MX6 which generates images compatible with NXPs uuu tool.

Background is that our signed USB images contain a DCD table to setup
DRAM. We interpret the DCD table on the host and setup the DRAM using
register-write commands. The DCD table in the image must then be zeroed
so that the i.MX6 ROM doesn't execute it again (thus disabling DRAM
during that process). To overcome the signature check we must sign the
image with a zeroed DCD table.

The uuu tool uses another approach. Here the DCD table is executed by
the ROM instead of the host, so the image doesn't need to be modified,
but instead the DCD table must be signed as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Matthias Zoechmann (3):
      scripts: imx: fix string in further auth block
      scripts: imx-image: support DCD_WRITE on closed dev
      mach-imx: Kconfig: add option for image with dcd auth block

 arch/arm/mach-imx/Kconfig     |  9 +++++++++
 images/Makefile.imx           | 11 +++++++----
 include/mach/imx/imx-header.h |  2 ++
 scripts/imx/imx-image.c       | 19 ++++++++++++++++++-
 scripts/imx/imx.c             | 24 +++++++++++++++++++++++-
 5 files changed, 59 insertions(+), 6 deletions(-)
---
base-commit: b5561f3bdd4845b478e5b35aab04f1d8e71ea93b
change-id: 20250901-imx6-usb-uuu-2bb40fcce626

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



