Delivery-date: Tue, 08 Mar 2022 12:52:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYOP-004bsu-N8
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 12:52:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYOO-00073k-Cp
	for lore@pengutronix.de; Tue, 08 Mar 2022 12:52:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VHq06O7jFaaqrB5g9A5xdpDxreV9i0RWHV3FxdSJJd0=; b=YApyWdGgiWyq33
	bL3P2WQSLR5pTfD9VZCygmddEgu49QgnXDOQqB4koFBDa65s0XIYVvkswZtzFm0D8XTwsYPge1WNj
	fErGjrLG1a/InOstm6KeUZoxFxmQlkns0OTFzM323eTjxTnF7N8EnxKTssN6Q3wCtEfBJ0TIZf9E4
	yvK/aW6RmR1HtQnBYSyi+9rSW1dzVq6vxpsRe3jKNYwbxwQZ4y4VNodxFgR3x7BPhWYGfQIG3nrIb
	PM02Yb878Ew1HuOkOQ/mJ3/tSKmdbGq66ri8agPwdk+0+xGKlxFiNUAMdX7PNM4G7E6WWHp21GHxk
	Pk+bFRh3QxFqY5d59iCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRYMx-004DRV-Fl; Tue, 08 Mar 2022 11:51:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRYMs-004DQ0-3N
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 11:51:07 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYMq-0006im-LJ; Tue, 08 Mar 2022 12:51:04 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYMq-00FdcM-2o; Tue, 08 Mar 2022 12:51:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Mar 2022 12:50:58 +0100
Message-Id: <20220308115103.3664883-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_035106_175596_E05CFCE1 
X-CRM114-Status: UNSURE (   8.61  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/5] of: platform: deep probe updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It turned out that timers may be initialized very late during
initialization when deep probe is used. The final goal of this series
is to fix that, but there are some preparations necessary.

Sascha Hauer (5):
  of: platform: return early when deep probe is not supported
  of: rename of_find_node_by_name() to of_find_node_by_name_address()
  of: Add of_find_node_by_name() with Linux semantics
  of: platform: Change of_devices_ensure_probed_by_property() return
    value
  of: platform: Ensure timers are probed early

 arch/arm/boards/ccxmx51/ccxmx51.c         |  2 +-
 arch/arm/boards/gateworks-ventana/board.c |  4 +--
 arch/arm/boards/phytec-som-imx6/board.c   |  2 +-
 arch/arm/boards/protonic-imx6/board.c     |  2 +-
 arch/arm/boards/skov-imx6/board.c         |  2 +-
 arch/arm/boards/zii-common/pn-fixup.c     |  2 +-
 arch/arm/boards/zii-imx51-rdu1/board.c    |  2 +-
 arch/arm/boards/zii-imx6q-rdu2/board.c    | 12 +++----
 arch/arm/boards/zii-imx8mq-dev/board.c    |  2 +-
 arch/arm/mach-imx/imx6.c                  |  2 +-
 arch/arm/mach-stm32mp/init.c              |  2 +-
 arch/riscv/cpu/core.c                     |  2 +-
 commands/of_display_timings.c             |  4 +--
 common/oftree.c                           |  4 +--
 drivers/aiodev/qoriq_thermal.c            |  2 +-
 drivers/net/cpsw.c                        |  2 +-
 drivers/net/phy/mv88e6xxx/port.c          |  2 +-
 drivers/of/base.c                         | 40 ++++++++++++++++++++-
 drivers/of/fdt.c                          |  2 +-
 drivers/of/platform.c                     | 44 ++++++++++++++++++++---
 drivers/of/resolver.c                     |  4 +--
 include/of.h                              | 21 +++++++++++
 22 files changed, 127 insertions(+), 34 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

