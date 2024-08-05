Delivery-date: Mon, 05 Aug 2024 17:35:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sazka-006XGu-30
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 17:35:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sazka-00027K-CR
	for lore@pengutronix.de; Mon, 05 Aug 2024 17:35:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wvH5hEeIitvp1kgfUZSSidI8TuHBKPL7gfYnBjCYgvo=; b=kA4eZBj9QryRsLDdDA5VxbzqL2
	WM86zqw+Cp7ysiSu0wbfYeNrOmitTI5FvR/LWqXsymUFZAxNBkOk8LWxgn7iraOpSk95SUelD2fwW
	UzIcHs0wA840N+5u0LQYB2J1KXVOCt7WGf5XqdQUnQot+FI5ows1mwnHAH3bzGFBSf509UwFnhoDh
	Ozg84Ybp/bq/9ggKevMnA6rqNkOu+qVUL1QJoeAy7uYG8vqqdjstc8HgmkNwyU74BL621BUtTaMwT
	5ABkF90nZEe2BUkY9g6V0kHxiuBA7EQbwwFzcISsCL8FFgZ1amfGngKOJbcbzZcfcPUHePfgcc/Zg
	OkWW9sxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sazk7-0000000GLTI-242p;
	Mon, 05 Aug 2024 15:35:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sazk4-0000000GLS1-00Gc
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 15:35:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sazk2-00023q-Ea; Mon, 05 Aug 2024 17:35:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sazk2-004kFr-1p; Mon, 05 Aug 2024 17:35:22 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sazk1-00Cwpm-36;
	Mon, 05 Aug 2024 17:35:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Aug 2024 17:35:21 +0200
Message-Id: <20240805153521.3085578-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_083524_055870_ACE91C13 
X-CRM114-Status: GOOD (  12.05  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rockchip: dmc: reduce number of leading zeroes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Driver probe currently results in:

  rockchip-dmc memory-controller.of: Detected memory size: 0x0000000080000000

which while correct is a bit hard to read, because of the number
of zeroes. Make it a bit more readable by showing zeroes to the left
only if the size up to 4G. This would turn the above into a more
readable:

  rockchip-dmc memory-controller.of: Detected memory size: 0x80000000

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-rockchip/dmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
index 6bc9d9aabc94..81c7e2649e7f 100644
--- a/arch/arm/mach-rockchip/dmc.c
+++ b/arch/arm/mach-rockchip/dmc.c
@@ -206,7 +206,7 @@ static int rockchip_dmc_probe(struct device *dev)
 		memsize += rockchip_sdram_size(sys_rega, sys_regb);
 	}
 
-	dev_info(dev, "Detected memory size: %pa\n", &memsize);
+	dev_info(dev, "Detected memory size: 0x%08llx\n", (u64)memsize);
 
 	/* lowest 10M are shaved off for secure world firmware */
 	membase = 0xa00000;
-- 
2.39.2



