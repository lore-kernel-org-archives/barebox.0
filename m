Delivery-date: Wed, 17 May 2023 11:41:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfJ-0049tq-Db
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:41:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfG-0002kS-LE
	for lore@pengutronix.de; Wed, 17 May 2023 11:41:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k6WRjvMbpNDWTvab0g+WHggBl14zD7nx+BTqqpcCOvM=; b=dmT5MQ9vq8hYnH3Eo7UbxzFlvq
	NrR22zJgkW3UNqvl6p7JhMlmtaeUGkWsuST1BgWFFuF7XMOD9toxrqeIAIvaz9cL3lXFXN478GF3l
	CyPb/WXb2NKq4FdvRq6BQmmi/JnzRH/9NHTR7q5XMJcb90GbjI3mdASyEKigeht2uHeBmewaVoAMg
	jWElxdzZI+R7fKZqj3slQk9MreZxOGW4crW6QZKlEpX7C97gG41g01T2ElqMqFLRTqgB29k8Pg1PV
	EKLncxo/k6Rt5f+x5yjcMLjh+kF/PEeul6y7V94c1zYyrGZ07uXcGRpqUS6lxRklPTpy6woL+RqXi
	n5TwrvAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDeB-0096Ve-1Y;
	Wed, 17 May 2023 09:40:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDe2-0096Lj-0W
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:40:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=k6WRjvMbpNDWTvab0g+WHggBl14zD7nx+BTqqpcCOvM=; b=mEBuZ1RnVV/RjUqj/LdI8Jmm+i
	ZV977tadEXMKyeNJf0AHTa8q74Uk4NrbkBWvMa+iF7TnIxxI/vAw19LVil0rMwvHa8Z7bZhEK3mkK
	TFmCUR3dK1iNr/bgq69zsfMgqfGmUZvhUbxDcm6+wjAML3mXrtxeyRJuRgpVLLimwoBQCtd/OD9Vx
	y1sUb2ItS8ykY8B5jQaaj5voVZQD/NptM4qzqg614U9BCbbrPE3byALPmGU3CtRhclTK8k1cNCoj5
	v6F8yOFSso/4OfGwlRZQvCLG9XWem3vGT1IZWUuRK8xudp5dIi13gLXjKjINrMi0m0JeI8s0JBl8k
	zrFZkVGg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Y-00DAxv-1w
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:03:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4V-00040k-5z; Wed, 17 May 2023 11:03:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4U-000o7X-F6; Wed, 17 May 2023 11:03:46 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4Q-00GasS-1o; Wed, 17 May 2023 11:03:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:31 +0200
Message-Id: <20230517090340.3954615-26-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100351_136548_EF6E5DDF 
X-CRM114-Status: GOOD (  14.16  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 25/34] ARM: mmu: always do MMU initialization early when MMU is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Drop the CONFIG_MMU_EARLY and make early MMU initialization the default.

Doing so allows us for some simplifications in the MMU code as we have
less code pathes to care and think about.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c      | 2 +-
 arch/arm/cpu/uncompress.c | 2 +-
 common/Kconfig            | 9 ---------
 3 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 165d2d94e6..2e987ec41d 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -216,7 +216,7 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
 
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
-	if (IS_ENABLED(CONFIG_MMU_EARLY) && !IS_ENABLED(CONFIG_PBL_IMAGE)) {
+	if (IS_ENABLED(CONFIG_MMU) && !IS_ENABLED(CONFIG_PBL_IMAGE)) {
 		arm_early_mmu_cache_invalidate();
 		mmu_early_enable(membase, memsize);
 	}
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index e471dd87f9..a481c4634d 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -81,7 +81,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
 
-	if (IS_ENABLED(CONFIG_MMU_EARLY))
+	if (IS_ENABLED(CONFIG_MMU))
 		mmu_early_enable(membase, memsize);
 
 	free_mem_ptr = arm_mem_early_malloc(endmem);
diff --git a/common/Kconfig b/common/Kconfig
index ac3df75acb..c6008f125b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -185,15 +185,6 @@ config MMU
 	  to enable the data cache which depends on the MMU. See Documentation/mmu.txt
 	  for further information.
 
-config MMU_EARLY
-	bool "Enable MMU early"
-	depends on ARM
-	depends on MMU
-	default y
-	help
-	  This enables the MMU during early startup. This speeds up things during startup
-	  of barebox, but may lead to harder to debug code. If unsure say yes here.
-
 config HAVE_CONFIGURABLE_TEXT_BASE
 	bool
 
-- 
2.39.2



