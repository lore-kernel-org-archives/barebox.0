Delivery-date: Fri, 01 Dec 2023 16:12:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r95Bs-00GAiT-0n
	for lore@lore.pengutronix.de;
	Fri, 01 Dec 2023 16:12:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r95Bs-0005Z1-B1
	for lore@pengutronix.de; Fri, 01 Dec 2023 16:12:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vk+U8+7Fc/G8HHxI7ZxNK+QxoX6WwWgDo7LlgULSg/8=; b=b8zjqpCNWbND8/
	AXgaiCgv8igtwlR3AJprgdfvstDl7cn0OpC7I9gpz43z0agLjpIishUlCwfpLO8GhWJe7rzufplFf
	p8sy3FQtNZHP3ZoIPVGJMww9IvOw97LXDzoyOr8hIMW+1YzOzy3k2aKPmmJwjoBvYsGUDPbbo/9dh
	927vtjDD2se/uEdxISZl1H2YR+596zS90v2D3qX/69YxaOwsAwLjrdhtrfTQ2qMJMAm/MRaBMMgrB
	avgo28FyCAnceEawog00GIOFfbEDcyhVctCdTjlj4VWQxkeJQLljWDVDDBPYm85afTFvHbuhjOCT7
	kqwwiVKhUjpk6lBspTCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r95AV-00E0VJ-1m;
	Fri, 01 Dec 2023 15:11:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r95AS-00E0Sy-21
	for barebox@lists.infradead.org;
	Fri, 01 Dec 2023 15:11:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r95AG-0005BU-Mo; Fri, 01 Dec 2023 16:10:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r95AG-00Csnw-A6; Fri, 01 Dec 2023 16:10:48 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r95AG-006upN-0o;
	Fri, 01 Dec 2023 16:10:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  1 Dec 2023 16:10:44 +0100
Message-Id: <20231201151044.1648393-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231201151044.1648393-1-s.hauer@pengutronix.de>
References: <20231201151044.1648393-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_071100_670445_77D8F7F2 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
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
Subject: [PATCH 3/3] ARM: Rockchip: dmc: print memory sizes in hex
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Large decimal numbers are not readable and useful, print memory sizes in
hexadecimal instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/dmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
index e23eb92110..6bc9d9aabc 100644
--- a/arch/arm/mach-rockchip/dmc.c
+++ b/arch/arm/mach-rockchip/dmc.c
@@ -174,7 +174,7 @@ resource_size_t rk3588_ram0_size(void)
 	size1 = rockchip_sdram_size(sys_reg2, sys_reg3);
 	size2 = rockchip_sdram_size(sys_reg4, sys_reg5);
 
-	pr_info("%s() size1 = %llu, size2 = %llu\n", __func__, (u64)size1, (u64)size2);
+	pr_info("%s() size1 = 0x%08llx, size2 = 0x%08llx\n", __func__, (u64)size1, (u64)size2);
 
 	size = min_t(resource_size_t, RK3568_INT_REG_START, size1 + size2);
 
-- 
2.39.2



