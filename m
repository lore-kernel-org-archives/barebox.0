Delivery-date: Mon, 23 Feb 2026 09:35:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRPH-004lZw-2V
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 09:35:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRPI-00045j-2C
	for lore@pengutronix.de; Mon, 23 Feb 2026 09:35:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U3rNgYBkgp1j4iQHzbNPGZPqlvrYSXSOXEy/iQV/TVk=; b=vQETnJrScKoYb6
	Fuw/qBTfyFUTYILTsNOloZViJUoHD5kk04DRSK06FWobwSlaR7XkEUDyQ4G9AslLIGlggdTy/WfIv
	CnHI67U6HtQ8xZEwzDR+n4W6cCICxEBWmKARCFSl6X8jREv8GnZGjyzAbL9G/nATNe79d957JL+rB
	iFyYI42+BJUNYIeqVWdu1RpkutA/rGofi0qSH+aJ5DfDIyGHvVNtAQu29wYd4Wf2DY3IaJCSCXn/5
	98tfHqK/l6RNGr8FGpK7EJ6S4N3o2h55ESmuDoBZlOkk5WkYzSajjdLYDJI/CoeJYY4PFsyryOfgh
	tJuMczxWXmLFoGoDbnVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuROb-0000000HQYC-09CR;
	Mon, 23 Feb 2026 08:34:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuROY-0000000HQW8-1OtA
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 08:34:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuROO-0003pR-7K; Mon, 23 Feb 2026 09:34:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuROM-002CHb-1l;
	Mon, 23 Feb 2026 09:34:11 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRON-00000000llL-3Sxs;
	Mon, 23 Feb 2026 09:34:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Feb 2026 09:34:05 +0100
Message-Id: <20260223-arm-mmu-v1-0-707d45f6f6e1@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAP4QnGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIyNj3cSiXN3c3FJdCwuDpFSL5KQ0M0MzJaDqgqLUtMwKsEnRsbW1AEv
 FX6dZAAAA
X-Change-ID: 20260223-arm-mmu-880be8cbf616
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771835651; l=1136;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=qyc8snstqnvAP9vTuQSALyghEKnlchCl5kSgZqnn4J4=;
 b=Xo/M+3OtaJfcX1pGCsHc31YCNxTJJQ2cl+3ntbJFiTYdWZVBZMxhAEpLHoTMAj+VNNGJs3mt5
 LqVyb3UqTqWARDXhB/yqeyMwV23K8QRE/OAvuiqwxB87uKD2CjGUPoW
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_003422_386028_D4543C51 
X-CRM114-Status: UNSURE (   8.78  )
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
Cc: Sascha Hauer <sascha@saschahauer.de>, "Claude Sonnet 4.5" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] ARM: MMU: Some cleanup after recent changes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We now setup the MMU for barebox proper in the PBL already. This makes
some quirks we currently do in the PBL unnecessary. Remove them for
good. Also, make mmu_early_enable() safe to be called from board code
if necessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (4):
      mmu: add MAP_CACHED_RWX mapping type
      ARM: MMU: drop forced pagewise mapping
      ARM: pbl: MMU: drop unnecessary barebox mapping
      ARM: pbl: MMU: Make it callable multiple times

 arch/arm/cpu/mmu-common.c    |  4 +---
 arch/arm/cpu/mmu-common.h    |  6 +-----
 arch/arm/cpu/mmu_32.c        | 27 ++++++++-------------------
 arch/arm/cpu/mmu_64.c        | 27 +++++++++------------------
 arch/arm/cpu/uncompress.c    |  2 +-
 arch/arm/include/asm/mmu.h   |  2 +-
 arch/riscv/cpu/mmu.c         |  6 +++---
 arch/riscv/include/asm/mmu.h |  4 ----
 include/mmu.h                |  1 +
 9 files changed, 25 insertions(+), 54 deletions(-)
---
base-commit: ffd4db2ea98ea1b8713382ca3d7a8ea7dadca4da
change-id: 20260223-arm-mmu-880be8cbf616

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



