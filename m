Delivery-date: Tue, 12 Oct 2021 09:35:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCJy-00025T-US
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 09:35:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCJx-0005Kb-Tr
	for lore@pengutronix.de; Tue, 12 Oct 2021 09:35:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08VQ/ZcIlaGRCgMqW55hHk0P173DbG+4euQqJeDwrgE=; b=AWKtff9l0ph1sR
	eZzEB8tWiJMdTdvs7LhC4rF06gUy6WMgUGYeSSnnkptxyFrN74EqoC3nOsJ+fr80CWcGmy4b5iehI
	t0QiChl5kqucNHv98GCo5yitEI1iBLikeKvUsA90n/YnKTrWcrM3dghYhAsfF+V1zt/IEIYpUfnyH
	phYYBTUmb7L2GXZxB4xTT2WlSgJGZjFW2AgX2xidVTcO9Ho6Mq557Q9akK7cMbe/sBw2t8xM27OXf
	KaDDFfEo7UwQVtIHw2bz52argEt77YImMjZsEjvgCa7I/GhqkmCyq4UGub6MopxPgOcnNXzKCr/6i
	EPM/8b3j6fpzR29fJbPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maCId-00Bmlu-T5; Tue, 12 Oct 2021 07:34:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maCIQ-00Bmfa-0w
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 07:34:00 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maCIM-0004iY-IP; Tue, 12 Oct 2021 09:33:54 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1maCIL-00H5N3-Qb; Tue, 12 Oct 2021 09:33:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 12 Oct 2021 09:33:50 +0200
Message-Id: <20211012073352.4071559-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211012073352.4071559-1-s.hauer@pengutronix.de>
References: <20211012073352.4071559-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_003358_139209_00D3CBAC 
X-CRM114-Status: GOOD (  12.18  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/8] ARM: rk3568: Detect USB boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The table of register content to bootsource mapping has been taken from
the vendor U-Boot. This table lacks an entry for USB boot. Add this
entry. It's unknown if this entry is entirely correct, it reflects the
value read from the register when doing USB boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/rk3568.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-rockchip/rk3568.c b/arch/arm/mach-rockchip/rk3568.c
index fcf3cb7053..4e6d3eef88 100644
--- a/arch/arm/mach-rockchip/rk3568.c
+++ b/arch/arm/mach-rockchip/rk3568.c
@@ -145,12 +145,12 @@ struct rk_bootsource {
 };
 
 static struct rk_bootsource bootdev_map[] = {
-	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
-	{ .src = BOOTSOURCE_NAND, .instance = 0 },
-	{ .src = BOOTSOURCE_MMC, .instance = 0 },
-	{ .src = BOOTSOURCE_SPI_NOR, .instance = 0 },
-	{ .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
-	{ .src = BOOTSOURCE_MMC, .instance = 1 },
+	[0x1] = { .src = BOOTSOURCE_NAND, .instance = 0 },
+	[0x2] = { .src = BOOTSOURCE_MMC, .instance = 0 },
+	[0x3] = { .src = BOOTSOURCE_SPI_NOR, .instance = 0 },
+	[0x4] = { .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
+	[0x5] = { .src = BOOTSOURCE_MMC, .instance = 1 },
+	[0xa] = { .src = BOOTSOURCE_USB, .instance = 0 },
 };
 
 static enum bootsource rk3568_bootsource(void)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

