Delivery-date: Thu, 28 May 2026 13:07:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSYa0-004iXZ-1F
	for lore@lore.pengutronix.de;
	Thu, 28 May 2026 13:07:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSYZy-0003aE-4l
	for lore@pengutronix.de; Thu, 28 May 2026 13:07:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zUTZef7MT2svMQhA7yzpPfBUVB2PxyuEPbpEZtSbRLA=; b=ePQBZbLGamXm38cKHoGb7e/c1z
	KdL6yltthSBzwub05WRtnm884SNPQfrVORhnP7Du9ZrgmLImWpqRREON1d/F+OxRkKAqqo6Hi7K4D
	HyE2C9IyA0QtqfJ2NjI3FDHHULoy/6PoGAHKR1ozaX1U9ZIpwYxnIePghx/OI00REjf/K9BTCyOWO
	3EpPISScc8vblHS13T1bFiQLO3sjqNwwtJ0kBFqhrRpmZAEAdW2ovGw9xuah/CSQA21csTe/WdQJL
	sb1QH/D5t6bVfsUC0e2FeAsT3/bgoBLLnnIm6rXW+nq18Wi67dTrJV+UM9BTmmNDTrNvVwjS2rNCu
	J3RfZ7xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSYX2-00000005dDu-1nBR;
	Thu, 28 May 2026 11:04:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSYWz-00000005dC2-2ioN
	for barebox@lists.infradead.org;
	Thu, 28 May 2026 11:04:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSYWx-0002xo-TZ; Thu, 28 May 2026 13:04:03 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSYWx-002G8w-0t;
	Thu, 28 May 2026 13:04:03 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSYWx-0000000GSHZ-38he;
	Thu, 28 May 2026 13:04:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 28 May 2026 13:02:17 +0200
Message-ID: <20260528110401.3920904-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260528110401.3920904-1-a.fatoum@pengutronix.de>
References: <20260528110401.3920904-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_040405_708624_3C41E233 
X-CRM114-Status: GOOD (  12.34  )
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
Subject: [PATCH master v3 3/5] ARM64: switch to CONFIG_BAREBOX_MEMORY_OFFSET
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for using the barebox proper malloc area in PBL too,
switch over ARM64 to CONFIG_BAREBOX_MEMORY_OFFSET as this allows
calculating the malloc area start without needing to know the eventual
size of barebox proper itself.

The switch for ARM32 is more involved, so that's omitted for now without
a comment explaining why. Once we have migrated the xload code to not
use the malloc area for second stage placement and weeded out the
bugs[1], we should be good to go[1].

[1]: On a Beagle Bone Black, despite first stage being moved out of
malloc area, I get a data abort before barebox_pbl_start...

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig     |  3 ++-
 arch/arm/cpu/start.c | 10 ++++++++++
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 53bddd55e179..c7a883338b0b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -20,7 +20,6 @@ config ARM
 	select ARCH_HAS_DMA_WRITE_COMBINE
 	select HAVE_EFI_LOADER if MMU # for payload unaligned accesses
 	select PBL_IMAGE_ELF
-	select ARCH_HAS_MALLOC_SIZE
 	default y
 
 config ARCH_LINUX_NAME
@@ -34,10 +33,12 @@ config ARCH_MKIMAGE_NAME
 
 config ARM32
 	def_bool CPU_32
+	select ARCH_HAS_MALLOC_SIZE
 
 config ARM64
 	def_bool CPU_64
 	select ARCH_HAS_RELR
+	select ARCH_HAS_BAREBOX_MEMORY_OFFSET
 
 config ARCH_TEXT_BASE
 	hex
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index bbcf465be4db..6a9941275c12 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -156,6 +156,15 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 		armv7r_mpu_init_coherent(malloc_end, REGION_8MB);
 	}
 
+#ifdef CONFIG_ARM64
+	malloc_start = barebox_malloc_base(membase, memsize);
+#else
+	/* TODO: migrate ARM32 to barebox_malloc_base(), once legacy xload
+	 * code has been migrated to loadables; On boards like the beaglebone,
+	 * a separate first stage barebox loads the second stage into RAM
+	 * and executes it from there, so reusing the malloc area in second
+	 * stage PBL will mangle the second stage code.
+	 */
 	/*
 	 * Maximum malloc space is the Kconfig value if given
 	 * or 1GB.
@@ -169,6 +178,7 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 		if (malloc_end - malloc_start > SZ_1G)
 			malloc_start = malloc_end - SZ_1G;
 	}
+#endif
 
 	pr_debug("initializing malloc pool at 0x%08lx (size 0x%08lx)\n",
 			malloc_start, malloc_end - malloc_start);
-- 
2.47.3



