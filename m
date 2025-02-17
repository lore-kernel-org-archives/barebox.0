Delivery-date: Mon, 17 Feb 2025 11:55:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjymQ-003RzX-1o
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 11:55:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjymP-0000H4-Dc
	for lore@pengutronix.de; Mon, 17 Feb 2025 11:55:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=N45chUbzJXUhcVLOepL3fYiDqvLfksQ1Ji1mLMcl5Ns=; b=GDr2mznrnlckpO8YfFugACeciO
	A3upCQX2pBY5/kLSy5aVrpV5Jk4nU/12nE76cJwv7/BmaUk1d8dIdkbxZt85sei+3JEv4LHyFlIjo
	FPFRP83o8zigKnBX+aj0J1KICmoo8iZzu7HLsVOnHEafspzr9dYsiN6FJmqkJJVIPfQpALKKj5ZOQ
	bqaXx5XNx2ZudwAeO7ior+9ySKrt96RFk27Gan5l3yChp2JjdaDYjS3zi0N/N/AUVpJDS0HgtxE0A
	nAZQNLHLQWmIIH+luk9oJByBxiwR2KyY4bX9aE6fT6pqtK4MLXchXu0ALjYA10tKQK9rHb6qh+VEZ
	5U9oM6Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjyly-00000004D2J-2RRV;
	Mon, 17 Feb 2025 10:54:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjydj-000000049p7-2GV3
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 10:46:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjydg-0006az-TT; Mon, 17 Feb 2025 11:46:12 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjydg-001OO1-2K;
	Mon, 17 Feb 2025 11:46:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjydg-007huG-22;
	Mon, 17 Feb 2025 11:46:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Feb 2025 11:46:08 +0100
Message-Id: <20250217104611.1836442-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_024615_579325_8B66A15D 
X-CRM114-Status: UNSURE (   8.45  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] sandbox: make CC_HAS_LINUX_I386_SUPPORT depend on GCC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CC_HAS_LINUX_I386_SUPPORT enables build for 32-bit with a 64-bit GCC
toolchain. This seems not to work correctly on clang:

  CC      arch/sandbox/os/common.o
  In file included from arch/sandbox/os/common.c:23:
  In file included from /usr/lib/llvm-16/lib/clang/16/include/limits.h:21:
  /usr/include/limits.h:26:10: fatal error:
                               'bits/libc-header-start.h' file not found
  #include <bits/libc-header-start.h>

So disable it for now.

Fixes: f41c4d7c5649 ("Makefile: add LLVM/clang support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 0b6cc75098be..c1a51d4f021d 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -40,6 +40,7 @@ config CC_IS_64BIT
 
 config CC_HAS_LINUX_I386_SUPPORT
 	def_bool $(cc-option,-m32) && $(ld-option,-m elf_i386)
+	depends on CC_IS_GCC
 
 config 64BIT
 	bool
-- 
2.39.5



