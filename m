Delivery-date: Tue, 19 Dec 2023 14:19:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFa0B-004ZtP-36
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 14:19:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFa0B-000875-Em
	for lore@pengutronix.de; Tue, 19 Dec 2023 14:19:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XEr7SG+CIdfZufdZGY4rWnKWMMoj6SJPqD/T4WaQ2TA=; b=lJVpwxQkvcIA7emsDqDaI0paAl
	kEedDFh/WWzs410zYAb5g71gYfahDSWwCWNZLSTdx0r7z37gHqjvWHsBU54rOTHQQRHbRZqtmFSid
	WNA/hm0pn3bQoTgL21/t6G0sB5NhkyfU9FUZjkxHodaKT6nIwxU/SLiO28WaKacIMEU1wI92qwVnR
	+lYdbj/wRmWZvckSUpsyNNibinlelfait5orDxmHVD2tN8snpmI0PQVc+ONNetvek0yXd4ekfWLXk
	hUGcQEElUQ880Rlngh7Iv2Bi1xRUX51k3eAwkhF60ulR8hQYE8HKDFje8/S/xb02WhWx05KAAfAsv
	fB7TCAPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZzE-00EAVz-2E;
	Tue, 19 Dec 2023 13:18:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZzA-00EAUw-2S
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 13:18:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZz1-0007bh-Kz; Tue, 19 Dec 2023 14:18:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZz0-0001ne-4f; Tue, 19 Dec 2023 14:18:03 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZz1-0001xC-0Z;
	Tue, 19 Dec 2023 14:18:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 14:18:00 +0100
Message-Id: <20231219131802.7475-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_051812_799297_1502CE1C 
X-CRM114-Status: UNSURE (   7.68  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/2] Layerscape LS1028a: add DDR support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The existing DDR driver can be re-used for LS1028a. We just have to swap
the endianess of the register accesses.

Sascha Hauer (2):
  fsl-ddr: remove duplicate prototype
  fsl-ddr: make endianess runtime decision

 arch/arm/boards/ls1021aiot/lowlevel.c |  2 +-
 arch/arm/boards/ls1046ardb/lowlevel.c |  2 +-
 arch/arm/boards/tqmls1046a/lowlevel.c |  2 +-
 drivers/ddr/fsl/arm_ddr_gen3.c        |  7 ++-
 drivers/ddr/fsl/fsl_ddr.h             |  1 -
 drivers/ddr/fsl/fsl_ddr_gen4.c        |  7 ++-
 drivers/ddr/fsl/main.c                | 13 ++++--
 include/soc/fsl/fsl_ddr_sdram.h       | 65 ++++++++++++++++++++-------
 8 files changed, 74 insertions(+), 25 deletions(-)

-- 
2.39.2



