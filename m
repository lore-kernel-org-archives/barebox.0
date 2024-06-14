Delivery-date: Fri, 14 Jun 2024 15:36:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI76x-005x63-2r
	for lore@lore.pengutronix.de;
	Fri, 14 Jun 2024 15:36:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI76x-0002CF-CC
	for lore@pengutronix.de; Fri, 14 Jun 2024 15:36:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=H3R3cHOr5o+82+dOosGrwGV0daYzBSCbbQKIzioz8t4=; b=y6d8Op8zvVp33FNt0Mtk4rHntU
	vgVIXB+FQ9P/1oO6ktYAWd77gCokN5LPyztzf24qbM6VVqQdyi1IwxVLwjacBmtU4FLGWZG2mvadQ
	bEbwbkb6b/FbTPM0dro+rlysBYNasS74UFoIb+NicgJMj+fJTdnr31ZektMeN232cmxGHKv70uElc
	kxI6jCbhK9ssBqljMNHbX84wCLMhT2X+/ZkAK9akzgJjYhBwH2KfuMYAqZ5gCEXQYYPJaaZen6MdT
	59I0G5B06xaCtDUHXXyo5v0xaEOSHuFOk8GDwZNZqOwkrHbAtqVxh49KPAhM0/cF/vYqhLBlq48Qj
	hgJrMDNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI76L-00000002tK4-03Px;
	Fri, 14 Jun 2024 13:36:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI768-00000002tDO-0QkL
	for barebox@lists.infradead.org;
	Fri, 14 Jun 2024 13:36:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sI764-0001yf-Cs; Fri, 14 Jun 2024 15:36:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sI763-002HQz-Vc; Fri, 14 Jun 2024 15:36:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sI763-00AI7X-2o;
	Fri, 14 Jun 2024 15:36:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 14 Jun 2024 15:36:00 +0200
Message-Id: <20240614133603.2452891-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_063608_202396_05ACB83F 
X-CRM114-Status: UNSURE (   7.94  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/3] mtd: nand: trim down NAND layer a bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The NAND layer has become bigger with the last update causing size
constrained configs like am335x_mlo_defconfig to fail because the binary
gets too big.  Squeeze some bytes out of the binary space for such
configs by disabling some unneeded features.

Sascha Hauer (3):
  mtd: nand: Kconfig: whitespace cleanups
  mtd: nand: make exec_op optional
  mtd: nand: make interleaved placement optional

 drivers/mtd/nand/raw/Kconfig     | 33 +++++++++++++++++++++-----------
 drivers/mtd/nand/raw/internals.h |  5 +++++
 drivers/mtd/nand/raw/nand_base.c |  2 ++
 3 files changed, 29 insertions(+), 11 deletions(-)

-- 
2.39.2



