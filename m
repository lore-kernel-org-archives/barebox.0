Delivery-date: Mon, 30 Jan 2023 18:59:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYR7-007rNx-GP
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 18:59:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYR4-0004Hd-9l
	for lore@pengutronix.de; Mon, 30 Jan 2023 18:59:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=d5PCmllOpOj9JpleP640Pi8Ff/51xqDlI5K+RAO35T4=; b=SqBY/nA+N/aRDLbiSdKxDCI99G
	VbHIatCi+6Jwzyhr3T3OqUeNgyJMLfNwHdrTQi5ZlpFunBS4u0qJziGekiDVF0FWLngtqC+5s8srg
	fnfCdoy9p0hbE88yVv4G29rGmssFPCxR2gMxA2KS9PAJSYDySJEV0M5YLv3tn06GdUO9JH2BTudf9
	Yd5HugrigEhky/gul2LyulT5lyLlLeBwUO16Xu1AGGWxa1aO6PBs8SAhc+O6wT+VIPvEBFcIiWwZE
	Yml3wBUxuSS3Wtx6twJfwwkX2vH1vFY40/dYP4apw/TI5Z0Sw8cTZUGbhBGfqomOru6X7P0vJGcJR
	OqE03qkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMOZU-002XdW-UZ; Mon, 30 Jan 2023 07:27:21 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMOZQ-002Xbm-C7
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 07:27:17 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 88A531C0002;
	Mon, 30 Jan 2023 07:27:11 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>,
	Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Jan 2023 08:27:03 +0100
Message-Id: <20230130072707.2423294-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_232716_585439_792E21B1 
X-CRM114-Status: UNSURE (   9.18  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/4] video: add support for QEMU ramfb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

QEMU's ramfb is a very simple Qemu fw_cfg protocol, where the guest
need only write a video settings structure to /etc/ramfb to get
DMA from the framebuffer working. Add a driver for this on top
of a newly added character device interface.

Adrian Negreanu (1):
  video: add support for QEMU ramfb

Ahmad Fatoum (3):
  fs: devfs: implement cdev_fdopen
  asm-generic: avoid compiler warnings due to PCI_IOBASE
  firmware: add QEMU FW CFG driver

 drivers/firmware/Kconfig         |  10 +
 drivers/firmware/Makefile        |   1 +
 drivers/firmware/qemu_fw_cfg.c   | 307 +++++++++++++++++++++++++++++++
 drivers/video/Kconfig            |   6 +
 drivers/video/Makefile           |   1 +
 drivers/video/ramfb.c            | 191 +++++++++++++++++++
 fs/devfs-core.c                  |  20 ++
 include/asm-generic/io.h         |   3 +-
 include/driver.h                 |   1 +
 include/filetype.h               |   1 +
 include/uapi/linux/qemu_fw_cfg.h | 100 ++++++++++
 11 files changed, 640 insertions(+), 1 deletion(-)
 create mode 100644 drivers/firmware/qemu_fw_cfg.c
 create mode 100644 drivers/video/ramfb.c
 create mode 100644 include/uapi/linux/qemu_fw_cfg.h

-- 
2.38.1



