Delivery-date: Tue, 30 Jun 2026 14:41:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weXmA-00BSyE-39
	for lore@lore.pengutronix.de;
	Tue, 30 Jun 2026 14:41:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weXmA-0000yL-5R
	for lore@pengutronix.de; Tue, 30 Jun 2026 14:41:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6GpNoLwmj0OEqZ0fSlhBZoAKwFj5Q+wcfmDTVI9t3g4=; b=ppLncRiz9zyVFgKKuDjxwxoFK/
	eJB/bu69UByc2bCHxIZE+Hr/Hbdst0JHACitGB+VcnfEyRUCJQDQuyuG8bcd2aN67mXVFT6+f9UUo
	97i48pUgUh/GH6cIBq5Xt2BPNNPUV4ENygv13bTE+Uz+rOBUZi2FrXbcx8aTuO7m1/A6+1utLiYvs
	uqcejSNibcP24yiDH+a0wR4KKwV2ITAZWFaS5augw+/9FysKVxxywvoiTrWdB+aTTp2X3fUL1uj5s
	vdldWFs+Xdgtm+R3gpIQwimpe05y8sm92Ld41WTeJHqkILzmbCop4ES1YQ8c8S/CpLgMlQEuVnsBV
	KDGJ5OTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weXkz-0000000H0ox-23i1;
	Tue, 30 Jun 2026 12:40:05 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weXkv-0000000H0mA-39PH
	for barebox@lists.infradead.org;
	Tue, 30 Jun 2026 12:40:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 068E7200F9E;
	Tue, 30 Jun 2026 14:39:58 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1weXkr-005PmU-2q;
	Tue, 30 Jun 2026 14:39:57 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1weXkr-000000032ZD-3JDn;
	Tue, 30 Jun 2026 14:39:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Jun 2026 14:39:54 +0200
Message-Id: <20260630-usb-disk-alias-v1-0-d23318bcb684@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABq5Q2oC/x3MwQpAQBCA4VfRnE3tjmx4FTksBhOhnUht3t3m+
 B3+P4JyEFZosgiBb1E59gSbZzAsfp8ZZUwGMuSMKwxe2uMouqLfxCtWpSGyVNuaJkjRGXiS5x+
 23ft+gN43NmAAAAA=
X-Change-ID: 20260630-usb-disk-alias-85022129192f
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782823197; l=988;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ZmYDgXCUZPJ9qg8qnGHM/Wxz63f4aHA0C82AzRebaeM=;
 b=B5es4PyMrWXvbQiMmM+EH0j0wiopm5CcwDzIvrhy27iMXLyIaXcvICWPAZSA3z5j5H5T/7Tl7
 lTsKxN7bQH6BvAgSaRY09D+k/eCpXzoKCEUCbjVTmzUQM8JeLtFTcO8
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_054001_949805_EB15903D 
X-CRM114-Status: UNSURE (   6.39  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] USB: storage: add usbdisk alias for USB storage
 devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is an alternative approach for:

https://lore.kernel.org/p/20260623142646.87173-1-chalianis1@gmail.com

Instead of adding a new Kconfig variable we add a /dev/usbdiskx alias
for each USB storage device. This allows us to easily use the first USB
storage device instead of stumbling upon other devices which are also
registered as /dev/diskx.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      fs: devfs: make cdev_find_free_index() return 0 instead of an error
      usb: storage: add usbdisk alias for USB storage devices

 drivers/ata/disk_ata_drive.c |  2 --
 drivers/hw_random/core.c     | 13 +++----------
 drivers/usb/storage/usb.c    | 17 ++++++++++++-----
 fs/devfs-core.c              | 10 +++++++++-
 4 files changed, 24 insertions(+), 18 deletions(-)
---
base-commit: 18599acfcbf38e95edc605f89e257e32f67d0ac4
change-id: 20260630-usb-disk-alias-85022129192f

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



