Delivery-date: Tue, 12 Dec 2023 09:17:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rCxxR-0016bA-1X
	for lore@lore.pengutronix.de;
	Tue, 12 Dec 2023 09:17:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rCxxR-0002RD-P0
	for lore@pengutronix.de; Tue, 12 Dec 2023 09:17:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mV1oQ9gCRALqQmTQk2jWdS4/5KWGtOl2WEjN6xKJjKA=; b=ZuU5jtXEm1W113caIbOzIAJl3d
	kSlw9TVtmAaM94cn62uOhoct7SFu67UGmWq0xMoFKiYx5mjYF7Cg00QbsVPKOIAnC3ZfHPre96wB8
	S/h20Xfpv8KqUhNAWJAGfZd8L31Ga+R+UYui5lv/h9MB7jN6ldQPZH2l2OOrQZdyBoVlU3/NFE7dr
	bRB4ccOWwhuKpWDbxc2PVwcRX/f1K8rrTOFzPeJ0Pa2lxsC4kqeACIA9xf9XLhCKy6woG/klbK4Am
	ZwvDBX3WvjmJvF7K0zXruEhHsdp1FYJsnrXbE1fkJz4rPxCMnhRun7BXWvEqJS2pzjBgKhcGOxBo4
	Z3hu9zYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxwM-00B1NG-2C;
	Tue, 12 Dec 2023 08:16:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxwI-00B1LH-2I
	for barebox@lists.infradead.org;
	Tue, 12 Dec 2023 08:16:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rCxwH-0002Bz-Ax; Tue, 12 Dec 2023 09:16:25 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rCxwG-00FI75-UR; Tue, 12 Dec 2023 09:16:24 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rCxwG-006Ux2-2r;
	Tue, 12 Dec 2023 09:16:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 12 Dec 2023 09:16:20 +0100
Message-Id: <20231212081623.1548734-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_001626_775134_7B405036 
X-CRM114-Status: UNSURE (   6.28  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/3] scripts: Drop some crc32 implementations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Ahmad once added crc32_be() to barebox which is unused up to now, but can
be used by several image tools in scripts/. Let's do that.

Sascha Hauer (3):
  scripts: pblimage: re-use crc32 implementation from crypto/crc32.c
  scripts: mxsimage: re-use crc32 implementation from crypto/crc32.c
  scripts: socfpga_mkimage: re-use crc32 implementation from
    crypto/crc32.c

 scripts/mxsimage.c        | 49 ++++----------------------------
 scripts/pblimage.c        | 49 ++++----------------------------
 scripts/socfpga_mkimage.c | 59 ++-------------------------------------
 3 files changed, 12 insertions(+), 145 deletions(-)

-- 
2.39.2



