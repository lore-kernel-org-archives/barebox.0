Delivery-date: Fri, 25 Aug 2023 14:09:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZVcs-008QS8-FB
	for lore@lore.pengutronix.de; Fri, 25 Aug 2023 14:09:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZVcq-00026L-CN
	for lore@pengutronix.de; Fri, 25 Aug 2023 14:09:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KZwMzFShIUOqF3mWI/8wUGfdSJNYXZ+wH8luIqU4DBY=; b=jfXV1/fy94jU/Vbxbq2EfHgK+A
	Okgt+barghKjOcQa/u90FWZXBi5s1msXut/jcUTVO7BgoNARATiVFCugasa/z8HgQiN2SL/FwwKmP
	mSZY2qRU61P3G+9iK7PD80OtuoKAESfQWQFEO4GOp1mckO0ht7N38DuxLHbT90TpuA1LKeSB71tGt
	iS6YuoQ2Z+wQdaBNIvzM1UWgFUDu8VjWXvbvCXpH6aZiUTqyG9A/Jeh5+DwxUOGaydd7Oblpv6hV+
	CcP1z1qsxOTFgUgS05iMByXac6rU1oPpVz21xmv44PaNDlhiG93c209NgffWv4Ph99qGOgSaVlGjH
	HfgwgYdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZVbW-005LFi-0x;
	Fri, 25 Aug 2023 12:07:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZVbR-005LF6-1e
	for barebox@lists.infradead.org;
	Fri, 25 Aug 2023 12:07:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qZVbI-000216-2q; Fri, 25 Aug 2023 14:07:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qZVbH-001V6o-DN; Fri, 25 Aug 2023 14:07:39 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qZVbH-006P0j-0R;
	Fri, 25 Aug 2023 14:07:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 25 Aug 2023 14:07:36 +0200
Message-Id: <20230825120736.1508084-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_050751_114478_0F0F8023 
X-CRM114-Status: GOOD (  12.14  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: stm32mp: phycore: register barebox update handlers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have barebox update handlers for updating barebox on SD (ssbl GPT
partition) and on eMMC boot partition (with or without TF-A).

Let's put them to use.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Only build-tested. Waiting for ejo's Tested-by
---
 arch/arm/boards/phytec-phycore-stm32mp1/board.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/phytec-phycore-stm32mp1/board.c b/arch/arm/boards/phytec-phycore-stm32mp1/board.c
index 731880c3d16a..6b10ebbdb2e6 100644
--- a/arch/arm/boards/phytec-phycore-stm32mp1/board.c
+++ b/arch/arm/boards/phytec-phycore-stm32mp1/board.c
@@ -2,13 +2,22 @@
 #include <common.h>
 #include <driver.h>
 #include <bootsource.h>
+#include <mach/stm32mp/bbu.h>
 
 static int phycore_stm32mp1_probe(struct device *dev)
 {
-	if (bootsource_get_instance() == 0)
+	int sd_bbu_flags = 0, emmc_bbu_flags = 0;
+
+	if (bootsource_get_instance() == 0) {
 		of_device_enable_path("/chosen/environment-sd");
-	else
+		sd_bbu_flags = BBU_HANDLER_FLAG_DEFAULT; 
+	} else {
 		of_device_enable_path("/chosen/environment-emmc");
+		emmc_bbu_flags = BBU_HANDLER_FLAG_DEFAULT; 
+	}
+
+	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl", sd_bbu_flags);
+	stm32mp_bbu_mmc_fip_register("emmc", "/dev/mmc1", emmc_bbu_flags);
 
 	barebox_set_hostname("phyCORE-STM32MP1");
 
-- 
2.39.2



