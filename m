Delivery-date: Wed, 24 Jan 2024 14:49:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSdct-00GGUT-1a
	for lore@lore.pengutronix.de;
	Wed, 24 Jan 2024 14:49:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSdcu-0006Ur-7r
	for lore@pengutronix.de; Wed, 24 Jan 2024 14:49:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=44ca/xEfMyOhfoMKlYnPoFto/ErY/RweL0paHFHBzPY=; b=S6FJTR9LqbPA+14++I9ojxsIgc
	r72MSq/IP+4nMqnK8LV/tKi5hjB4Hd1E/zriW6PtP8bsX7upqgcR56S1rZbITKqCf7edcf9zMNCHh
	garvZN8ETKWLfmW02nt+WM9wG6m7wso8yYRuV+TIru6ueV4zaopA6ta9Hu0HlkqkpSAKtrgM1xvi9
	qJpqu0RL4rth9V+ls5PVZ3eIxKo+w1zY6JqBvgrpeM5W4+dP1a8NW5C9yjeXpnPeb3c/rs72BgAUY
	/PKpS6NA9VkNg+wIrMjCMUhrbgaKNCXsp0OvQZkMivOGQjZMr+Si3bPcWys1+7ajMVFDPgW4pHyB1
	r4mgKxCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSdbc-003WMT-1t;
	Wed, 24 Jan 2024 13:47:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSdbY-003WJt-0j
	for barebox@lists.infradead.org;
	Wed, 24 Jan 2024 13:47:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rSdbS-0006By-EW
	for barebox@lists.infradead.org; Wed, 24 Jan 2024 14:47:42 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 24 Jan 2024 14:47:35 +0100
Message-Id: <20240124134738.133782-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_054748_273024_E09153A1 
X-CRM114-Status: UNSURE (   8.44  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/3] Add bootm ZSTD support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

this small series of patches finally enables barebox to boot zstd
compressed kernels.

Regards,
  Marco

Marco Felsch (3):
  filetype: add zstd support
  bootm: add support to boot ZSTD compressed images
  uncompress: add detected file type debug print

 common/bootm.c                    |   8 +
 common/filetype.c                 |   4 +
 include/filetype.h                |   2 +
 include/linux/decompress/unzstd.h |  11 ++
 lib/Makefile                      |   1 +
 lib/decompress_unzstd.c           | 316 ++++++++++++++++++++++++++++++
 lib/uncompress.c                  |   8 +
 7 files changed, 350 insertions(+)
 create mode 100644 include/linux/decompress/unzstd.h
 create mode 100644 lib/decompress_unzstd.c

-- 
2.39.2



