Delivery-date: Wed, 15 May 2024 13:01:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7CO5-00FhuM-02
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 13:01:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7CO2-00086O-AI
	for lore@pengutronix.de; Wed, 15 May 2024 13:01:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=X6XXB9CAofygWPHVpyKrpZkWaeBKPQ7MWZG+kVuSKxs=; b=H/+90//UJbTWhRxdpuA+tl4vnI
	6VK6Ia3iOMJvS2FYfSWDf3fYsARZ5XS11+D/YA6ULCyxA8Ef7lVuct/1uJnv89x/gTkKKLZBFA/ZW
	m2t+I3bZJZ1FIPMneNEnmqzq1iSg3vzEodqgNqF05ex94J4MY+pxugTUDabT+Ie4ZJxOZjuT9hSZS
	LLZ5uuDZHXH41pq9W9gr7YnCklU7GkPO+o567iacOAxKuLDpDYeiWG+yTyb7M1uuxSxemevupMiz2
	3MaUsypH/uPl4cLrDQXo0GrZFwDcnEHNF1kFxSUUJid4T8cTgkTvUIpIEUWuZ/jY807HajOFdJ8FE
	Q6sXvOqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7CNH-00000001Icr-2k01;
	Wed, 15 May 2024 11:00:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7CNF-00000001Ibz-1Jcv
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 11:00:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7CND-0007t7-03; Wed, 15 May 2024 13:00:39 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7CNC-001WBT-Jo; Wed, 15 May 2024 13:00:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7CNC-0017fv-1h;
	Wed, 15 May 2024 13:00:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2024 13:00:37 +0200
Message-Id: <20240515110037.267796-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_040041_375904_99FA51AB 
X-CRM114-Status: GOOD (  10.19  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ddr: imx: rename ddr_get_firmware_ddr to ddr_get_firmware_ddr4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The omission of the 4 was likely a typo. Adding it makes it clearer what
the function does and serves symmetry with ddr_get_firmware_lpddr4().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/ddr/imx/ddrphy_train.c | 2 +-
 include/soc/imx/ddr.h          | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/ddr/imx/ddrphy_train.c b/drivers/ddr/imx/ddrphy_train.c
index d599445e6f57..24997a6f3667 100644
--- a/drivers/ddr/imx/ddrphy_train.c
+++ b/drivers/ddr/imx/ddrphy_train.c
@@ -40,7 +40,7 @@ static size_t ddr4_imem_2d_size;
 static const u16 *ddr4_dmem_2d;
 static size_t ddr4_dmem_2d_size;
 
-void ddr_get_firmware_ddr(void)
+void ddr_get_firmware_ddr4(void)
 {
 	get_builtin_firmware(ddr4_imem_1d_bin, &ddr4_imem_1d,
 			     &ddr4_imem_1d_size);
diff --git a/include/soc/imx/ddr.h b/include/soc/imx/ddr.h
index caf33d3e34b9..1e64613895d1 100644
--- a/include/soc/imx/ddr.h
+++ b/include/soc/imx/ddr.h
@@ -114,14 +114,14 @@ struct dram_controller {
 };
 
 void ddr_get_firmware_lpddr4(void);
-void ddr_get_firmware_ddr(void);
+void ddr_get_firmware_ddr4(void);
 
 static inline void ddr_get_firmware(enum dram_type dram_type)
 {
 	if (dram_type == DRAM_TYPE_LPDDR4)
 		ddr_get_firmware_lpddr4();
 	else
-		ddr_get_firmware_ddr();
+		ddr_get_firmware_ddr4();
 }
 
 int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *timing_info);
-- 
2.39.2



