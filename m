Delivery-date: Tue, 11 Jun 2024 07:13:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGtp2-0044fT-2s
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 07:13:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGtp1-0007y6-LR
	for lore@pengutronix.de; Tue, 11 Jun 2024 07:13:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cuT+REoX4rAFBmQ1TLUdJFA1/vLhswJ+mUVkmtx3ZSM=; b=TM7R5y514YIoPBRhCy4YRFZzGv
	UzsWHXsvI48ZV8qQJ4hVL4qJcq69tAGz/3D3k6YBpGLHq8pW/of1KIhGRQL5fQGSc8JumYOnNhEBe
	7OfhMFdG+gk1Btz76UKyW/8U+P4rjAOuh7hBxoWJXcmjQPZ9/o3gz8cwEpsK913rQOKotf62XQqim
	Pv7sy9jsO1yavJJgvsJ/GwXKHipREHnLVQd2YYiE7lpHzmol2znZQfGs+ibKw6eu4PNr9WhqsIxmT
	nfNUIg9EaD73WTG1caZyIOEzIWlH0Yrmqpxz90KlXeLHuHx9wE8riMwPKPKPWsnQWoVbbwebOg8xu
	+l3jkiUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGtoS-00000007Q4n-2FGE;
	Tue, 11 Jun 2024 05:12:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGtoI-00000007Q2D-1ytu
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 05:12:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGtoF-0007no-SR; Tue, 11 Jun 2024 07:12:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGtoF-001TFh-G0; Tue, 11 Jun 2024 07:12:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGtoF-00HJc3-1F;
	Tue, 11 Jun 2024 07:12:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 11 Jun 2024 07:12:33 +0200
Message-Id: <20240611051237.4126918-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_221242_579077_143BF794 
X-CRM114-Status: GOOD (  11.48  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 0/4] Introduce class devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Several subsystems already have a struct device embedded in their
subsystems specific structs. Allow to register these as class devices.
This way we collect devices of the same type on a list and can show
informations about these in a generic way.

Sascha Hauer (4):
  net: use for_each_netdev()
  base: add class device support
  net: register eth class
  watchdog: register watchdog class

Changes since v1:
- s/DECLARE_CLASS/DEFINE_DEV_CLASS
- explain why linker lists are used in commit message
- better Kconfig help test for class command

 commands/Kconfig                  |  6 +++++
 commands/Makefile                 |  1 +
 commands/class.c                  | 30 ++++++++++++++++++++++
 drivers/base/Makefile             |  1 +
 drivers/base/class.c              | 41 +++++++++++++++++++++++++++++++
 drivers/watchdog/wd_core.c        | 14 ++++++-----
 include/asm-generic/barebox.lds.h |  7 ++++++
 include/device.h                  | 21 ++++++++++++++++
 include/net.h                     |  4 +--
 net/eth.c                         | 12 +++++----
 net/ifup.c                        |  2 +-
 11 files changed, 125 insertions(+), 14 deletions(-)
 create mode 100644 commands/class.c
 create mode 100644 drivers/base/class.c

-- 
2.39.2



