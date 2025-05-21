Delivery-date: Wed, 21 May 2025 19:42:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHnSE-001EiZ-0E
	for lore@lore.pengutronix.de;
	Wed, 21 May 2025 19:42:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHnSD-0006uo-FI
	for lore@pengutronix.de; Wed, 21 May 2025 19:42:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pDkk++R0lobvANru7+ts0EIyNdAKNhnJAFEiPS7G9Zo=; b=jo/XwHjrBK1xPj96ibYcRHNd1k
	74+yLK/2hFkqO1LJ6wIMhbBjEBNMBENxJtx45f4lN5mc1HuAkvFTxV+NDSKalxWlhrB7Vye3waHI3
	+nbIfP3/Ki86boxUo1SpSvzkQ+ntcaO+BppgS+Q0vQQM2DKQwZedgVxKaqP/Xx37stG7zQ8wMXfvF
	X6iD7h9+8BNsVD4c+TwbagzscHDcvXkVyOmqhQXSzbTNvXntZYGn0A0ueePAKMrE8jz/cAspQSKZz
	gYJpyM4WEds/BF1Vy0X3Ni8qGRDkeigzS5hTtmI29rHgiKW6adXZP9yc2GaZnsAf8dd4aGn7ItMZw
	Pgj4VvIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHnRc-0000000Gb2J-2KOF;
	Wed, 21 May 2025 17:41:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHnRD-0000000Gay7-17cl
	for barebox@lists.infradead.org;
	Wed, 21 May 2025 17:41:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHnRB-0006S2-8k
	for barebox@lists.infradead.org; Wed, 21 May 2025 19:41:05 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHnRB-000bYA-0G
	for barebox@lists.infradead.org;
	Wed, 21 May 2025 19:41:05 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHnRB-006bCu-1U
	for barebox@lists.infradead.org;
	Wed, 21 May 2025 19:41:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 21 May 2025 19:41:00 +0200
Message-Id: <20250521174104.1570239-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_104107_307966_8E2F17CE 
X-CRM114-Status: GOOD (  11.09  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] ARM: mmu: ensure PTE is written at once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Writing the PTE with a normal non-volatile access is a bad idea, because
speculation may already use a partially written entry.

Use WRITE_ONCE to turn this into a volatile write via a new set_pte
helper. The extra helper is useful for type enforcement and for future
extension when we start to consistently apply break-before-make[1].

Ahmad Fatoum (4):
  arch: sync READ_ONCE/WRITE_ONCE with Linux
  ARM64: mmu: document granule size calculation
  ARM: mmu: ensure PTE is written at once
  WIP: break before make and don't invalidate uncached regions being
    remapped

 Documentation/devel/porting.rst     |   2 +
 arch/arm/cpu/mmu_32.c               | 247 +++++++++++++++++++++++-----
 arch/arm/cpu/mmu_64.c               |  38 ++++-
 arch/arm/include/asm/barrier.h      |   8 +
 arch/kvx/include/asm/barrier.h      |   2 +
 arch/mips/include/asm/barrier.h     |   8 +
 arch/openrisc/include/asm/barrier.h |   8 +
 arch/powerpc/include/asm/barrier.h  |   8 +
 arch/sandbox/include/asm/barrier.h  |   8 +
 arch/x86/include/asm/barrier.h      |   8 +
 include/asm-generic/barrier.h       |  24 +++
 include/asm-generic/rwonce.h        |  87 ++++++++++
 include/linux/bitops.h              |   2 +-
 include/linux/compiler.h            |  94 -----------
 include/linux/compiler_types.h      |  46 ++++++
 include/linux/list.h                |   1 +
 16 files changed, 449 insertions(+), 142 deletions(-)
 create mode 100644 arch/arm/include/asm/barrier.h
 create mode 100644 arch/mips/include/asm/barrier.h
 create mode 100644 arch/openrisc/include/asm/barrier.h
 create mode 100644 arch/powerpc/include/asm/barrier.h
 create mode 100644 arch/sandbox/include/asm/barrier.h
 create mode 100644 arch/x86/include/asm/barrier.h
 create mode 100644 include/asm-generic/barrier.h
 create mode 100644 include/asm-generic/rwonce.h

-- 
2.39.5



