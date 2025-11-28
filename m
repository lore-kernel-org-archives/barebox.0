Delivery-date: Fri, 28 Nov 2025 16:05:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP020-005p1S-19
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 16:05:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP01z-0002JP-RV
	for lore@pengutronix.de; Fri, 28 Nov 2025 16:05:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X3O3Tax07kfBI5x+AMXlWj4/gSqt7VYhV1oKhi7j5eM=; b=dOrVWasveYHy0tlDAG8GNs05tR
	X0vLVUIUvK0VXjpLt2HZEttS/tvzf0KrHKMhoPhVhWOnbA3Uh6zVqwy8/KzI8kVodiCbSi9LGZF9B
	gGZBa4AkrAQP5flOAzlORNKE1u6vKMbX6YGbzJ8EzJg5SNlJDOgGP2zdZLcWPI8N5vcEA/piob3po
	qHjb3GwS1mfqLnCCr0QdxUtq5U/484quptBuMdNghxAGfHIOUFP+v28BWMyFSBOKGVj3hyEbHJYjG
	TDFJrHVJhTEpxRgyAEs6wWDUQj4EKwgXXRcCgAPjRCHhdGzbOD3y2/bQZDSX00g1nN90v0NCPrVUg
	7UhNLVqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP01Z-00000000ZIA-25He;
	Fri, 28 Nov 2025 15:04:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP01W-00000000ZGe-42iI
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 15:04:40 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vP01U-00023c-44; Fri, 28 Nov 2025 16:04:36 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 28 Nov 2025 15:58:59 +0100
Message-ID: <20251128150434.3842713-1-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251127143052.3114915-1-f.pflug@pengutronix.de>
References: <20251127143052.3114915-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_070439_004788_E711A827 
X-CRM114-Status: UNSURE (   7.81  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 0/4] make the root= command line parameter variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Changes in v4:
Added reviewd by for all patches
integrated review
moved removal of path_get_linux_rootarg from patch 4 to patch 3

Fabian Pflug (4):
  block.h: renamed get_rootargs to get_root
  fs: split rootargs into root and options
  bootm: use new api to get kernel command line params
  bootm: introduce bootm.root_arg variable

 .../migration-guides/migration-master.rst     | 18 ++++++
 common/block.c                                | 37 ++++++++---
 common/bootm.c                                | 37 +++++++----
 drivers/mci/mci-core.c                        |  4 +-
 fs/9p/vfs_super.c                             |  6 +-
 fs/fs.c                                       | 61 ++++++++++---------
 fs/nfs.c                                      |  4 +-
 fs/squashfs/squashfs.c                        | 13 ++--
 fs/ubifs/ubifs.c                              | 12 ++--
 include/block.h                               |  7 ++-
 include/bootargs.h                            |  2 +
 include/bootm.h                               |  1 +
 include/fs.h                                  |  7 ++-
 13 files changed, 138 insertions(+), 71 deletions(-)
 create mode 100644 Documentation/migration-guides/migration-master.rst

-- 
2.47.3



