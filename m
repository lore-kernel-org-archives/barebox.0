Delivery-date: Thu, 15 Feb 2024 08:48:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raWUH-007AVq-1e
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 08:48:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raWUG-0001S5-Ek
	for lore@pengutronix.de; Thu, 15 Feb 2024 08:48:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4glKYTEXuv8PbBjXMmWe5+FyLVoObpq7Kkbemngzj3k=; b=cwzRQ7TWh52WqzByPhjiSFfUb/
	CcCeKVq/jBlWJDkgYPBcM3yf66GSC6G+nSsAC+nCuYKzOAGGeFThGo9vhl1ThEFAyzhKCmgxSsVoH
	nNwiYG+TxeQljgHH8KrpiaZW5OmNGOGHskYVsWBg0sW8mke6j5mPjsFDXtsDYPsC8bvYarMjN9uJn
	HbtxClY2oNGSFyKSSwpBBAz30toZvNKyPvMclYBzbzWGhizmuwuSROYlKS7WBzb7wEnym/DyArLef
	qSQuwE5qJ9HL07TlwEHLkQzIylEe/wNeY/yvugXTanEkpHzBxDByXRpMIljMUcAjKb4olZPtINud1
	pDJ2LfRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raWTY-0000000FGB9-3LN3;
	Thu, 15 Feb 2024 07:48:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raWTU-0000000FG8H-118p
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 07:48:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-000174-FE; Thu, 15 Feb 2024 08:47:59 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-000qC3-2i; Thu, 15 Feb 2024 08:47:59 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTO-0041pl-39;
	Thu, 15 Feb 2024 08:47:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 15 Feb 2024 08:47:50 +0100
Message-Id: <20240215074757.960200-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_234804_304634_B6FFE695 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/7] Detect partition changes at runtime
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With this series barebox can detect partition table changes at runtime
and reparse the partition table in that case. With this it's possible
for example to write an image to a SD card and mount partitions directly
afterwards without restarting barebox.

The fastboot code is also changed to check for existing partitions when
they are actually used and no longer during initialization time of the
gadget. With this it becomes possible to expose a full device via
fastboot and also some not yet existing partitions. When the full device
is written to one can then write to a (newly created) partition directly
afterwards.

The reparsing of the partition table only works when none of the
partitions are mounted or otherwise opened. When a partition is open
when the partition table changes, then barebox will continue with
the old partition table just like Linux does.

Sascha

Sascha Hauer (7):
  fs: move cdev open count to cdev_open()/cdev_close()
  common: partitions: efi: fix memory leak
  partition: allow to reparse a partition table
  block: reparse partition table when necessary
  fastboot: pass list to fb_addvar()
  fastboot: add function to free a list of fastboot variables
  fastboot: evaluate fastboot partitions when used

 common/block.c          | 30 +++++++++++++++++++--
 common/fastboot.c       | 59 ++++++++++++++++++++++++++---------------
 common/partitions.c     | 20 ++++++++++++++
 common/partitions/efi.c | 10 +++----
 fs/devfs-core.c         | 13 +++++++--
 fs/devfs.c              |  4 ---
 include/block.h         |  2 ++
 include/disks.h         |  1 +
 8 files changed, 104 insertions(+), 35 deletions(-)

-- 
2.39.2



