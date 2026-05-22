Delivery-date: Fri, 22 May 2026 13:00:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQNc2-002ZtP-2e
	for lore@lore.pengutronix.de;
	Fri, 22 May 2026 13:00:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQNc2-0002LT-2t
	for lore@pengutronix.de; Fri, 22 May 2026 13:00:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FzCTStZ2eTWwcv4xIQoKeMikDIbbG4+LU/yBUbgh7xQ=; b=HNjYSgKsWRrGILReJBqlTCFGYv
	yL3ZOGIPplyJrPzpUa2ad23ogdIOUwV+ZtmKT/D1LgYewQY7lKL/M5bv4VV7cgpiMaRDTQX4ianwm
	Eyb5fYs+KgGzRz0pfLDH7OI22J40fmFxSWCAB+sVPLHYTLvEu7K60XjCtcutDAjVK8qz2eIzzoYZ8
	UDuz/yU/hQvLidmc0+0yqybV4AboBal8xo7A0VAczUkajgvd7LfiPcRYyqyeCd3SBayWZwOrunza1
	Ll1+xCFpvEguDaeXEuUxu8pBCX49g9dI/ahjXde3TM7EvCGlcuKcdcWqMf1bu9s3G/EhQtk7ODvxc
	8Zq9KHHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNam-0000000AZSC-2oQ7;
	Fri, 22 May 2026 10:59:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNah-0000000AZP3-35lV
	for barebox@lists.infradead.org;
	Fri, 22 May 2026 10:58:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNag-0001ul-8u; Fri, 22 May 2026 12:58:54 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNaf-001FnK-26;
	Fri, 22 May 2026 12:58:54 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNag-0000000BFtq-0UJx;
	Fri, 22 May 2026 12:58:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 22 May 2026 12:53:12 +0200
Message-ID: <20260522105852.2681680-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260522105852.2681680-1-a.fatoum@pengutronix.de>
References: <20260522105852.2681680-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_035855_777235_F3BC1B7A 
X-CRM114-Status: GOOD (  13.24  )
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
Subject: [PATCH master 6/6] ARM: place PBL malloc area at start of barebox proper malloc area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The early PBL malloc area used by the Rockchip code overlaps the region
used for OP-TEE. Moving it a bit lower would overlap the region occupied
by the scratch area.

With the switch to CONFIG_MALLOC_OFFSET, we can compute the start of the
malloc area in barebox proper without knowing how big barebox will
eventually be, so make use of that and always place the PBL malloc area
exactly at the start of the eventual barebox proper memory area.

The memory will automatically be reclaimed when the TLSF allocator is
instantiated and we will be sure not to overwrite anything by allocating
in PBL.

Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Fixes: 76b1f31275fe ("ARM: rockchip: initialize PBL malloc")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/common.c              | 4 ++--
 arch/arm/cpu/uncompress.c          | 2 +-
 arch/arm/include/asm/barebox-arm.h | 6 ++++--
 arch/arm/mach-rockchip/atf.c       | 2 +-
 4 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 6b82ee8b810c..f03a39cc193a 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -114,8 +114,8 @@ void print_pbl_mem_layout(ulong membase, ulong endmem, ulong barebox_base)
 #endif
 	printf("arm_mem_barebox_image = 0x%08lx+0x%08lx\n",
 	       barebox_base, arm_mem_barebox_image_end(endmem) - barebox_base);
-	printf("arm_mem_early_malloc  = 0x%08lx+0x%08x\n",
-	       barebox_base - PBL_MALLOC_SIZE, PBL_MALLOC_SIZE);
+	printf("pbl_malloc area       = 0x%08lx+0x%08x\n",
+	       barebox_malloc_base(membase, endmem - membase), PBL_MALLOC_SIZE);
 	printf("membase               = 0x%08lx+0x%08lx\n",
 	       membase, endmem - membase);
 }
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 61bcba6e8549..2e5d60f6a39d 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -75,7 +75,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	handoff_data = (void *)barebox_base + ALIGN(uncompressed_len, 8) + MAX_BSS_SIZE;
 
-	pbl_malloc_init(barebox_base - PBL_MALLOC_SIZE, PBL_MALLOC_SIZE);
+	pbl_malloc_init(barebox_malloc_base(membase, memsize), PBL_MALLOC_SIZE);
 
 #ifdef DEBUG
 	print_pbl_mem_layout(membase, endmem, barebox_base);
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 38cceba010ed..f8fe377284f0 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -95,10 +95,12 @@ void *barebox_arm_boot_dtb(void);
  *                       + BSS) rounded to SZ_1M
  *                                   ↓
  *  ---------------------- arm_mem_barebox_image() ---------------------
+ *                                   ↕
+ *  ----------------------- pbl_malloc area end ------------------------
  *                                   ↑
- *                                SZ_128K
+ *                            PBL_MALLOC_SIZE
  *                                   ↓
- *  ------------------------ arm_mem_early_malloc ----------------------
+ *  ----------------------- pbl_malloc area start ----------------------
  */
 void print_pbl_mem_layout(ulong membase, ulong endmem, ulong barebox_base);
 
diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 14797a1e0601..f9dbc8b20c5a 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -173,7 +173,7 @@ static void rockchip_atf_load_bl31(void *fdt)
 	unsigned long bl31_ep;
 
 	mmu_early_enable(membase[0], memsize[0]);
-	pbl_malloc_init(membase[0] + memsize[0] - PBL_MALLOC_SIZE, PBL_MALLOC_SIZE);
+	pbl_malloc_init(membase[0], memsize[0]);
 
 	bl31_ep = load_elf64_image_phdr(&bl31);
 
-- 
2.47.3



