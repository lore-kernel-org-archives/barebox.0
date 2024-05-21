Delivery-date: Tue, 21 May 2024 12:50:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9N4F-00C7qr-1h
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 12:50:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9N4E-0005iL-K7
	for lore@pengutronix.de; Tue, 21 May 2024 12:50:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cwUwTZf1HbsO3mY3NNjlnBfFy9LJLpNJ8nxnzTtJfxY=; b=sFbkTi8O9SavY/SKKqrx4TQ23m
	N4PLrXYzYFCdmI8zSMk/Qk8vh1ifnZSD+jxB/avgaBB4RTBCqHLPHvzHjnCtmwQY0cmn4+7gPmdZq
	mQ+6J7cb5Xa8Irgz0sRAAWx6F0OEP53eRw3DXpbqGwSZAYsLGSDZ/mllycmS97SIIT9TurA4+TaGW
	2GZOJzy82wSrpryktvDfX3XzwPHyUIJrUrQptJGWOUWXaI0WTYu+hpsFFBa9LIEviZ2EQ1UfAtGkF
	WUieAtWM5w227tUBNikfVDUH9F1AFQotqfQfvM6TAU0d8ea2QesWWFzudc63NxPbQ63SsYKhwBqtv
	mGC5seHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9N3g-0000000HABo-0zB6;
	Tue, 21 May 2024 10:49:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9N3c-0000000HA96-2URH
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 10:49:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9N3T-0005JS-DM; Tue, 21 May 2024 12:49:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9N3T-002NUB-0r; Tue, 21 May 2024 12:49:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9N3S-008KDT-2u;
	Tue, 21 May 2024 12:49:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 21 May 2024 12:49:09 +0200
Message-Id: <20240521104913.1983970-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_034924_667432_8AABE7AD 
X-CRM114-Status: GOOD (  10.13  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] make more use of handoff data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct boarddata is a mechanism to pass a ARM machine number from PBL to
barebox proper. The EFI payload also uses it to pass some custom
pointers to barebox proper. handoff data was created for exactly this
purpose, so retire boarddata and use handoff data instead.

@afa, the efi patch is compile tested only. Could you give it a try?

Sascha

Sascha Hauer (4):
  handoff-data: put handoff data into data section
  efi-payload: use handoff data to pass data to barebox proper
  ARM: beagle: setup C environment early
  ARM: replace boarddata with handoff data

 arch/arm/boards/beagle/lowlevel.c             |  9 ++--
 arch/arm/boards/chumby_falconwing/lowlevel.c  |  7 +--
 .../boards/crystalfontz-cfa10036/lowlevel.c   |  7 +--
 arch/arm/boards/freescale-mx23-evk/lowlevel.c |  7 +--
 arch/arm/boards/imx233-olinuxino/lowlevel.c   |  7 +--
 arch/arm/boards/karo-tx28/lowlevel.c          |  7 +--
 arch/arm/cpu/start.c                          | 20 +++-----
 arch/arm/cpu/uncompress.c                     |  3 --
 arch/arm/include/asm/barebox-arm.h            | 24 ++++-----
 efi/payload/boarddata.c                       | 12 +++--
 efi/payload/entry-multi.c                     | 16 +++---
 include/boarddata.h                           | 49 -------------------
 include/efi/efi-payload.h                     |  5 ++
 include/pbl/handoff-data.h                    | 21 ++++----
 pbl/handoff-data.c                            |  6 +--
 15 files changed, 64 insertions(+), 136 deletions(-)
 delete mode 100644 include/boarddata.h

-- 
2.39.2



