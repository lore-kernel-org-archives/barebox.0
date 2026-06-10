Delivery-date: Wed, 10 Jun 2026 16:00:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXJTu-004MRY-0Y
	for lore@lore.pengutronix.de;
	Wed, 10 Jun 2026 16:00:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXJTt-0007XT-Fs
	for lore@pengutronix.de; Wed, 10 Jun 2026 16:00:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vWy/oSMCOgrUJaQwABW7v6mp+o72qzbXPe7mE8M2TyQ=; b=VZcS9Km0uu8wlM+wZArlslacKf
	TxsS1kD6AZgZH7r1PYxjbVF+tGiLyvQS4BJPGXpvuwfMaoCpEaI+v53XG0gJZkMaBa75yYAS1vcTk
	GGpPaHp9r2j6NvxtxZtwjrR3tR6eAiBB5YX8MtuQujPXfxRi78vYA/EKh9yJMt+febqp8w/YsQNK9
	KBRB8yEl4nHxwS1A5dxZxTryoZvRrh3w5VEFbpB6C777opMknv7s/l3wigz/2YmR19DkCx19KKrH+
	es9vrwLrP+9XEwwXodBcQKHcFA0tVxIn2WZ//rG2Ho1DJVS0o5B8Vd6fAsGjP+W79I4U2/8jEF2YF
	wHy3LBFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXJSY-00000007pT9-1ips;
	Wed, 10 Jun 2026 13:59:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXJSV-00000007pS5-3iJq
	for barebox@lists.infradead.org;
	Wed, 10 Jun 2026 13:59:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wXJST-0007Cx-UU; Wed, 10 Jun 2026 15:59:06 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 10 Jun 2026 15:59:00 +0200
Message-ID: <20260610135904.2717667-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_065907_923037_AB72506A 
X-CRM114-Status: UNSURE (   9.05  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! kbuild: sync with Linux v6.17
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Makefile: clang: fail non-sandbox LLVM builds early

For the reasons outlines in aaea175ad00f
("Makefile: clang: fail non-sandbox LLVM builds early"), restore
sandbox-only clang support.

The code that has been imported here is wrong anyway, because it doesn't
account for the fact that SRCARCH in barebox is never arm64, even for
CONFIG_ARM64. This is not trivially fixable either as this file is
included before CONFIG_ options are available, so we can't actually know
whether it's arm64 or arm32...

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 scripts/Makefile.clang | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
index e93ffb77aa10..4e4b620e1645 100644
--- a/scripts/Makefile.clang
+++ b/scripts/Makefile.clang
@@ -2,15 +2,7 @@
 # Individual arch/{arch}/Makefiles should use -EL/-EB to set intended
 # endianness and -m32/-m64 to set word size based on Kconfigs instead of
 # relying on the target triple.
-CLANG_TARGET_FLAGS_arm		:= arm-linux-gnueabi
-CLANG_TARGET_FLAGS_arm64	:= aarch64-linux-gnu
-CLANG_TARGET_FLAGS_mips		:= mipsel-linux-gnu
-CLANG_TARGET_FLAGS_powerpc	:= powerpc64le-linux-gnu
-CLANG_TARGET_FLAGS_riscv	:= riscv64-linux-gnu
-CLANG_TARGET_FLAGS_x86		:= x86_64-linux-gnu
-# This is only for i386 UM builds, which need the 32-bit target not -m32
-CLANG_TARGET_FLAGS_i386		:= i386-linux-gnu
-CLANG_TARGET_FLAGS_sandbox	:= $(CLANG_TARGET_FLAGS_$(SUBARCH))
+CLANG_TARGET_FLAGS_sandbox	:= $(shell $(CC) -print-target-triple)
 CLANG_TARGET_FLAGS		:= $(CLANG_TARGET_FLAGS_$(SRCARCH))
 
 ifeq ($(CLANG_TARGET_FLAGS),)
-- 
2.47.3



