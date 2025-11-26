Delivery-date: Wed, 26 Nov 2025 07:48:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vO9K3-004zTG-34
	for lore@lore.pengutronix.de;
	Wed, 26 Nov 2025 07:48:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vO9K2-0003P0-4W
	for lore@pengutronix.de; Wed, 26 Nov 2025 07:48:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RuaMvuZJFRi6IO6aEYjKo9aIRWLrLpuzoLk1+0/+WXU=; b=P7dxs4LLM4KByUO63E1yWYoNJZ
	5knSEG/RoKj/o5yYVV0bP4UwvaOzozmDWVAs57csA1umQsRRzynL8eDtn1yQ4jZH5hm1LSSVe8Qew
	1s/c8FX+In3J35XpSwULMwMx1N+0wwz2Zxnv7R1OkqzUvjIl6Mrp3COXp4YqFufXCPmvsL4FDfH4m
	YXi5QDPjmOBghmsBpDfYWMg13VTVi38x6M53JbswIg8JZtNWgBB1MIl316EKEGXvEuYQUJPYYlDqX
	L3DW3pZer1B3KpPkWDT3NDY3049A8CJ8ZOM2Q06z+l2876Aal0Yy5x7lLRFyXvxaf+68FSQTpAZz/
	hVW5N7XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vO9JX-0000000ESVD-1cvh;
	Wed, 26 Nov 2025 06:47:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vO9JS-0000000EST3-420b
	for barebox@lists.infradead.org;
	Wed, 26 Nov 2025 06:47:41 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vO9JQ-0003Bf-I9; Wed, 26 Nov 2025 07:47:36 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Wed, 26 Nov 2025 07:42:15 +0100
Message-ID: <20251126064710.3721039-1-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <29c84edc-9619-4524-a698-1edd3a60ac89@pengutronix.de>
References: <29c84edc-9619-4524-a698-1edd3a60ac89@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_224739_013774_3AD9206D 
X-CRM114-Status: UNSURE (   8.87  )
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
Subject: [PATCH 0/4] make the root= command line parameter variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

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

 common/block.c         | 36 ++++++++++++++++++--------
 common/bootm.c         | 38 +++++++++++++++++-----------
 drivers/mci/mci-core.c |  4 +--
 fs/9p/vfs_super.c      |  6 ++---
 fs/fs.c                | 57 +++++++++++++++++++++++++++++++-----------
 fs/nfs.c               |  4 +--
 fs/squashfs/squashfs.c | 13 ++++++----
 fs/ubifs/ubifs.c       | 12 +++++----
 include/block.h        |  8 +++++-
 include/bootm.h        |  1 +
 include/fs.h           |  6 +++--
 11 files changed, 126 insertions(+), 59 deletions(-)

-- 
2.47.3



