Delivery-date: Mon, 20 Apr 2026 11:03:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEkXN-00EHfL-0W
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 11:03:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEkXM-00025A-J7
	for lore@pengutronix.de; Mon, 20 Apr 2026 11:03:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QsVDHLrdQ3HhKVm7Aa66y+SsOdpUTi7KL6xfDdTutuY=; b=S8aQgDoc7We1vE
	aiRi9i5C9qb7RR5BbSS0D2873DlfMjQkWe5WgSDvsENAfalspZ+RUFbWxsKArh15QjE3b0tMbbhpr
	LtAgbyJC06TwMKTLV+XZcJ/s0TM9QBrQ9ouyUZYryUpNQWqw54RqgJiuO/BR6l3d4YiUh0tM/XdXv
	ypgMrV/1TIQJVFzGfYaNcBLAjFV7+1xCTt5gInqqIw8gQGrLZVGlrowHNSyM9v4p3gN8oek2tFJQx
	s8bt7JG/HibHkKo4SaYibGkqJdfytbSo0u4mm1ceQYg+HzXE/woYCldQUba2zTopO1ZUHt39IF8nZ
	RZKoFquIlMNMJ6D/US5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEkWP-00000006eDx-08IH;
	Mon, 20 Apr 2026 09:02:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEkWL-00000006eCU-0yPr
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 09:02:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEkWJ-0001gH-QO; Mon, 20 Apr 2026 11:02:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEkWJ-006Iwk-1d;
	Mon, 20 Apr 2026 11:02:19 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEkWJ-00000006TEi-1eKH;
	Mon, 20 Apr 2026 11:02:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Apr 2026 11:02:16 +0200
Message-Id: <20260420-usb-typec-stusb160x-v1-0-5875bbae80ab@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJjr5WkC/x2MQQ5AMBAAvyJ7tkkVDb4iDm1t2QvSRYj4u8Zt5
 jDzgFBkEuiyByKdLLwuSYo8Az/bZSLkMTlopY2qtMJDHO73Rh5lT1wYdaENvnKla5rW1pDKLVL
 g67/2w/t+3uQAVWUAAAA=
X-Change-ID: 20260420-usb-typec-stusb160x-afc4b3b889a5
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776675739; l=1106;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=3LYRh+zpuaCPPP/nUtM/g2wgMc8iaROCguye49C4YIA=;
 b=2CL2/G4ZynAv2zfx6HHb9W8LVv5MJDN4Rnqzh6Y3x9pJzchkfjyy773cnkJwqKw6hLAZlZU2S
 aRT6eIDlBHJAaTOl2b7oi4e6lnPWaawGSGAkJj3ewdrg6fuG7PGiIjG
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_020221_338118_3FC91571 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
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
Cc: "Claude Sonnet 4.6" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] usb: typec: STUSB160x support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a driver for the STUSB160x typec controller. Also added is
support for setting the USB data role according to the setting the
typec controller is in. This way we don't have to set otg.mode manually
anymore for devices which have a typec controller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (4):
      usb: otg: Add function to set dr_mode
      usb: typec: wire USB role changes to OTG device
      usb: typec: add typec_find_port_power_role() and typec_find_pwr_opmode()
      USB: typec: Add STUSB160x driver

 drivers/usb/otg/otgdev.c      |  20 ++
 drivers/usb/typec/Kconfig     |   9 +
 drivers/usb/typec/Makefile    |   1 +
 drivers/usb/typec/class.c     |  88 +++++++
 drivers/usb/typec/stusb160x.c | 572 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/usb/typec.h     |  16 ++
 include/linux/usb/usb.h       |   1 +
 7 files changed, 707 insertions(+)
---
base-commit: 7f4d6a825f65861c43771e713ac3ce509dc9e49b
change-id: 20260420-usb-typec-stusb160x-afc4b3b889a5

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



