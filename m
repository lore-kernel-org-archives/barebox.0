Delivery-date: Tue, 03 Aug 2021 11:46:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAr05-0005oE-5L
	for lore@lore.pengutronix.de; Tue, 03 Aug 2021 11:46:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAr03-0000d3-3Z
	for lore@pengutronix.de; Tue, 03 Aug 2021 11:46:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PwXCtkguZx5f9nvdi+LQvolneNZshrEtjGdjZx3zja4=; b=3S6ASK3qlGxogz
	dqkh0TNoH0+1/TMxc9q8zct4PeyFrnvTuPYJb8HaA3sIjrJ/3dp1iv2U9ZzDD0d9NTdTOnaQq8uOP
	RNVaWTXGOJYzmX4WbduTWyZPWIUyrTCWBdvHLEUD0eYEE2mvhmYGAXCVhKmcVRIDCfSKKuWegsdso
	G5yPaXvroI7zw9BXs1CDOxufJu3UtlNGtKElSj4etGhsLVFSX/A2+tf9naygXJTfWGm8hHS4hQ8hz
	onXzrqFqddNsKnXUYWq8Og8fHPfC0rCF0pIpU9tH7bAuzr/5CWgzdn5D0Zj9mBBF3PG8dTsPyNiJj
	Y3lTXMYwk57hUMTXNqYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAqyQ-001r22-Qb; Tue, 03 Aug 2021 09:44:34 +0000
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAqyK-001qyv-R7
 for barebox@lists.infradead.org; Tue, 03 Aug 2021 09:44:30 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 716488A109; Tue,  3 Aug 2021 11:44:23 +0200 (CEST)
Received: from localhost (unknown
 [IPv6:2001:9e8:217d:6102:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 7FD118A0FA;
 Tue,  3 Aug 2021 11:44:21 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  3 Aug 2021 11:44:10 +0200
Message-Id: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_024429_084031_71C491CE 
X-CRM114-Status: GOOD (  11.92  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/8] XN Support for reserved-memory areas
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is v2 of a series to properly handle reserved memory areas with the
no-map property. This allows us to early load OP-TEE, while also
prohibiting the CPU from speculating into the OP-TEE area by mapping the
OP-TEE area as uncached and eXecute Never. We also parse the device tree
reserved memory areas from the DT passed into barebox proper, to also
remove no-map entries from the MMU there.

Rouven Czerwinski (8):
  of: reserve: add xn flag mem entries
  of: add of_get_reserve_map stub for !CONFIG_OFTREE
  ARM: mmu: use reserve mem entries to modify maps
  of: add flag to not create resmem DT entries
  of: add reserved_mem_read initcall
  pbl: fdt: add support to parse reserved mem
  ARM: mmu-early: map no-map entries XN & uncached
  PBL: enable LIBFDT for OP-TEE early loading

 arch/arm/cpu/mmu-early.c       |  13 +++++
 arch/arm/cpu/mmu.c             |  34 ++++++++++-
 arch/arm/cpu/sm.c              |   2 +-
 arch/arm/cpu/start.c           |   2 +-
 arch/arm/mach-layerscape/ppa.c |   2 +-
 common/Kconfig                 |   1 +
 common/bootm.c                 |   3 +-
 drivers/of/Makefile            |   1 +
 drivers/of/fdt.c               |  16 +++--
 drivers/of/reserved-mem.c      |  43 ++++++++++++++
 drivers/video/fb.c             |   3 +-
 drivers/video/simplefb-fixup.c |   2 +-
 fs/pstore/ram.c                |   3 +-
 include/of.h                   |  14 ++++-
 include/pbl.h                  |  25 ++++++++
 pbl/fdt.c                      | 103 ++++++++++++++++++++++++++++-----
 16 files changed, 237 insertions(+), 30 deletions(-)
 create mode 100644 drivers/of/reserved-mem.c

-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

