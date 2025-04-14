Delivery-date: Mon, 14 Apr 2025 08:32:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DNA-000WxX-1B
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:32:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DN9-0001Mj-NN
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:32:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cKlmBkKVaEdsXiDXiSYEA4W2H8T1dFxRmGDRSBFW4+U=; b=f/BDLV3Y9B+V/qP1te6oc+iRUu
	Z3rxhKj9EYF5TcRpnS2cqB93f1D603OulEdti7iIXQzT0YJxDdloqqptirjPY7SbzUQkGIDxinZHm
	LexO4f9WXUGIUmOQJ5fweItvVtV4fsaYl0QjddzVafG6xasLBb751rVx8cbgVtyqzan8aM3yAN/Lj
	G7mIG1/LcZcqm77CU4LoZXcMqrl5/tKnAEW5APc0Xf9DzECeevsiRXi61UFlkM6Zt/835nRWPncbC
	ye2OLgoEFtTvMhzyVBohpZiNRUcPDIyg0HGTLQj+BiIqpIycQnNGDM17FX3x2AzgJIsN/2ZN4QYY5
	AYBq79Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DMg-00000000nu2-1xYM;
	Mon, 14 Apr 2025 06:32:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DMI-00000000npg-3Qhe
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:31:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-0000ky-Ic
	for barebox@lists.infradead.org; Mon, 14 Apr 2025 08:31:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-000ChS-1F
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 08:31:53 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-00BUi8-0v
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 08:31:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 14 Apr 2025 08:31:34 +0200
Message-Id: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_233154_859501_71AE2CD9 
X-CRM114-Status: UNSURE (   8.42  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/18] boot: improve cdev alias and blspec support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Building on past top of past bootscan and cdev alias infrastructure in
next, enable the following:

   - Favoring entries in GPT XBOOTLDR partition and EFI system
     partitions, like we already do for MBR XBOOTLDR partition

   - Allow state backend and other DT bindings to point at a
     barebox,bootsource node to allow same state DT description
     to work across different boot media

Ahmad Fatoum (18):
  cdev: make cdev_find_child_by_gpt_typeuuid external
  cdev: constify cdev_find_child_by_gpt_typeuuid's guid_t pointer
    argument
  partition: efi: respect DPS_TYPE_FLAG_NO_AUTO flag
  blspec: iterate over all XBOOTLDR partitions
  blspec: support GPT XBOOTLDR partition
  blspec: collect bootloader spec entries from ESP
  cdev: alias: add support for partition links
  cdev: do not dereference partname for non-partitions
  cdev: use common cdev_free helper internally
  cdev: implement devfs_create_link in terms of devfs_create
  misc: storage-by-uuid: consider only first diskuuid match
  misc: storage-by-uuid: prepare for generalizing to different aliases
  misc: storage-by-uuid: rename to storage-by-alias
  misc: storage-by-alias: switch over to using cdev aliases
  misc: storage-by-alias: add support barebox,bootsource
  misc: storage-by-alias: register as link to main cdev
  cdev: constify cdev_readlink argument
  cdev: follow links in cdev_find_child_by_gpt_typeuuid

 commands/boot.c                 |   1 +
 common/blspec.c                 |  75 +++++++---
 common/bootscan.c               |  11 +-
 common/cdev-alias.c             |  53 ++++---
 drivers/misc/Kconfig            |  21 ++-
 drivers/misc/Makefile           |   2 +-
 drivers/misc/storage-by-alias.c | 236 ++++++++++++++++++++++++++++++++
 drivers/misc/storage-by-uuid.c  | 202 ---------------------------
 fs/devfs-core.c                 | 104 ++++++++++----
 include/block.h                 |   1 +
 include/bootscan.h              |   5 +-
 include/driver.h                |  20 +--
 12 files changed, 440 insertions(+), 291 deletions(-)
 create mode 100644 drivers/misc/storage-by-alias.c
 delete mode 100644 drivers/misc/storage-by-uuid.c

-- 
2.39.5



