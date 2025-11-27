Delivery-date: Thu, 27 Nov 2025 15:31:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOd22-005SHo-0E
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 15:31:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOd20-0003x1-B2
	for lore@pengutronix.de; Thu, 27 Nov 2025 15:31:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aytTW8RKI8mQESV9mTTHpgwNHG3PfbY0DQZEdQwbpzs=; b=A99tlB5GIKt2cXBw8LiiPfqUpr
	xyb8ZoMKdz/vU8JzndFDMqhqu4F5nhj2RO5aAziFVhp8yRF8VfshJ6/nL8HNWKayxLulDDnyYOBgM
	uF+Fz/Ej5Y1tl2BOD4SiEFtiMGxAdgZgT0/tBnQ3FCk2gu7Yy88APoF3vfW1VMvoHz6FCdSpIrgSh
	6xtO0ILz3cejVMKl0K7DQbf0GELV6M6uuHtvDQNL/MKz0GTBsChhlO+3wAqXpazvfLkKXJvkpKuAN
	qDR0v5Hscw3gPrcgteGYh+5sjugzReXE2soL8oDAXnwNc7Le6/Et83iMR+6gWzGE1VV8gb88+HYVd
	3y2XA0lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOd1S-0000000GmeH-3CU2;
	Thu, 27 Nov 2025 14:31:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOd1Q-0000000GmdU-11Cf
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 14:31:01 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vOd1N-0003i7-C8; Thu, 27 Nov 2025 15:30:57 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 27 Nov 2025 15:25:20 +0100
Message-ID: <20251127143052.3114915-1-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251127105824.3560951-1-f.pflug@pengutronix.de>
References: <20251127105824.3560951-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_063100_280906_37015AFA 
X-CRM114-Status: UNSURE (   8.65  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 0/4] make the root= command line parameter variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Please ignore the v2 variant. I must have been drunk when writing it.

changes compared to v2:
- fix compile errors
- move format_root_bootarg into fs.c

Fabian Pflug (4):
  block.h: renamed get_rootargs to get_root
  fs: split rootargs into root and options
  bootm: use new api to get kernel command line params
  bootm: introduce bootm.root_arg variable

 .../migration-guides/migration-master.rst     | 15 +++++
 common/block.c                                | 38 ++++++++----
 common/bootm.c                                | 37 +++++++----
 drivers/mci/mci-core.c                        |  4 +-
 fs/9p/vfs_super.c                             |  6 +-
 fs/fs.c                                       | 62 ++++++++++---------
 fs/nfs.c                                      |  4 +-
 fs/squashfs/squashfs.c                        | 13 ++--
 fs/ubifs/ubifs.c                              | 12 ++--
 include/block.h                               |  7 ++-
 include/bootargs.h                            |  2 +
 include/bootm.h                               |  1 +
 include/fs.h                                  |  7 ++-
 13 files changed, 136 insertions(+), 72 deletions(-)
 create mode 100644 Documentation/migration-guides/migration-master.rst

-- 
2.47.3



