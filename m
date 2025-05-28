Delivery-date: Wed, 28 May 2025 16:20:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHdz-001DQ6-1c
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 16:20:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHdy-0007kI-F8
	for lore@pengutronix.de; Wed, 28 May 2025 16:20:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C7Gbt8YwiQsQM2QLzHMgR6X/7dNMrFZopgHacc1CUvo=; b=ytK3UTMpJxFXlUuFShusk6Ixnl
	gMS67N/hYPseR72+bNMHbHKmKZuLNksDMV9rodyXS/yld3ZQ0NBYBZWObl3hkBIGFSjLqJ36ttLpQ
	8sqVjOGevXGwPKG1g0brO+2HgF4vSrT9T+VEcotGsNsbCsGhFtB44UwAelRG/V/BOGSwG7CD/PKyb
	wWSHYM0+qacw+vsNWKsMluhqj3FjGH1Qwdfz9l2jEZ/ke+r2c+WWvdb6JeEQc2DTxYTF/6+C54jh6
	+DM5AydJkQ4D84EtvbtdIPKt2s8QRFIWIpN9+dKo9/fDC6JcWCaYAvhAsVszHewAGhGO2FgiMtKaj
	GSLLXPKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHdS-0000000DNCN-3WDb;
	Wed, 28 May 2025 14:20:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHVL-0000000DKyD-2LJb
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 14:11:42 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uKHVI-00011O-TT; Wed, 28 May 2025 16:11:36 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 28 May 2025 16:11:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250528-rk3588-optee-v2-6-63070238dd13@pengutronix.de>
References: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
In-Reply-To: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Marco Felsch <m.felsch@pengutronix.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_071139_636977_C42CAA71 
X-CRM114-Status: GOOD (  12.88  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 6/9] ARM: add CONFIG_SCRATCH_SIZE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_SCRATCH_SIZE allows to configure the size of the scratch area for
passing data from the PBL to barebox proper.

It may be also used to pass data from the PBL to other firmware or use
it for passing data back to barebox, the size should be configurable.
Since this may be more than 32K, the size should be configurable.

Since other sizes in the memory layout are configurable as well, the
memory layout isn't static.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:
- new patch
---
 arch/arm/include/asm/barebox-arm.h  | 4 ++--
 common/Kconfig                      | 5 +++++
 include/asm-generic/memory_layout.h | 1 +
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 7d35e88c812393d45e331f238baecfa91cbbe299..1ad863681a04b3172be5ecd3f7fbc5ca11f3c3d7 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -61,7 +61,7 @@ void *barebox_arm_boot_dtb(void);
  *                                   ↓
  *  ---------- arm_mem_optee() / arm_mem_barebox_image_end() ----------
  *                                   ↑
- *                                 SZ_32K
+ *                              SCRATCH_SIZE
  *                                   ↓
  *  ------------------------ arm_mem_scratch() ------------------------
  *                                   ↑
@@ -105,7 +105,7 @@ static inline unsigned long arm_mem_barebox_image_end(unsigned long endmem)
 
 static inline unsigned long arm_mem_scratch(unsigned long endmem)
 {
-	return arm_mem_optee(endmem) - SZ_32K;
+	return arm_mem_optee(endmem) - SCRATCH_SIZE;
 }
 
 static inline unsigned long arm_mem_stack(unsigned long endmem)
diff --git a/common/Kconfig b/common/Kconfig
index fe50da8f3084a9d4f3b659b8a5db049b3324ce0a..4186c499b3a9012ce2ba8c7a0909c7b2bffa42bd 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -300,6 +300,11 @@ config MALLOC_SIZE
 	default 0x400000
 	prompt "malloc area size"
 
+config SCRATCH_SIZE
+	hex
+	default 0x8000
+	prompt "Scratch size"
+
 config MALLOC_ALIGNMENT
 	hex
 	default 8
diff --git a/include/asm-generic/memory_layout.h b/include/asm-generic/memory_layout.h
index 6af1db8113f2226bc30710cee35e2aecf290b15c..39af73849796fd1954521f0b53bf38fcb0984cef 100644
--- a/include/asm-generic/memory_layout.h
+++ b/include/asm-generic/memory_layout.h
@@ -28,6 +28,7 @@
 #define HEAD_TEXT_BASE MALLOC_BASE
 #define MALLOC_SIZE CONFIG_MALLOC_SIZE
 #define STACK_SIZE  CONFIG_STACK_SIZE
+#define SCRATCH_SIZE	CONFIG_SCRATCH_SIZE
 
 /*
  * This generates a useless load from the specified symbol

-- 
2.39.5



