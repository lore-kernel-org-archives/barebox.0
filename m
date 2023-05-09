Delivery-date: Tue, 09 May 2023 06:52:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwFKx-00B84G-61
	for lore@lore.pengutronix.de; Tue, 09 May 2023 06:52:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwFKv-0003kn-7k
	for lore@pengutronix.de; Tue, 09 May 2023 06:52:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wWd6Kp86GSShzyKGbFPID1J47hg/vcCM1bI9EFupPqQ=; b=wQ6RN8kmhKV5KM+1xM9vrweCoo
	nlHQ8h/Dz+xVmYPVAFYNkBbUClK9zaF+TzkCj5FpslFgjYKJHp7N0QP00q+9h1+b4lBqFiNgsvR3F
	RkGWr3ef0Ujv/gXGqjjMmpNW+nek1uEOf9ls75wx/RZwtZvD18MpeKKq6H0qqe2UUNkWWhjPz8xNn
	O6gerjvJoWkVqrURvsNX3m2JkSBv5Xpwa8cpe92pS2rVJrK9+YlhPqp69FpdFgpllCVk4XHLV8i+7
	TTlRZ5ofOrRfEET36xwuk/o8/xyqvxxf9Dg9zdUQ8sSReuyp9SzlDnNyyve2FEVY38nGi9oSoUv78
	OkK+wGVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwFJY-002HVI-2k;
	Tue, 09 May 2023 04:51:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwFJU-002HUE-2R
	for barebox@lists.infradead.org;
	Tue, 09 May 2023 04:51:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pwFJR-0003dR-K5; Tue, 09 May 2023 06:50:57 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pwFJQ-0029UB-Vi; Tue, 09 May 2023 06:50:56 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pwFJQ-002WYC-Aa; Tue, 09 May 2023 06:50:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 May 2023 06:50:55 +0200
Message-Id: <20230509045055.601772-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_215100_819498_A994ABC4 
X-CRM114-Status: GOOD (  15.28  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: rockchip: bbu: Fix getting active boot slot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With some TF-A versions the IRAM where the boot information is stored
cannot be accessed in normal mode. We therefore copy the information
to another place before starting the TF-A. This copy is used for the
boot source detection logic, but not yet for the barebox update code
which still uses the original information from IRAM.
Use the already existing rockchip_bootsource_get_active_slot() to
avoid data aborts when trying to detect the active boot slot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/bbu.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-rockchip/bbu.c b/arch/arm/mach-rockchip/bbu.c
index 435ef45ccd..3ab6c1e685 100644
--- a/arch/arm/mach-rockchip/bbu.c
+++ b/arch/arm/mach-rockchip/bbu.c
@@ -14,6 +14,7 @@
 #include <libfile.h>
 #include <linux/bitfield.h>
 #include <mach/rockchip/rk3568-regs.h>
+#include <mach/rockchip/bootrom.h>
 
 /* The MaskROM looks for images on these locations: */
 #define IMG_OFFSET_0	(0 * SZ_1K + SZ_32K)
@@ -22,14 +23,6 @@
 #define IMG_OFFSET_3	(1536 * SZ_1K + SZ_32K)
 #define IMG_OFFSET_4	(2048 * SZ_1K + SZ_32K)
 
-#define RK3568_IRAM_ACTIVE_BOOT_SLOT	GENMASK(12, 10)
-
-static int rk3568_get_active_slot(void)
-{
-	return FIELD_GET(RK3568_IRAM_ACTIVE_BOOT_SLOT,
-			 readl(RK3568_IRAM_BASE + 0x14));
-}
-
 /*
  * The strategy here is:
  * The MaskROM iterates over the above five locations until it finds a valid
@@ -80,7 +73,7 @@ static int rk3568_bbu_mmc_handler(struct bbu_handler *handler,
 		return fd;
 
 	if (space >= IMG_OFFSET_4 + data->len) {
-		int slot = rk3568_get_active_slot();
+		int slot = rockchip_bootsource_get_active_slot();
 
 		pr_info("Unallocated space is enough for two copies, doing failsafe update\n");
 
-- 
2.39.2



