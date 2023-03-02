Delivery-date: Thu, 02 Mar 2023 12:17:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgwg-006UpE-2y
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 12:17:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgwe-0001gp-Vg
	for lore@pengutronix.de; Thu, 02 Mar 2023 12:17:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zj0fSfveV77mhF5rNj9utFMjl9uGqTT6zAGkGBwLNjw=; b=XkgYKI4nS7G2GiDsAL5UooU7o2
	9NO9ljAAf2ztJwtL85OgwUEYrx0o+4gq8XufhB7BRHHatc0x0+i9bbV23u/qXjpBixp7t/W5hiqay
	hajkw27BaWNCHvA80qxt5DpJOK9P9Vz56i+eK0e5pyZIv7lEsjxTOpUlPTDpYDB1bjZEtrIdYkgFh
	8NwC5t6rXE/EttqHWKmiMayviNk0XowCfK3vgKsB67ouXrddoIM9v4Z8i7WF9G51YmGZhqQKne6Ga
	/SEY6vI+skMmfj/Xe7mrtkkS/NkcE0X6MwmU6gT0KeSnPZ3W3aOXoY7uLBUIDHl1wvaoX+fc4XqMi
	jxCY3eLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgv3-001sJL-G0; Thu, 02 Mar 2023 11:16:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgux-001sFz-7g
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 11:16:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguw-00017a-1j; Thu, 02 Mar 2023 12:16:10 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguv-001Jcz-9Q; Thu, 02 Mar 2023 12:16:09 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgut-004QVO-TS; Thu, 02 Mar 2023 12:16:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 12:15:57 +0100
Message-Id: <20230302111606.1054037-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302111606.1054037-1-s.hauer@pengutronix.de>
References: <20230302111606.1054037-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_031611_307976_A4FC9A76 
X-CRM114-Status: GOOD (  10.51  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/13] ARM: Drop HAVE_MACH_ARM_HEAD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

HAVE_MACH_ARM_HEAD stands in the way of adding multi arch support,
as barebox-arm-head.h compiles differently on different archs.
There are no users left, so remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                        | 3 ---
 arch/arm/include/asm/barebox-arm-head.h | 4 ----
 2 files changed, 7 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 1281b8be38..6aa0ec4074 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -16,9 +16,6 @@ config ARM_LINUX
 	default y
 	depends on CMD_BOOTZ || CMD_BOOTU || BOOTM
 
-config HAVE_MACH_ARM_HEAD
-	bool
-
 config ARM_USE_COMPRESSED_DTB
        bool
        select USE_COMPRESSED_DTB
diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index 1a1d58c1aa..135d0585b1 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -19,9 +19,6 @@ void barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2);
 #define ARM_HEAD_SPARE_MARKER	0x55555555
 
 #ifdef CONFIG_CPU_32
-#ifdef CONFIG_HAVE_MACH_ARM_HEAD
-#include <mach/barebox-arm-head.h>
-#else
 static inline void __barebox_arm_head(void)
 {
 	__asm__ __volatile__ (
@@ -71,7 +68,6 @@ static inline void barebox_arm_head(void)
 	);
 }
 #endif
-#endif
 
 #endif /* __ASSEMBLY__ */
 
-- 
2.30.2



