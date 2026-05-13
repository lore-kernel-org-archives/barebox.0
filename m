Delivery-date: Wed, 13 May 2026 15:59:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNA7L-001HB5-2q
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 15:59:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNA7G-0000v3-Ae
	for lore@pengutronix.de; Wed, 13 May 2026 15:59:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CcvMaYmFacG/7TgfxX1JYCrbCEq2Om01Xa76NYRV6XU=; b=DejDrrpRI04MCa7Gr098XcrD74
	YAHGEqeT4+Q8jsh3NtRiSHUNmvgc7mWuJMBU8MFvpt2N5Vt3bFfWQCSW6Bkhm71Gd77p/3yU2YsMd
	u4y53MDIXID6LQv7X4wM7RRwyk3hVOHbnVnQrFbzSoIhnlnz0K7qXti4hUSeOffytTpev2vdNISer
	+ic0CZHlPK5/8hh2T6+mNYnc6CVcnLxbDIuP3sE59y7lBGrwguLQPXcnmSOphgFmzwJuHz8ReKho3
	wpgs6BCYUs27ajuD9oS2C+SfbZSnex6mfL2tcslPWS/jJ83Ap450hwR4j8kdpNnwy5J1a3pBO+DRt
	7tjfN7pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA68-00000002qde-49Cw;
	Wed, 13 May 2026 13:58:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA67-00000002qce-3aNZ
	for barebox@bombadil.infradead.org;
	Wed, 13 May 2026 13:58:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=CcvMaYmFacG/7TgfxX1JYCrbCEq2Om01Xa76NYRV6XU=; b=li4O6cEWGf30ujAkWynmEJIiOR
	Dsj7w202qSvhVcCPxnexFqrZgibTYa7Oggag3CC+nGPwl1fYrG6b/c9Wnmf5ogHzoVNaANbcBOAEn
	BMdARGChm3a8Jt7Qzz0nOKrzzGnxIZ36B3VS4Oa+F5SRpYvPOjVtqyWbXkD35LBlBCCrfPuKnhG4+
	3ZEckgLpJlQZvbPvEzDEhMztzt71NQXrxa7jk3kDvwulIP3p4ilfOkEZAtBrvQiJi4xLSwMMe/GXP
	NYPYXmxGJWRiH3jO6DKRGfUUhmXewUQXcHfDbPfYJEQk79uuWqe7cC7h73NVRpE+bgQKfY44BKmaE
	EIvnPyBA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA63-000000005n6-1vqy
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 13:58:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA63-0000Rk-BO; Wed, 13 May 2026 15:57:59 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA63-000biQ-0t;
	Wed, 13 May 2026 15:57:59 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA63-00000001Ckb-0tPE;
	Wed, 13 May 2026 15:57:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 May 2026 15:57:57 +0200
Message-Id: <20260513-pbl-elf-fixes-v1-0-440cc04c634f@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGWDBGoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDU0Nj3YKkHN3UnDTdtMyK1GLdNBMDgzSzZEtTE7MkJaCegqJUsARQS3R
 sbS0AzxsTV18AAAA=
X-Change-ID: 20260513-pbl-elf-fixes-f400f6c9546b
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778680679; l=695;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=QyRRsspQ3TL3saXofOlN6oJ9Hy2NEzDdpeLMtKwu8v4=;
 b=WA0oget/KX4OPeqyxCsUEJkNxf2Hzw5Wroe73OflOl6vkx7RVgkrYzcQHEF0P5PkbZyjKQIpf
 Kru26hOPIQXAiSc83rTbHqmgu0Cgd1Vry6zkJKPfh7WuRsO6QE/o0cH
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_145759_904203_60D97B7B 
X-CRM114-Status: UNSURE (   5.68  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] Fix ELF image linking into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On ARM and RiscV we now link an ELF image into the PBL. With this PBL
and barebox proper might disagree where the barebox image has been
placed resulting in the malloc area overlapping the barebox image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      ARM: fix wrong calculation of barebox base
      riscv: fix wrong calculation of barebox base

 arch/arm/include/asm/barebox-arm.h     | 4 ++++
 arch/riscv/include/asm/barebox-riscv.h | 4 ++++
 2 files changed, 8 insertions(+)
---
base-commit: f4da708a0ba2d8489832900b37343ac63dce16f0
change-id: 20260513-pbl-elf-fixes-f400f6c9546b

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



