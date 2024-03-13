Delivery-date: Wed, 13 Mar 2024 12:07:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMST-004INt-2R
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 12:07:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMSS-0002dO-MS
	for lore@pengutronix.de; Wed, 13 Mar 2024 12:07:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eoHYzpAD0iZKUC+b2cEe4WTAX9RLeB0uwlS9nHCQk8Q=; b=EHxe5+toTEDAskAHBRbBSgU57Q
	U5jHf+dQQgqlta9t4qZUoZuueRyrbeAgdfqY4iBOL+/plIKxBgJBDy/2JLzX6pPzZGEyuY64dNFsV
	2C/xBzl4mCflk5g+gZMIxhpoGY1mg5pCFoqZoJ7y/b+PlBzGZRMM650fm1KAfDdWrZnm7JPyirWSj
	+KXoXFYG2Jfajjvi9fC3z+NEV6FYgo1HsM4NgI8MHIbMk03r62ZXJ68be41ZPKqWhy7ymlUSPu87C
	vvLAtehccub4oPRV0MnidXEJKXnJioWpM+a6ZmcLiDkO6egkjW2OsJ+a4vp1RmnF43ASZWjlG8mr0
	783SkvtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMRz-00000009pIn-2ZK5;
	Wed, 13 Mar 2024 11:07:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMRu-00000009pFa-3pHH
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 11:07:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRt-0001sh-OJ
	for barebox@lists.infradead.org; Wed, 13 Mar 2024 12:07:05 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRt-00665k-BV
	for barebox@lists.infradead.org; Wed, 13 Mar 2024 12:07:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRs-004dIp-2S
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 12:07:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 13 Mar 2024 12:06:57 +0100
Message-Id: <20240313110704.1095554-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_040706_976506_44DA04FC 
X-CRM114-Status: UNSURE (   6.20  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/7] net: replace global NetRxPackets arrays with per-interface allocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Drivers using NetRxPackets can't be combined into the same barebox build
without clobbering each other when receiving packets. Even having the
same driver twice would lead to issues.

We certainly don't want to encourage new network drivers to use this
global array, so let's just get rid of it.

Ahmad Fatoum (7):
  net: add net_alloc_packets helper
  net: ep93xx: replace global NetRxPackets with per-interface allocation
  net: enc28j60: replace global NetRxPackets with per-interface
    allocation
  net: gianfar: replace global NetRxPackets with per-interface
    allocation
  net: ethoc: replace global NetRxPackets with per-interface allocation
  net: cpsw: replace global NetRxPackets with per-interface allocation
  net: retire global NetRxPackets arrays

 drivers/net/cpsw.c     |  8 +++++++-
 drivers/net/enc28j60.c |  6 ++++--
 drivers/net/ep93xx.c   | 16 +++++++++++++---
 drivers/net/ethoc.c    | 10 +++++++++-
 drivers/net/gianfar.c  | 14 +++++++-------
 drivers/net/gianfar.h  |  6 ++++++
 include/net.h          | 10 ++++++++--
 net/net.c              | 26 ++++++++++++++++++++++----
 8 files changed, 76 insertions(+), 20 deletions(-)

-- 
2.39.2



