Delivery-date: Sat, 24 Aug 2024 22:03:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shwz6-00D0nj-1P
	for lore@lore.pengutronix.de;
	Sat, 24 Aug 2024 22:03:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shwz5-0005nT-Qs
	for lore@pengutronix.de; Sat, 24 Aug 2024 22:03:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+5iYOoPxZaeOKqyIuPFrFBWO3r090wUEAA2qUwW9W0g=; b=LMgfUaYsxkPOcQVw19e94GV05L
	yM1QNQd/d9h2lcfZvHKvomrxuQbUZAjgpLxDOe6CSJi++ARyHcr0RNgk/1hYM7d1oox+Ees7P9X4f
	0L/a5Uv6JF/uI+qOpF4OAmiTgLng1jgJVShuGym07rQYjZr7kvS/GWnU4w8DDlVEF3/rW5sOqzDS+
	35xZ9vmfOqYMFk++CODO38lC50uWJ8pdSkBwqwhr7HfH24lQjeS9Fyx/txTRa5JyLV1oP+IFQ9c4Q
	rDacH/pPso+ovNEZ60wSJxBCX5DK68YIGPo7z0i6xj0t8Cu47xfhU/6opMrfrid7VqA0QpIBR8WDS
	g5J+K2ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shwyd-00000002qO6-1Tsm;
	Sat, 24 Aug 2024 20:03:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shwyZ-00000002qLZ-2m7B
	for barebox@lists.infradead.org;
	Sat, 24 Aug 2024 20:03:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shwyX-0005XU-Ur; Sat, 24 Aug 2024 22:03:05 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shwyX-002mrX-He; Sat, 24 Aug 2024 22:03:05 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shwyX-0093zG-1U;
	Sat, 24 Aug 2024 22:03:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 24 Aug 2024 22:03:04 +0200
Message-Id: <20240824200304.2160266-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240824_130307_725250_5699E291 
X-CRM114-Status: GOOD (  10.74  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] doc: bcm283x: Mention arm_64bit config.txt key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Guide users into the right direction by mentioning what config.txt
key is needed to start barebox in 64-bit mode.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/bcm2835.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
index f7ab723d633a..a05ae3c6f2ed 100644
--- a/Documentation/boards/bcm2835.rst
+++ b/Documentation/boards/bcm2835.rst
@@ -29,8 +29,8 @@ over SD or Ethernet on the Raspberry Pi 4.
      ``barebox.img``.
 
      For 64-bit, only ``images/barebox-raspberry-pi.img`` will be created, which is usable
-     for both Raspberry Pi 3 and Raspberry Pi 4 in 64-bit mode. No support for the Raspberry
-     Pi 5 has been contributed yet.
+     for both Raspberry Pi 3 and Raspberry Pi 4 in 64-bit mode (``arm_64bit`` in ``config.txt``).
+     No support for the Raspberry Pi 5 has been contributed yet.
 
      The ``images/barebox-raspberry-pi.img`` is expected to be the sole image for 32-bit
      also in the future. It contains the device trees of all supported (and enabled) variants
-- 
2.39.2



