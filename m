Delivery-date: Wed, 10 Dec 2025 11:16:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTHFT-009sTB-1l
	for lore@lore.pengutronix.de;
	Wed, 10 Dec 2025 11:16:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTHFT-0001uw-15
	for lore@pengutronix.de; Wed, 10 Dec 2025 11:16:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rPQFSMMTudCF8SuTOB9DNR40GVx8F4tmh4UdFdhLEzQ=; b=gkZ4sGzh9Ahe0I43Po1rlPP+ob
	3ZUVbpJ2TRzmEb15NcP5gxPSq/QUij4BxyL6WstLk54gClplMe5fpHOKdLO/kfYmcX1vYZ2fn8vid
	HcY/x+C+3yYdvZUsD3uA62w46vDF0SB+519JoUEA9fgIEhuSZ0ijYreXGjRZLotNyxcbqwE1gwunf
	WelB31eMWK3bm9ZyJ3ztqJ78/XWb8+SsOaWAVCuSTly9x5DmU9hy0+FopI7JjkQIezQS9MOPLjBl4
	DbPxQEUsv9Of07bzmXBldaJN4oDVmgzFu4WSDAUnCWWrKz4MjPpbr+1UcT37D6IWkAQwYx41CqFw4
	9ya/TIgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTHEy-0000000FJLU-0Nq2;
	Wed, 10 Dec 2025 10:16:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTHEw-0000000FJKy-16Ch
	for barebox@lists.infradead.org;
	Wed, 10 Dec 2025 10:16:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTHEm-0001eH-SK; Wed, 10 Dec 2025 11:16:00 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTHEm-004wMI-22;
	Wed, 10 Dec 2025 11:16:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTHEm-00000004RFo-2HH6;
	Wed, 10 Dec 2025 11:16:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Dec 2025 11:15:58 +0100
Message-Id: <20251210-devfs-prep-v1-0-3a2a3aa27eab@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAF5IOWkC/x2MQQqAIBAAvyJ7TlDByL4SHUTX2ouJggTi31s6z
 sDMgIaVsMEuBlTs1OjJDHoREG6fL5QUmcEoY7XRSkbsqclSsUi/OeVSCquzEThgmej9Z8c55wf
 ZpyhsXAAAAA==
X-Change-ID: 20251210-devfs-prep-a8909ffc695d
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765361760; l=754;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=IAfJ9DRjC81N0KdRa/WktXkBgYze0KEsaFVcYnrOShA=;
 b=I1HWlivd2uR255L34+GMY+C2BQI/UQayuzdepIApcg+j1wYCqpvWdmhYzu9bd9tjK1Q4+KdWV
 W4Q5aoIYr1LAJvzUfWwKOSiKqppeIACv/KG06Lr6XjO/0Pbnuv07QKH
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251210_021610_329671_C979B7AB 
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] selftest: preparations for devfs changes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the devfs series devfs as a filesystem will go away. The dirfd
selftest uses it though, so switch this test to use ramfs instead. This
revealed a bug in the fs layer which is fixed in this series.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      fs: get path in path_init()
      fs: warn when mount reference count becomes negative
      test: dirfs: use ramfs rather than devfs

 fs/fs.c           |  7 +++++++
 test/self/dirfd.c | 46 +++++++++++++++++++++++++++++++++-------------
 2 files changed, 40 insertions(+), 13 deletions(-)
---
base-commit: 500df27eb054f86ce232c5bb30c3a7ea8f771e61
change-id: 20251210-devfs-prep-a8909ffc695d

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



