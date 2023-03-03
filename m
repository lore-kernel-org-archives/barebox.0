Delivery-date: Fri, 03 Mar 2023 10:27:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1hW-007Noh-Q5
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:27:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1hW-0003HC-M3
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:27:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zrFQOlEHw1VprsXjAbC32cpeOFSy3Defn/NPf5fwP3Y=; b=sBUGVHJ9vDbIHKk1b2bDW2Pe7G
	l5NDOTIWjE0JdxKzsfBk+IXsdEuM2G9o7Jfzbk0JiH8L1cFX+julmyy5iJTThWjftKEnCLBgOPine
	mT9Dtxw0Sl0VLZEKtNh6qLkYdZZYeprHrutCOY32GIPdxNXxptDtqOlSkNCbkbxMKcpvlm0P4dwS3
	vELQvWKYaHBJ2g6/Ls0o/EyqBNJhgx0yXZRS1QhtHAm0vBaci7fX7w5zfZ6xCJV072QA/L4ZBVUsn
	ogv/ZiwGMTT9WR4bjGmp3XQyojLaapxiPTs2GgCnCD2KtRlk/Pstia1/bhjM8qwThSFoogLonkiK9
	yWShZ6hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1gJ-005hjR-1u; Fri, 03 Mar 2023 09:26:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bl-005eQq-Ta
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bk-0000Jx-Lr; Fri, 03 Mar 2023 10:21:44 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bk-001WkE-1j; Fri, 03 Mar 2023 10:21:44 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2hE-MT; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:04 +0100
Message-Id: <20230303092131.3063587-24-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012146_006536_35C0BAB4 
X-CRM114-Status: UNSURE (   9.08  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 23/50] ARM: Drop mach dir include path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

arch/arm/mach-*/include/mach no longer exists, drop the include path.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile               | 4 ----
 arch/arm/include/asm/debug_ll.h | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 6d4bfa8c45..da65dae548 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -109,10 +109,6 @@ machine-$(CONFIG_ARCH_UEMD)		:= uemd
 machine-$(CONFIG_ARCH_ZYNQ)		:= zynq
 machine-$(CONFIG_ARCH_ZYNQMP)		:= zynqmp
 
-machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
-
-KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
-
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 
 KBUILD_CPPFLAGS += -DTEXT_BASE=$(TEXT_BASE)
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 2e1d6ba3e4..1844b85c2e 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -50,10 +50,6 @@
 #include <mach/clps711x/debug_ll.h>
 #elif defined CONFIG_ARCH_AT91
 #include <mach/at91/debug_ll.h>
-#else
-#ifndef CONFIG_ARCH_ARM64_VIRT
-#include <mach/debug_ll.h>
-#endif
 #endif
 
 #endif
-- 
2.30.2



