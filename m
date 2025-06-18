Delivery-date: Wed, 18 Jun 2025 18:02:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRvEy-008egG-0r
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 18:02:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRvEx-0006C3-08
	for lore@pengutronix.de; Wed, 18 Jun 2025 18:02:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kdOYGsGZP+uRx/B3dzBHyq8MXvP4aRDHt8y9h8xvi2I=; b=qY52JIevNDI2xq/CBrXu5UhMh8
	vYFud5ZToQ3w0LtMmAg9KlXfBCrk2kxtoBElNemGY06y+Zap0cOo3jY5TiSMeKe0TXnPXTIaP3IL0
	jHfH5WJ/7rysc3UKEx9HAwAjiKEFQyj1Imm+EVoe9hcp5pkaAPSRjgv0qxRaA0H2RvFmch/FP/Y5w
	sEKLKOJhs6TO9FIAFOD1JDBcs1sU7VLm14D08lrm3RQaQiiWqnIT6wT8V5Hnm/Baoi2DB1ks/gdHN
	ESk9I1d/tV7ESGoqZKNdTYTFhzuQXLEJVbnOoda4gTnw1SpYuzVshA8QxhT2ZL1LQ7koluD1olotZ
	+6Gm+Giw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRvEV-0000000AfcY-3l5e;
	Wed, 18 Jun 2025 16:01:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRs23-0000000A9VE-0tSp
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 12:36:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uRs1z-0008Id-Ix; Wed, 18 Jun 2025 14:36:43 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 18 Jun 2025 14:36:42 +0200
Message-Id: <20250618123642.1432610-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_053647_252148_798CAC7B 
X-CRM114-Status: GOOD (  13.48  )
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
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mmu: explicitly map executable non-SDRAM regions with MAP_CODE
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
---
Sascha, I think this should be ordered before your MMU patches to avoid
the known regressions. Let's see what else there is. :)
---
 arch/arm/mach-imx/romapi.c | 3 ++-
 drivers/firmware/socfpga.c | 3 ++-
 drivers/hab/habv4.c        | 2 +-
 include/mmu.h              | 1 +
 4 files changed, 6 insertions(+), 3 deletions(-)

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
index 0f7d11abb588..4b10ca009798 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -353,7 +353,8 @@ static int socfpga_fpgamgr_program_finish(struct firmware_handler *fh)
 		return status;
 	}
 
-	remap_range((void *)CYCLONE5_OCRAM_ADDRESS, PAGE_SIZE, MAP_CACHED);
+	/* TODO: restore uncached mapping once we no longer need this? */
+	remap_range((void *)CYCLONE5_OCRAM_ADDRESS, PAGE_SIZE, MAP_CODE);
 
 	dev_dbg(&mgr->dev, "Setting APPLYCFG bit...\n");
 
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



