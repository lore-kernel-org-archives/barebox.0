Delivery-date: Mon, 02 Oct 2023 11:22:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnF89-001rQt-4I
	for lore@lore.pengutronix.de; Mon, 02 Oct 2023 11:22:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnF85-0005TS-KC
	for lore@pengutronix.de; Mon, 02 Oct 2023 11:22:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PqBFhFAsXCsNFB9KGwNmNgxdjO67a5ZhJgb4ge6U8bM=; b=TPQx/fnAUILbQs/9F9ghox1OwW
	ucCShFRHCS4KQtzaMktjrSo8FEtQR8zBfFyvVC/bbayg1dDNx5aclUmeTXjeZlDivcMb7Ruey/5L3
	J+EMYXtZ0yhwyLlsfFnh2CqafDYRzVposJULt5nE7MAoLa6lxUjdP97oYGn/UApelh8HGXbdBmX/+
	MECOm26vwsXMBql1Kjnlj25CDZrHrqj6ZUfNjtGopI7rYW7Y2PvdDkpbV2/Lj3dnX2HO27aK4kjtj
	TSbfaMxwS1MfuvT2xNl0KJyrhuLCCZSjTTYHb79SJZyzqgMFUWgR0Vy6nvZofSjwknK2hPI8Nf+Es
	l1l68iqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnF6i-00CDfE-2W;
	Mon, 02 Oct 2023 09:20:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnF6g-00CDeV-08
	for barebox@lists.infradead.org;
	Mon, 02 Oct 2023 09:20:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qnF6c-0005Bz-NQ
	for barebox@lists.infradead.org; Mon, 02 Oct 2023 11:20:46 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qnF6c-00AUQw-AH
	for barebox@lists.infradead.org; Mon, 02 Oct 2023 11:20:46 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qnF6c-00D1NG-0t
	for barebox@lists.infradead.org;
	Mon, 02 Oct 2023 11:20:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  2 Oct 2023 11:20:41 +0200
Message-Id: <20231002092043.3097587-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_022050_075864_1A14C10B 
X-CRM114-Status: UNSURE (   6.29  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] HAB: i.MX8M: fix fuse location
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fuse location for i.MX8M differs from i.MX6, which is fixed by this
series.

Tested on i.MX8MM. The rest of the patches for HAB on i.MX8MM are yet to
follow.

Rouven Czerwinski (2):
  ARM: i.MX: fusemap-ocotp: add sec fuses for i.MX8M
  HAB: extend fuse information with i.MX8M

 drivers/hab/hab.c                | 32 +++++++++++++++++++++++++++-----
 include/mach/imx/ocotp-fusemap.h |  4 ++++
 2 files changed, 31 insertions(+), 5 deletions(-)

-- 
2.39.2



