Delivery-date: Mon, 18 May 2026 12:16:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOv1W-001694-1C
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 12:16:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOv1V-00048w-KT
	for lore@pengutronix.de; Mon, 18 May 2026 12:16:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=t7Dx1AsM8ex1bucOBRvsQydYolGGSyj4fR556E6D1Iw=; b=tq6ov8ZwSneepjJAQDX60JhEKJ
	Gc4fn08XwTYkNOK0e3toUgewn3Z6yqPbG+Y85etCVw3DcvTxu7/FQouQKoapZBCX1y5pQ2GAP7znA
	XLjXc4hFFeSYtmRww+SOUxWdiXirxfojulWj1m4jq762qO3NEU2w5ipjFd1SxfvDKOf2Na3iUqDF+
	/bEmlAO2tR5G1xfNOr6N3EKcChNNlHfpU9O08epTsYIlhDzFPFhhWjxlrJEzO0nOfaGW7sts6FdBG
	xRf4b1oN5tFJdqFwBQQBP+u9LnKeVZIPoKnqhcT38u/Dlnn5MDOz0+jE0Jn4g3lR8jiXWP7u8XQcv
	6uOdXWXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuFY-0000000F0iU-0pjj;
	Mon, 18 May 2026 09:27:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuFK-0000000F0dU-17j0
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 09:26:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=t7Dx1AsM8ex1bucOBRvsQydYolGGSyj4fR556E6D1Iw=; b=EYZ/gO82p0gQaBfUIpaCYfebUQ
	XuYhzdagAJe3Te+FEPqcaYLWl9sdajtA5UABgoXxKf10P5uhqauGMmp6K2kM510NTpB9T3zTHv5Sh
	p1kS2ONgFcRX2Do5jLKT7huogOgWI0JObG5Zuh8lzDq9KrgFmJq7xYh2R1MXNItryUgZdxU3a5CY2
	Mh5bdxn8MSLq/Knx9KSN12h1oCS8CLmHQmegNMaT6nG6sevnil5yI9hNvB7NUf7L7oXW8tOG59TBJ
	k27FhT/clrZo5IHl0y5PKT7IUz5df1PIFStGjyxvUzlzNhRC5/YMPnl0xQ641hBx6ljzeOuFvFNj7
	UkDgT7og==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuFE-0000000AZNE-2Yc7
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 09:26:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOuFD-0005KK-KR; Mon, 18 May 2026 11:26:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOuFC-000ZJj-3C;
	Mon, 18 May 2026 11:26:39 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOuFD-0000000CUMc-23gw;
	Mon, 18 May 2026 11:26:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 May 2026 11:26:37 +0200
Message-Id: <20260518-k3-am62x-image-size-fixes-v1-0-ab723d79922d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAE3bCmoC/x3LSwqAMAwA0atI1gZsi0W8iriommoQPzQgRfHuB
 pfDYx4QSkwCbfFAoouFj13DlAWMS9hnQp60wVbWV7VpcHUYNm8z8hZUhW/CyJkEXYjGUqwH5x3
 ofyb6Qfeuf98PA+xRIGsAAAA=
X-Change-ID: 20260518-k3-am62x-image-size-fixes-3af12ef5b363
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779096399; l=1076;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=LJbtlX1bzeFrQyq2TTAahZpsg7RgQqJ6WaM631U7Yo8=;
 b=8tAD55Ym2ZPppuMl7soBfmT20qInSGDRKWVKGweqqy15VOqLV17JU10CJ5cJQMvwSzij9Yk0+
 syWDlSyEDVLBJLX+qHw8T3hZpc9PBrNNX85bK2Zar8w0+Zqh+pjMVnk
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_102641_087020_469D3711 
X-CRM114-Status: UNSURE (   8.46  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] k3: am62x: image size fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the current configuration the initial barebox image for the AM62x
is limited to 0x3a800 bytes. the current image fits well into it, but
Let's make a bit more space available by moving DMDATA up to offset
0x3d000 giving us another 10KiB for the initial barebox image. Also set
CONFIG_BAREBOX_MAX_IMAGE_SIZE in the k3-r5_defconfig to 0x3d000 to not
exceed this limit unnoticed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      ARM: k3: am62x: move stack to end of SRAM
      ARM: k3: am62x: make more space for r5 barebox binary
      ARM: k3: k3-r5_defconfig: limit image size to maximum available space

 arch/arm/boards/am625-sk/entry-r5.S   | 2 +-
 arch/arm/boards/beagleplay/entry-r5.S | 2 +-
 arch/arm/configs/k3-r5_defconfig      | 2 +-
 images/Makefile.k3                    | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)
---
base-commit: c7bdd78be7cc9449a49a429a342c83f8085b1475
change-id: 20260518-k3-am62x-image-size-fixes-3af12ef5b363

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



