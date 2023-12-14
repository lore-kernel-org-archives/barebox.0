Delivery-date: Thu, 14 Dec 2023 16:17:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDnSX-0030dB-2i
	for lore@lore.pengutronix.de;
	Thu, 14 Dec 2023 16:17:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDnSY-0002BI-4s
	for lore@pengutronix.de; Thu, 14 Dec 2023 16:17:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9mlM0L3/Y1Sj1L4+eG/1IYA1BC3r5jGeOLanjCIGZyo=; b=y2hv3VA9mvfEcKojHgOwuUaOYP
	2k2czDz+fm+QFeSdZv1b9CVQIPGPUeXiocR59D40DAeazsNxYFJuhlq8O/5NuVSv0Mc9ipQ8tSk4w
	l5ZFJZjJxQzingG710mSvNh6xHJfh6j3/m7+rcXAPRTDFjrzUhMk8vIWXqUnx0+9MPB5B6nahUgwJ
	OCn5DUyTVfJBABbulOueP1yoRdYKfwnfsuheRIumZhASBUYK3MUcGa46h5NzWf2sZfG9S123LaXnG
	jwiclLliymudmdIA7QoxKMbLpW4Dkz0Ec1LRzINXUIhEWyNs3wBhiym0f+0iHF/DG8L3dnHBtmFED
	+bzWx3Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDnR6-000eRY-01;
	Thu, 14 Dec 2023 15:15:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDnR2-000eQy-0p
	for barebox@lists.infradead.org;
	Thu, 14 Dec 2023 15:15:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rDnQw-0000XR-Lf; Thu, 14 Dec 2023 16:15:30 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rDnQw-00FphO-9T; Thu, 14 Dec 2023 16:15:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rDnQw-006vIB-0g;
	Thu, 14 Dec 2023 16:15:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Dec 2023 16:15:29 +0100
Message-Id: <20231214151529.1650181-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_071536_291890_D8AB94AB 
X-CRM114-Status: UNSURE (   8.56  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] mci: stm32_sdmmc2: fix warnings when building for 64-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Building the driver via CONFIG_COMPILE_TEST for 64-bit shows two
instances of type confusion, fix them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/stm32_sdmmc2.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index 84969a29d0f4..418213a1b334 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -257,8 +257,8 @@ static void stm32_sdmmc2_pwron(struct stm32_sdmmc2_priv *priv)
 	udelay(DIV_ROUND_UP(74 * USEC_PER_SEC, priv->mci.clock));
 }
 
-static int stm32_sdmmc2_start_data(struct stm32_sdmmc2_priv *priv,
-				    struct mci_data *data, u32 data_length)
+static dma_addr_t stm32_sdmmc2_start_data(struct stm32_sdmmc2_priv *priv,
+					  struct mci_data *data, u32 data_length)
 {
 	unsigned int num_bytes = data->blocks * data->blocksize;
 	dma_addr_t idmabase0;
@@ -494,8 +494,8 @@ static int stm32_sdmmc2_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 	stm32_sdmmc2_start_cmd(priv, cmd, cmdat, data_length);
 
-	dev_dbg(priv->dev, "%s: send cmd %d data: 0x%x @ 0x%x\n", __func__,
-		cmd->cmdidx, data ? data_length : 0, (unsigned int)data);
+	dev_dbg(priv->dev, "%s: send cmd %d data: 0x%x @ %p\n", __func__,
+		cmd->cmdidx, data ? data_length : 0, data);
 
 	ret = stm32_sdmmc2_end_cmd(priv, cmd);
 
-- 
2.39.2



