Delivery-date: Wed, 10 Jun 2026 17:40:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXL2l-004Nzp-1O
	for lore@lore.pengutronix.de;
	Wed, 10 Jun 2026 17:40:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXL2k-0008EJ-Pc
	for lore@pengutronix.de; Wed, 10 Jun 2026 17:40:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LBYMHrJ8wH1Q1gEYdpbsskQjWAhHkHZ92yOT8mNYzmk=; b=BqpqspMRC7GYSczpx4H3qdMOGv
	PLIO3a/6V46f/dcyUiGLjVOH6G0QTdNwwzIubX238voK4dIfRWRfgBoaNwiPxtY/IyrBnv/6jZgXu
	1fDdH3rVvBjJzTOmz24lxyjJLH8yyjQfGaggdB/WchMVCpseQaoAhFXvRTEMx9QGg/cQHHqZJLaqQ
	re9pek/zgDdnF9jQ1BgJn46k1uduIvn2jXT9/ASWlqvmxuAFOM6TABI9d6zpsOnYFxV29R6a6kqRA
	zGPt/Ro6+qB1eO8WbHhR2fOf5noVBpyNDpIBlj4/RUy9RFbrusuFnuwTVdQ0fV9DYK1iEXZ6rYiTG
	CRbI/zyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXL1Q-000000082dF-09pm;
	Wed, 10 Jun 2026 15:39:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXL1J-000000082bL-2bEW
	for barebox@lists.infradead.org;
	Wed, 10 Jun 2026 15:39:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wXL1H-0007ph-Ik; Wed, 10 Jun 2026 17:39:07 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 10 Jun 2026 17:37:26 +0200
Message-ID: <20260610153904.2862220-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260610153904.2862220-1-a.fatoum@barebox.org>
References: <20260610153904.2862220-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_083909_755686_4DC5529D 
X-CRM114-Status: GOOD (  13.05  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] Makefile: clang: fix triplet computation for ARM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The code that has been imported here is wrong, because it doesn't
account for the fact that SRCARCH in barebox is never arm64, even for
CONFIG_ARM64. This is not trivially fixable directly as this file is
included before CONFIG_ options are available, so we can't actually know
whether it's arm64 or arm32...

Fix this by requiring ARCH=arm64 to be used for 64-bit builds with clang.
At some point in the future, we can enforce this for everyone.

Note that clang building is currently only supported and tested for
sandbox, but with this change, everyone can see the errors and
collaboration on enabling clang support becomes feasible.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/Kconfig       | 2 +-
 scripts/Makefile.clang | 5 +++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 63877c965fad..fe4fd3f47178 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -42,7 +42,7 @@ config ARM64
 	select ARCH_HAS_BAREBOX_MEMORY_OFFSET
 
 config ARM64_STRICT_BUILD_ARCH
-	bool
+	def_bool CC_IS_CLANG
 	depends on ARM64
 	help
 	  When selected, ARCH=arm64 is required for 64-bit builds and ARCH=arm
diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
index e93ffb77aa10..fca1b8eee985 100644
--- a/scripts/Makefile.clang
+++ b/scripts/Makefile.clang
@@ -2,8 +2,9 @@
 # Individual arch/{arch}/Makefiles should use -EL/-EB to set intended
 # endianness and -m32/-m64 to set word size based on Kconfigs instead of
 # relying on the target triple.
-CLANG_TARGET_FLAGS_arm		:= arm-linux-gnueabi
-CLANG_TARGET_FLAGS_arm64	:= aarch64-linux-gnu
+CLANG_TARGET_FLAGS-arm		:= arm-linux-gnueabi
+CLANG_TARGET_FLAGS-arm64	:= aarch64-linux-gnu
+CLANG_TARGET_FLAGS_arm		:= $(CLANG_TARGET_FLAGS-$(UTS_MACHINE))
 CLANG_TARGET_FLAGS_mips		:= mipsel-linux-gnu
 CLANG_TARGET_FLAGS_powerpc	:= powerpc64le-linux-gnu
 CLANG_TARGET_FLAGS_riscv	:= riscv64-linux-gnu
-- 
2.47.3



