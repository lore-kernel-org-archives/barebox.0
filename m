Delivery-date: Tue, 21 Oct 2025 16:43:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBDZz-00AHa7-16
	for lore@lore.pengutronix.de;
	Tue, 21 Oct 2025 16:43:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBDZy-0000Hz-R5
	for lore@pengutronix.de; Tue, 21 Oct 2025 16:43:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hqJPEh2lrs4lizwJ78KEqhLZ8YzunPqTxcY2Cvpgr8o=; b=F9PfGuO0kQeNSJr5vYG+npR5YV
	kDYy4OtK1YXFApZ6kT7/kaa7ARxILchLt/1KBoLjZU5XxmciR9L8DziOemyYPVHtPr0nv6fiy7n6c
	XvK1wYnAiuD2LfHYjKDEstDcTRZOGDripTQpaYad3+9zKbs/9Fmx1ZoA9sgKpOATfrX9oBx37Nmu5
	M8CcQYY95MNHerUw4ZhONS9WqO7VfhIkH4wRql5l4dJW704fd+uanB/ZdjUhkQN3pDUr9iBVnA2YD
	uGHFofcdH6vQbP7k9eTwgmmOtlcBpWJC1LuCiGisWA+Bu/kuzS1gA1XyWzDh3CeeC1QWUH6CdHj03
	/9sLyeyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBDZP-0000000HMdA-03Ds;
	Tue, 21 Oct 2025 14:42:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBDZK-0000000HMYK-3F1f
	for barebox@lists.infradead.org;
	Tue, 21 Oct 2025 14:42:36 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pfitzner@pengutronix.de>)
	id 1vBDZG-00009g-Sn; Tue, 21 Oct 2025 16:42:30 +0200
From: Fabian Pfitzner <f.pfitzner@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>
Date: Tue, 21 Oct 2025 16:41:07 +0200
Message-ID: <20251021144106.1228193-2-f.pfitzner@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_074234_816265_01D6FB2F 
X-CRM114-Status: UNSURE (   8.84  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: karo-tx6: use mmcboot handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use the mmcboot handler instead. This handler automatically determines
the boot partition by considering the partition's state, thus avoiding
to specify it manually.

Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
---
 arch/arm/boards/karo-tx6x/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/karo-tx6x/board.c b/arch/arm/boards/karo-tx6x/board.c
index f3ff59afb9..43e23f00cd 100644
--- a/arch/arm/boards/karo-tx6x/board.c
+++ b/arch/arm/boards/karo-tx6x/board.c
@@ -115,7 +115,7 @@ static int tx6x_devices_init(void)
 		of_device_enable_and_register_by_name("environment-nand");
 		of_device_enable_and_register_by_alias("nand");
 	} else {
-		imx6_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc3.boot0",
+		imx6_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc3",
 						       BBU_HANDLER_FLAG_DEFAULT);
 		of_device_enable_and_register_by_name("environment-emmc");
 		of_device_enable_and_register_by_alias("mmc3");
-- 
2.47.3



