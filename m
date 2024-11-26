Delivery-date: Tue, 26 Nov 2024 16:18:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxKP-000fNr-0R
	for lore@lore.pengutronix.de;
	Tue, 26 Nov 2024 16:18:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxKO-0004Gb-Uy
	for lore@pengutronix.de; Tue, 26 Nov 2024 16:18:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Wy+Degl5l1fVcZ8LLQ66JRjJKtjFdzVBUlrmpuWF7FI=; b=Vu5MsARRbWMG4IfiCBj+pAOob8
	vtMRjs5oT84gFh3h7lUPAuOKvzkguLbQki7XoMtGnskRbb8f/SwhZA5O1ak8Ri8/aalipSaA8bDn0
	PS14zOg5xxAmS4rYs89Ydz/BZzGWiHcxHNYrqhImGbrheZV3Oyd6QdFROrL3EZaLFEoSEfClkJBOP
	TxQM/Pdw70i5ZEjjBMCtyuJIohH2LLSS2b+1SPLC0I7AQ8wM4821bBxjmKHhqY1/PUcFeRU3tLmYs
	E2Y8/hvkYwJ8cXZwRHYWDT8rNV7VC6duNkvTfnhrn/9daRZIx97KM9e/wZyR9DQEGQaBbZMtIa0i6
	I0wIEikw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxK1-0000000AyRe-0GAs;
	Tue, 26 Nov 2024 15:17:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxJy-0000000AyPl-2XM0
	for barebox@lists.infradead.org;
	Tue, 26 Nov 2024 15:17:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxJx-0003v5-DP
	for barebox@lists.infradead.org; Tue, 26 Nov 2024 16:17:45 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxJw-000Grk-1T
	for barebox@lists.infradead.org;
	Tue, 26 Nov 2024 16:17:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxJw-00FD3f-1h
	for barebox@lists.infradead.org;
	Tue, 26 Nov 2024 16:17:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 26 Nov 2024 16:17:40 +0100
Message-Id: <20241126151744.3621717-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_071746_638008_32E9F195 
X-CRM114-Status: UNSURE (   7.41  )
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
Subject: [PATCH 0/4] net: ethernet address helpers for board code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Boards with switches that do MAC address assignment in barebox may want
to know which addresses were assigned and which weren't, so they can
pass through the rest to Linux userspace to be used e.g. for the bridge
ethernet address.

This adds some helpers to facilitate this. The board code making use of
this will follow seperately.

Ahmad Fatoum (4):
  net: add ethaddr sequence handling
  net: factor out eth_of_get_fixup_node
  net: export list of registered ethernet addresses
  net: implement ethaddr_string_cmp()

 include/net.h | 35 +++++++++++++++++++++++++++++++++++
 net/eth.c     | 40 +++++++++++++++++++++-------------------
 net/lib.c     | 17 +++++++++++++++++
 3 files changed, 73 insertions(+), 19 deletions(-)

-- 
2.39.5



