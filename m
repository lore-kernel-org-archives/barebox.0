Delivery-date: Tue, 16 Sep 2025 10:04:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyQgG-003cGx-2J
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 10:04:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyQgG-0003mn-5t
	for lore@pengutronix.de; Tue, 16 Sep 2025 10:04:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7LFHSZE0YV7W9Pg1Ulde7W/CMF8IQk4YLUiejqCltFk=; b=ph3II6+J59AWfVcv8YDf0INOrn
	d5rKsHf9j5pJQSCF8HcO3Y82PY1LKO2EaLQ0jGUVlSR5zFjtzsrjhXMeyq1Ev8wWmwwBsO5mczwm6
	J0ky72Bda6e0TM4DnVAoc1vAF0imeaqikmax5ZOTiJ9niav7mnW3vTd6cZ9xrYhs4g6V6SQDl65WA
	JMwXwkg8q6+GYRhKVlM4ZdPi6nUepYykaiTRorhbFIdCGLGbF2mZYdLfsnhmOjB02n8tJplEgUYel
	jlRTOz3QNkI69ChSfRnZCV0s7VQ2pq/26d06i8ny3xQ0xJHV0D4zh7CdZAgYgPfD7tlXyU1IACxQe
	azkrmRTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyQfp-000000077HP-0XIs;
	Tue, 16 Sep 2025 08:04:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyQfm-000000077Gp-2loN
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 08:04:23 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uyQfk-0003hR-Mu; Tue, 16 Sep 2025 10:04:20 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 16 Sep 2025 10:04:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-rock5-bbu-default-target-v1-1-aba344fa5c50@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAAEayWgC/x3MQQqEMAxA0atI1hOwagb1KoOLVlMNikpaRRDvb
 pnlW/x/Q2AVDtBmNyifEmRbE8wng36y68goQzIUeUF5Y76oWz8TOnfgwN4eS8RodeSIFVW+NK4
 mMjWkfFf2cv3Xv+55XnxxEXxqAAAA
X-Change-ID: 20250916-rock5-bbu-default-target-454f31b85518
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_010422_819526_A2B1F423 
X-CRM114-Status: GOOD (  13.68  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rockchip: select bbu default target using bootsource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ROCK 5 boards may be booted from SD card and eMMC. The BootROM
prefers the eMMC unless disabled explicitly.

As a user, I'd expect barebox_update to update the SD card if I booted a
board from SD card.

Use the bootsource to set the default target for the bbu default
handler. If booted from SD card, by default update barebox on the SD
card.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/boards/radxa-rock5/board.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/radxa-rock5/board.c b/arch/arm/boards/radxa-rock5/board.c
index eab0c010400036f281beaa1c199cec8b8b841de2..1f145bb61f5f663e7a99e40b759e0a94768b4a8e 100644
--- a/arch/arm/boards/radxa-rock5/board.c
+++ b/arch/arm/boards/radxa-rock5/board.c
@@ -15,16 +15,21 @@ static int rock5_probe(struct device *dev)
 	enum bootsource bootsource = bootsource_get();
 	int instance = bootsource_get_instance();
 	const struct rock5_model *model;
+	int bbu_flags_emmc = 0;
+	int bbu_flags_sd = 0;
 
 	model = device_get_match_data(dev);
 
-	if (bootsource == BOOTSOURCE_MMC && instance == 1)
+	if (bootsource == BOOTSOURCE_MMC && instance == 1) {
 		of_device_enable_path("/chosen/environment-sd");
-	else
+		bbu_flags_sd |= BBU_HANDLER_FLAG_DEFAULT;
+	} else {
 		of_device_enable_path("/chosen/environment-emmc");
+		bbu_flags_emmc |= BBU_HANDLER_FLAG_DEFAULT;
+	}
 
-	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
-	rockchip_bbu_mmc_register("sd", 0, "/dev/mmc1");
+	rockchip_bbu_mmc_register("emmc", bbu_flags_emmc, "/dev/mmc0");
+	rockchip_bbu_mmc_register("sd", bbu_flags_sd, "/dev/mmc1");
 
 	return 0;
 }

---
base-commit: f3be3a8e9ae884bdfb116238e9049b1eb2759810
change-id: 20250916-rock5-bbu-default-target-454f31b85518

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



