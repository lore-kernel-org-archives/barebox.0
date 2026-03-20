Delivery-date: Fri, 20 Mar 2026 09:31:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3VGq-002xrp-3B
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 09:31:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3VGq-0003HQ-CJ
	for lore@pengutronix.de; Fri, 20 Mar 2026 09:31:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WSnfhTIGluBx61tvkVNCFja2ANJHBZFbvt2IDjvi+Aw=; b=XmsKEGh7m2U0A6XyP51I4d89w9
	1/F1P0FBF0Pu8F9U3+idLz14t+HE0LpBa2gF8/aLRIuy/Wh8ZtcL5MBBbyAoJouJcMaSSkQdTpv5z
	pac6IRi3B+ncf99dmh5RJEIgQNukJfBOB3HozqetU80X0qh4uOEI9sg4JSpjlYk7HsnlDPhK44Rl4
	yuVZkoASoEd5hWg/69RIlzX2UxqyG9y53C+xWDlvj4Ye50ONfCT8zmuCpKOBzwghnwql35dmJIPrt
	Nn8pb6SQIr+K1Dyp9SCNIW1oIIEOi8ENmjtE42kVjKf3bkXrEzcMvgqmqaNeru88XyV++3Ha5y9XR
	ufaWQndg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3VGO-0000000CLon-018m;
	Fri, 20 Mar 2026 08:31:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3VGL-0000000CLnD-3509
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 08:31:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGK-00031Z-11; Fri, 20 Mar 2026 09:31:20 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGJ-001DBT-2C;
	Fri, 20 Mar 2026 09:31:19 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGJ-0000000DiE9-2QMK;
	Fri, 20 Mar 2026 09:31:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Mar 2026 09:31:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-compressed-firmware-rockchip-v1-6-7d03c7e39d2f@pengutronix.de>
References: <20260320-compressed-firmware-rockchip-v1-0-7d03c7e39d2f@pengutronix.de>
In-Reply-To: <20260320-compressed-firmware-rockchip-v1-0-7d03c7e39d2f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773995479; l=1525;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=iN4hRiw1Rs+YVZ3edWvzcME2BOMu2ADe2PCIrmqgO1Y=;
 b=nnvPvJXu9MP226G/GAI8/h77EsBsALiKCrLKjkQPLedo/TKJL+L7Xxs6zChX5GJuFiSI0cn2d
 izckvRxzj5KCKipXYq1tOZqm7UrJQoRECG/nrSfvqfrs+3J2pRQuKNl
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_013121_775641_5F45D2F6 
X-CRM114-Status: GOOD (  11.12  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] ARM: rockchip: atf: enable MMU in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Using compressed binaries for TF-A and OP-TEE comes with the penalty of
additional startup time. Enable the MMU before uncompressing to speed
that up significantly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 4e1b9f6a21..aa2733bdac 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -7,6 +7,7 @@
 #include <tee/optee.h>
 #include <asm/atf_common.h>
 #include <asm/barebox-arm.h>
+#include <asm/mmu.h>
 #include <asm-generic/memory_layout.h>
 #include <asm-generic/sections.h>
 #include <mach/rockchip/dmc.h>
@@ -144,7 +145,6 @@ static struct fwobj bl32; /* OP-TEE in barebox image */
 			get_builtin_firmware_compressed(tee_bin, &bl32);	\
 	} while (0)
 
-
 static int rockchip_create_optee_fdt(void *buf, int bufsize)
 {
 	unsigned long base[ROCKCHIP_MAX_DRAM_RESOURCES];
@@ -171,6 +171,8 @@ static void rockchip_atf_load_bl31(void *fdt)
 {
 	unsigned long bl31_ep;
 
+	mmu_early_enable(membase[0], membase[0] + memsize[0]);
+
 	bl31_ep = load_elf64_image_phdr(&bl31);
 
 	if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_OPTEE))
@@ -181,6 +183,8 @@ static void rockchip_atf_load_bl31(void *fdt)
 			"r" ((ulong)barebox_load_address - 16) :
 			"cc");
 
+	mmu_disable();
+
 	bl31_entry(bl31_ep, optee_load_address,
 		   barebox_load_address, (uintptr_t)fdt);
 }

-- 
2.47.3



