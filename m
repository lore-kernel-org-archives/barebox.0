Delivery-date: Mon, 01 Jul 2024 12:09:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODyW-000Sug-0r
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 12:09:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODyV-0006Y8-Jl
	for lore@pengutronix.de; Mon, 01 Jul 2024 12:09:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6JC/s9H7v3Q5Cwm8TTw4f5iQ+k3i9lkv/z9VCCvaOhQ=; b=rbbEN0gy/QK5cZYi1xyAafWdYy
	HjZh8MEBt0nNFaIIJFrVTMMsbC3MbiHTnf0VUlEs94HeKIrw6J4ezPF/vjrjDUCF3oNjudAz3cXsV
	0ZeALe3bRV5W8FCp7bN7x30+uQxiz9oa4qLy/n5o0sVugwH+ElnS9OzNzXYju+nsXk8GcSqUAW0AR
	Khfrv13hlyw6BSRE+TGA53EcigC83zbx7jnkaWslx5r4lRU0VFGduE6JKt9KL+TBkQiu24JUL+tbg
	hLYQgLxGp/VoBQJXNTFMLMH1x7L2tIPxwiur3pKeMTR0C2tU1GU6Y9pp7Xi21ElAI53bUEoajHk0X
	0xjl1Euw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODy5-00000002ZaO-1zAz;
	Mon, 01 Jul 2024 10:09:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODy2-00000002ZYv-1LUV
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 10:09:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sODy0-0006Pz-QG; Mon, 01 Jul 2024 12:09:00 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sODy0-006LU0-DQ; Mon, 01 Jul 2024 12:09:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sODy0-00GGRv-13;
	Mon, 01 Jul 2024 12:09:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 12:08:59 +0200
Message-Id: <20240701100859.3876429-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_030902_383778_2803B0B9 
X-CRM114-Status: GOOD (  12.35  )
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
Subject: [PATCH master] ARM: fix OP-TEE DT reservation clashing with barebox area at endmem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The barebox area reservation is meant to fix the issue of having gaps
between early barebox-related reservations that might be clobbered by
later calls to request_sdram_region().

The OP-TEE memory region, if it exists, is not a barebox-related
reservation and treating it as such will clash if the reservation is
also listed in the device-tree:

  WARNING: of-reserved-mem: couldn't request reserved sdram region 0xdd000000-0xdfffffff

This failed reservation can lead to a failure to boot, e.g. on
STM32MP13:

  WARNING: of-reserved-mem: couldn't request reserved sdram region 0xdd000000-0xdfffffff
  E/TC:0   tzc_it_handler:26 TZC permission failure
  E/TC:0   dump_fail_filter:420 Permission violation on filter 0
  E/TC:0   dump_fail_filter:425 Violation @0xde03c530, non-secure privileged read, AXI ID 5c0
  E/TC:0   Panic at core/arch/arm/plat-stm32mp1/plat_tzc400.c:30 <tzc_it_handler>
  E/TC:0   TEE load address @ 0xde000000
  E/TC:0   Call stack:

Fix this by defining the end of the barebox area to not include any
OP-TEE memory regions.

Fixes: 3f7b6146669c ("ARM: cpu: start: register barebox memory area")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/start.c               | 3 ++-
 arch/arm/include/asm/barebox-arm.h | 7 ++++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 2d60d190fe7c..ece9512a79f1 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -170,7 +170,8 @@ __noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,
 	pr_debug("initializing malloc pool at 0x%08lx (size 0x%08lx)\n",
 			malloc_start, malloc_end - malloc_start);
 
-	register_barebox_area(barebox_base, endmem - barebox_base);
+	register_barebox_area(barebox_base,
+			      arm_mem_barebox_image_end(endmem) - barebox_base);
 
 	kasan_init(membase, memsize, malloc_start - (memsize >> KASAN_SHADOW_SCALE_SHIFT));
 
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 566986e515a4..6071c6435535 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -59,7 +59,7 @@ void *barebox_arm_boot_dtb(void);
  *                                   ↑
  *	        OPTEE_SIZE (depends on CONFIG_OPTEE_SIZE)
  *                                   ↓
- *  ------------------------- arm_mem_optee() -------------------------
+ *  ---------- arm_mem_optee() / arm_mem_barebox_image_end() ----------
  *                                   ↑
  *                                 SZ_32K
  *                                   ↓
@@ -97,6 +97,11 @@ static inline unsigned long arm_mem_optee(unsigned long endmem)
 	return endmem - OPTEE_SIZE;
 }
 
+static inline unsigned long arm_mem_barebox_image_end(unsigned long endmem)
+{
+	return arm_mem_optee(endmem);
+}
+
 static inline unsigned long arm_mem_scratch(unsigned long endmem)
 {
 	return arm_mem_optee(endmem) - SZ_32K;
-- 
2.39.2



