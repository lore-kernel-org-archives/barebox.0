Delivery-date: Tue, 18 Mar 2025 15:47:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYE3-0014fn-0B
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 15:47:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYE0-0007pN-5o
	for lore@pengutronix.de; Tue, 18 Mar 2025 15:47:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jgxq7/ye+uluhGJDdQXKj4SOgZLgWxJj5sH5C23S+yU=; b=J2/bqvLaRiJ+MDKEEAu/pQ9Yq6
	icSmM3hbUNEcj9gBjGu0mJAsO0k9Fs9yv2/CRYLx5/aNMTwnQgrW8xXL4/XuL2o801yGeCmQ+mq/3
	tnwqE8whBR9wLfZwyuRQ6fYZAC2KmU/+/DsE2AxH/M3ejwPUxtOrisiic6pTxqp1CbAIfesGgF+J1
	JuSOUZijEXgr7q1Z5aBl/2lkOy9t+y3yClKINdutS3VQMKWQDrrgukC6PQRDhVCbtsOwZTgMdMD7W
	kvohfgCEpUTiKBKIfjotilYoeJBSyEDon1hUe+tb1eLdU9kU7zVDmUXJpmS3LkYm1arwjnmEY/bhM
	qNpGoLPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYDP-00000006E1v-22kN;
	Tue, 18 Mar 2025 14:46:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuY8X-00000006DKa-1Jog
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 14:41:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8V-0006nK-Gh; Tue, 18 Mar 2025 15:41:43 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8U-000Rac-29;
	Tue, 18 Mar 2025 15:41:43 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8U-00F87i-36;
	Tue, 18 Mar 2025 15:41:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Mar 2025 15:41:41 +0100
Message-Id: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACWG2WcC/x3MQQrDIBBG4avIrDugJqGSq4QuGv1NB4oVTUrbk
 LtXsnyL7+1UUQSVRrVTwVuqvFILc1HkH/e0gCW0JqvtoDvjOMoT6zeDq/zABWHzazOs/RyvvXU
 GFtR0LojyOc/T7Tj+T0fhrWkAAAA=
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742308902; l=1954;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=JEiL/4Iw6CfLnI5dqvTmqCB2TTBZTM+zA/X4l32yCtw=;
 b=SJADlmGJWY2KNR5FcNtMbr2tothf2bso7oTeSqA1VOqGR6+u/D3nfPm0Af+1Ygj19hWfIXVIi
 OF7C1k0UEHdDYH7aqd9/XJeG+rZACI1ZS99wxiYdgzUTg1w9oU95pQj
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_074145_387173_A4A50BFB 
X-CRM114-Status: GOOD (  11.18  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] filetype: Some size reduction patches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The am335x_mlo_defconfig is very size constrained and doesn't build
within these constraint anymore for some time. The filetype detection
code has become quite big and offers some opportunities for size
reduction. Specifically file_detect_type() is quite big, but many
callers are only interested in some specific file types like supported
file systems or supported compressed binary formats. This series
introduces some more specific smaller file detection functions so that
we can get rid of the big file_detect_type() in the binary.

Also included some patches for the myirtech-mid board to use a stripped
down device tree for the MLO. The same is already done for the other
boards supported in am335x_mlo_defconfig

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (7):
      filetype: add file_detect_compression_type()
      filetype: add file_detect_fs_type()
      filetype: add function pointer to file_name_detect_type_offset()
      filetype: let cdev_detect_type() only detect filesystems
      filetype: make file type strings optional
      ARM: am33xx: myirtech-myd: add MLO specific device tree
      ARM: am335x_mlo_defconfig: disable file type strings

 arch/arm/boards/myirtech-x335x/lowlevel.c |   6 +-
 arch/arm/configs/am335x_mlo_defconfig     |   1 +
 arch/arm/dts/Makefile                     |   2 +-
 arch/arm/dts/am335x-myirtech-myd-mlo.dts  |  10 +++
 common/Kconfig                            |   8 ++
 common/filetype.c                         | 132 +++++++++++++++++++++---------
 fs/fs.c                                   |   3 +-
 include/filetype.h                        |   5 +-
 lib/uncompress.c                          |   4 +-
 9 files changed, 125 insertions(+), 46 deletions(-)
---
base-commit: a0ba27e06535570e8e4653f5f92a607f8b99022e
change-id: 20250318-filetype-size-reduction-0cbf74281e2e

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



