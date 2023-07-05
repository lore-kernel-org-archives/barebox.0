Delivery-date: Wed, 05 Jul 2023 21:05:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH7oq-00GegP-UC
	for lore@lore.pengutronix.de; Wed, 05 Jul 2023 21:05:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH7oo-0008It-F8
	for lore@pengutronix.de; Wed, 05 Jul 2023 21:05:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fUPWdWfdkQ5JKZONzHXeM6xx1cJd0T6jHfa0lGE0jgE=; b=opwPfsKtinLfiI95uhso5rysx1
	3HqFrCKH1Tf0ZFzAdbOEqkI/Am632krBxMd6GS2U8rNUxP2qUNARHsLyfCVuSbSx8etWkRotzfuSt
	RAl/KUhhsypV+7sFv7Zg7QcfWQh6LnU1FzohIN/hjTbnqZholcr6WYPCvGpdY1zhT5qG3DW8s0HgP
	9hmJ7MdBNXZ+O0RgeXu//bNTcdY0NG+J/Rz18St1OcJ6koAvz+rAR+ApN3VC4s8ljOZV+ywHaSxFD
	jMFuK5VlYEwN7VS3J1wC7aUac9PIt+rcKuvQ0eFJUcsf0u+zAkDi/iZbqyFTVHRMbbjt9tk+UzxnK
	jBgJWFcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH7nI-00GqQf-2b;
	Wed, 05 Jul 2023 19:04:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH7nF-00GqN5-2X
	for barebox@lists.infradead.org;
	Wed, 05 Jul 2023 19:04:03 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qH7n8-0007lP-Ou
	for barebox@lists.infradead.org; Wed, 05 Jul 2023 21:03:54 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  5 Jul 2023 21:03:52 +0200
Message-Id: <20230705190352.1448472-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_120401_825215_C7019021 
X-CRM114-Status: GOOD (  10.07  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mci: imx-esdhc-pbl: fix image load in DDR mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The __esdhc_send_cmd checks the sdhci.timing setting and configures it
accordingly. If the BootROM configured the device to operare in DDR mode
we need to honor that else the PBL can't load the binary correctly from
the eMMC. Therefore readback the sdhci mixctrl setting and set the
sdhci.timing to DDR52. At the moment DDR52 is the fastest/highest
transferrate the BootROM supports, so we don't need to handle HS200/400
yet.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 7c5febb7a8..f789f43b69 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -120,6 +120,8 @@ esdhc_load_image(struct fsl_esdhc_host *host, ptrdiff_t address,
 static void imx_esdhc_init(struct fsl_esdhc_host *host,
 			   struct esdhc_soc_data *data)
 {
+	u32 mixctrl;
+
 	data->flags = ESDHC_FLAG_USDHC;
 	host->socdata = data;
 	esdhc_populate_sdhci(host);
@@ -129,6 +131,10 @@ static void imx_esdhc_init(struct fsl_esdhc_host *host,
 		      FIELD_PREP(WML_WR_WML_MASK, SECTOR_WML) |
 		      FIELD_PREP(WML_RD_BRST_LEN, 16)         |
 		      FIELD_PREP(WML_RD_WML_MASK, SECTOR_WML));
+
+	mixctrl = sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL);
+	if (mixctrl & MIX_CTRL_DDREN)
+		host->sdhci.timing = MMC_TIMING_MMC_DDR52;
 }
 
 static int imx8m_esdhc_init(struct fsl_esdhc_host *host,
-- 
2.39.2



