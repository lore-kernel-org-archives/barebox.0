Delivery-date: Mon, 04 Aug 2025 20:29:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uizwb-0071xG-0q
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 20:29:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uizwa-0007Lw-Kt
	for lore@pengutronix.de; Mon, 04 Aug 2025 20:29:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ESJl342H5ITk5PJx8kHAQbJt3a1X1UqUQQXBsISKOVo=; b=GIIGhCbcsr1EsBJmvmOkvpqFxx
	gCCbNX74TnP47naXw/vrMUS4HYiiIzVTV7aSemYoHpiA5l+E7S6vgl6o3ThOUsHXjXhUTsHIdJ76B
	+QlCeOnFYcSmZVaGTPOydvs2WOWdjJ2iHLBkYOkiO7QkzzvbIto3mnd5GYF7tZiTrKKuUlSlJcMqY
	rTlMdSDMbEqa8u/xJH/N3E4FkdMufCH0//cG9X/KeZzDr87YBjTLjEcuRDHx7xWPgK5SaKwD3l1Hi
	25Lg4fSyvCZsxpckNzAQv21JzXW/5LJXZpCd673+jhvSQCCHSVvkjsXY+n3CeHpqUqzKY8fM9ri7I
	jDam7O9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uizwI-0000000BA0h-2G5s;
	Mon, 04 Aug 2025 18:29:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytT-0000000B5JI-1asT
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 17:22:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uiytQ-0000su-Go; Mon, 04 Aug 2025 19:22:36 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  4 Aug 2025 19:22:21 +0200
Message-Id: <20250804172233.2158462-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250804172233.2158462-1-a.fatoum@barebox.org>
References: <20250804172233.2158462-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_102239_416325_54AA8A0C 
X-CRM114-Status: GOOD (  14.03  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 01/13] mmu: explicitly map executable non-SDRAM regions with MAP_CODE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we have been setting eXecute Never on MAP_UNCACHED regions and
left it out for the default MAP_CACHED region.

We have at least three places, which depend on this to remap non-SDRAM
regions executable, so ROM code or newly uploaded code can be run.

Switch them over to use a new MAP_CODE mapping type. For now, this is
equivalent to MAP_CACHED, but with the addition of W^X support in
barebox, this will be required to avoid a prefetch abort when MMU
attributes are used.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/mach-imx/romapi.c | 3 ++-
 drivers/firmware/socfpga.c | 4 ++++
 drivers/hab/habv4.c        | 2 +-
 include/mmu.h              | 1 +
 4 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index 10af42f28a76..a4143d372ae8 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -299,7 +299,8 @@ void imx93_bootsource(void)
 		goto out;
 	}
 
-	arch_remap_range((void *)rom.start, rom.start, resource_size(&rom), MAP_CACHED);
+	/* TODO: restore uncached mapping once we no longer need this? */
+	arch_remap_range((void *)rom.start, rom.start, resource_size(&rom), MAP_CODE);
 
 	OPTIMIZER_HIDE_VAR(rom_api);
 
diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index 0f7d11abb588..13ddbe32c30c 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -361,11 +361,15 @@ static int socfpga_fpgamgr_program_finish(struct firmware_handler *fh)
 			   &socfpga_sdram_apply_static_cfg,
 			   socfpga_sdram_apply_static_cfg_sz);
 
+	remap_range((void *)CYCLONE5_OCRAM_ADDRESS, PAGE_SIZE, MAP_CODE);
+
 	sync_caches_for_execution();
 
 	ocram_func((void __iomem *) (CYCLONE5_SDR_ADDRESS +
 				     SDR_CTRLGRP_STATICCFG_ADDRESS));
 
+	remap_range((void *)CYCLONE5_OCRAM_ADDRESS, PAGE_SIZE, MAP_UNCACHED);
+
 	return 0;
 }
 
diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 4945e8930acb..83ee06a6aa46 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -689,7 +689,7 @@ int imx8m_hab_print_status(void)
 
 int imx6_hab_print_status(void)
 {
-	remap_range(0x0, SZ_1M, MAP_CACHED);
+	remap_range(0x0, SZ_1M, MAP_CODE);
 
 	imx6_hab_get_status();
 
diff --git a/include/mmu.h b/include/mmu.h
index 84ec6c5efb3e..669959050194 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -8,6 +8,7 @@
 #define MAP_UNCACHED	0
 #define MAP_CACHED	1
 #define MAP_FAULT	2
+#define MAP_CODE	MAP_CACHED	/* until support added */
 
 /*
  * Depending on the architecture the default mapping can be
-- 
2.39.5



