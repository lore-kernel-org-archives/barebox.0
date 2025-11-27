Delivery-date: Thu, 27 Nov 2025 11:59:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOZiQ-005OvL-0L
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 11:59:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOZiP-0005lb-Iz
	for lore@pengutronix.de; Thu, 27 Nov 2025 11:59:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/Vn3CPnH63MxaZciUUzaH0GTc5oXf16ccAVrmksts7Y=; b=1L92/ZyKJt6rf7Plfe2xWB0Q4/
	7QWQVbIyk1sljwwfoAjv4hL9IGD0yB+YOY+MBOoZD8HRZS/gjxHgATlRyylUj4bRLecvz17Rc5sF+
	VALvrZDR+87emNEZxqccQ094I8RD+g/sdccMb6Vej577Oc42NdCLzjpH5V7Uh7Ngz0R+ok3Po7lKE
	wyLkqmdxRU4ZxYYKqp2lgSGRRHBj4ntK0g+905haOr5QPJo/RzEGfSpSFLCSzQEJl8Jf6tnuTbFGQ
	r4dRLBnKiKVHsUiYxIEv23ZUZ8w5KWYg0aLjIscRsgwpL65TlX/6WbbZ6MTwtqrMfbpgVRBXi0W+7
	HAy1iZLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOZhp-0000000GPU6-42EC;
	Thu, 27 Nov 2025 10:58:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOZhn-0000000GPTV-2EnF
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 10:58:33 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vOZhl-0005fd-DR; Thu, 27 Nov 2025 11:58:29 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 27 Nov 2025 11:57:04 +0100
Message-ID: <20251127105824.3560951-1-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251126064710.3721039-1-f.pflug@pengutronix.de>
References: <20251126064710.3721039-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_025831_574840_04609513 
X-CRM114-Status: GOOD (  11.05  )
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
Subject: [PATCH v2 0/4] make the root= command line parameter variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is v2 of the patchset with the review feedback from Ahmad on the
first set worked in.

This patchset introduces the bootm.root_arg variable. A dynamic way of
setting the root argument in fit image boot contexts, defaulting to
root, resulting in root=/dev/... during kernel boot, but allowing for
overwrites like verity_fs=/dev/..., which can be parsed by the
initramfs, but will not be parsed by the kernel, resulting in robuster
secure boot contexts, where the kernel does not accidental due to
misconfiguration mount the rootfs instead of the initramfs, resulting in
a non-verified boot.

Fabian Pflug (4):
  block.h: renamed get_rootargs to get_root
  fs: split rootargs into root and options
  bootm: use new api to get kernel command line params
  bootm: introduce bootm.root_arg variable

 .../migration-guides/migration-master.rst     | 15 ++++++
 common/block.c                                | 38 +++++++++----
 common/bootm.c                                | 37 +++++++++----
 drivers/mci/mci-core.c                        |  4 +-
 fs/9p/vfs_super.c                             |  6 +--
 fs/fs.c                                       | 53 ++++++++-----------
 fs/nfs.c                                      |  4 +-
 fs/squashfs/squashfs.c                        | 13 +++--
 fs/ubifs/ubifs.c                              | 12 +++--
 include/block.h                               |  7 ++-
 include/bootargs.h                            | 11 ++++
 include/bootm.h                               |  1 +
 include/fs.h                                  |  7 +--
 13 files changed, 135 insertions(+), 73 deletions(-)
 create mode 100644 Documentation/migration-guides/migration-master.rst

-- 
2.47.3



