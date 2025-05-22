Delivery-date: Thu, 22 May 2025 15:42:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uI6Bp-001XpY-1k
	for lore@lore.pengutronix.de;
	Thu, 22 May 2025 15:42:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uI6Bo-0005y0-Ve
	for lore@pengutronix.de; Thu, 22 May 2025 15:42:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+0hjKLeddIfNhmzsR+qTm0ied5+vQqRJymyoQ24WomQ=; b=GQ9Its0nHSUy/GuHuhjyS0/mGs
	YiHt8IZK+V0PnlTHJ17F2czZulT4BSchsw942VJq0KDI65Jss+C/Svzq6LJbR2GfgOlqbBvIcR+1W
	qCZwqzf85dWpcmk36KfZNzgYPVqwAVyONM4w8zXHnF72sha4uPW3pDPwxL7mDaOpSMM16g7ujSgli
	H1FJR/qGDSes1qFiPGSo2DU6pQmBUM/4G5iaNecsASnWqhOw/PtNjuSyAADXtLC7JATNmBc7KugB5
	rWWhRuACQoeHiuKrVP6KPlBjosO4P/49kMsIfIpI8zp2faNXQodW0Hj81A5hgoE1v/RfGGsvTdBSD
	M3KDEbPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI6BG-0000000196s-0dnv;
	Thu, 22 May 2025 13:41:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI69v-000000018vo-0U3Q
	for barebox@lists.infradead.org;
	Thu, 22 May 2025 13:40:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uI69r-00059w-LS; Thu, 22 May 2025 15:40:27 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uI69r-000kDc-1R;
	Thu, 22 May 2025 15:40:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uI69r-000ybx-1A;
	Thu, 22 May 2025 15:40:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 May 2025 15:40:21 +0200
Message-Id: <20250522-parted-size-v1-0-369d146aa100@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEUpL2gC/x3MQQqAIBRF0a3IHyeYoFBbiQaWz/oTE42IpL0nD
 c/g3koFmVFoFJUyLi58xIa+E7TuLm6Q7JtJK22U0Voml094WfiBHPwSFGCVtT21ImUEvv/bNL/
 vBypDHK5dAAAA
X-Change-ID: 20250522-parted-size-9dbf0ee60661
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747921227; l=813;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Vu8FoHAF5Te5HwWdVwb/RTNJwL9AkPOnZ/TS08YPMZM=;
 b=sfN2kVxDerCyZoZoBpuPFlYheQCgL84UCqwW+9LNlLbuQALd1G2NPTXKjOPdBKmbndwDUAPv2
 WMZDoAc2BmmCa67nIJKh7nxdvKkPRmwjy1P6YFl39dU7P5a4I2qZ9On
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_064031_162929_FC3C22CB 
X-CRM114-Status: UNSURE (   6.79  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] parted: add command to create partitions specifying
 the size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far to create partitions we have to specify both start and end of a
partition. Create a mkpart_size command to conveniently create a
partition by specifying only the size.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      partitions: add function to find free space on partition table
      parted: align partitions to 1MiB
      parted: implement mkpart_size command

 commands/parted.c    | 65 ++++++++++++++++++++++++++++++++++++++++++++++++++--
 common/partitions.c  | 42 +++++++++++++++++++++++++++++++++
 include/partitions.h |  7 +++++-
 3 files changed, 111 insertions(+), 3 deletions(-)
---
base-commit: dbc28aa3aad573f6ed0199c4fb85295b95e3bd11
change-id: 20250522-parted-size-9dbf0ee60661

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



