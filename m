Delivery-date: Mon, 20 Nov 2023 15:46:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r55Xj-001a6G-3C
	for lore@lore.pengutronix.de;
	Mon, 20 Nov 2023 15:46:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r55Xk-000061-0N
	for lore@pengutronix.de; Mon, 20 Nov 2023 15:46:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FcA6k4WPKoZ3gsVr/zczaE5vHgWm9x2qI/Dwg/Iutj8=; b=NLzDlN/Nt3OWi8rp1xStdp4igx
	kzoZ8V74L9vubHwLUj6q0f6QI3v/ti3vu7EYHwoedumlZv/40+S5rDPjgWmTvCNgK5VIRsv15RBdH
	EAgRDUBhthQwpGaKGnwKRk05AEZfGSGdp0S4bQmj6xszTXykX5JBikdOxbToKyfIKly3o34f4d/bS
	iOnRLXpq+26EGQaxYCtNriBYnSZxR6zY78RcFJCqNu0NqS4U0+4VrFHRDUkVKhg3WN7T7Gp4N+GOU
	JW4XWAlsyugv/lW/b2OYqtMGYD19OatdJllqzzDAD6q5B9V3h9tgWhLN8ZSlAVZymEQnpaeENyqWs
	ybZ67xYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r55WN-00CLxu-0m;
	Mon, 20 Nov 2023 14:45:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r55WF-00CLtt-0b
	for barebox@lists.infradead.org;
	Mon, 20 Nov 2023 14:45:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r55WB-0008A6-Qh; Mon, 20 Nov 2023 15:44:55 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r55WB-00ANGP-EQ; Mon, 20 Nov 2023 15:44:55 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r55WB-004VwU-1G;
	Mon, 20 Nov 2023 15:44:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Nov 2023 15:44:53 +0100
Message-Id: <20231120144453.1075740-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120144453.1075740-1-s.hauer@pengutronix.de>
References: <20231120144453.1075740-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_064459_292702_D20C4D43 
X-CRM114-Status: GOOD (  13.99  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: layerscape: ppa: Fix starting PPA
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With dba1c26f70 we replaced request_sdram_region() for the PPA with
reserve_sdram_region(). The effect is that the region is marked as
reserved and mapped non executable. While this is desired for EL2, it
also has the effect that we can't start the PPA anymore from EL3.

Map the region cached/executable to start the PPA, then map it
uncached/non executable once we are in EL2.

Fixes: dba1c26f70 ("arm: layerscape: ppa: reserve SDRAM region for PPA")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/ppa.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
index 521e6b89da..43145a7ece 100644
--- a/arch/arm/mach-layerscape/ppa.c
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -4,6 +4,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <mmu.h>
 #include <firmware.h>
 #include <memory.h>
 #include <linux/sizes.h>
@@ -54,17 +55,11 @@ static int ppa_init(void *ppa, size_t ppa_size, void *sec_firmware_addr)
 	int ret;
 	u32 *boot_loc_ptr_l, *boot_loc_ptr_h;
 	struct ccsr_scfg __iomem *scfg = (void *)(LSCH2_SCFG_ADDR);
-	int el = current_el();
 	struct fit_handle *fit;
 	void *conf;
 	const void *buf;
 	unsigned long firmware_size;
 
-	if (el < 3) {
-		printf("EL%d, skip ppa init\n", el);
-		return 0;
-	}
-
 	boot_loc_ptr_l = &scfg->scratchrw[1];
 	boot_loc_ptr_h = &scfg->scratchrw[0];
 
@@ -115,6 +110,7 @@ int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
 	struct resource *res;
 	void *ppa_fw;
 	size_t ppa_fw_size;
+	int el = current_el();
 	int ret;
 
 	res = reserve_sdram_region("ppa", ppa_start, ppa_size);
@@ -126,9 +122,13 @@ int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
 
 	get_builtin_firmware(ppa_ls1046a_bin, &ppa_fw, &ppa_fw_size);
 
-	ret = ppa_init(ppa_fw, ppa_fw_size, (void *)ppa_start);
-	if (ret)
-		return ret;
+	if (el == 3) {
+		remap_range((void *)ppa_start, ppa_size, MAP_CACHED);
+		ret = ppa_init(ppa_fw, ppa_fw_size, (void *)ppa_start);
+		remap_range((void *)ppa_start, ppa_size, MAP_UNCACHED);
+		if (ret)
+			return ret;
+	}
 
 	of_register_fixup(of_fixup_reserved_memory, res);
 
-- 
2.39.2



