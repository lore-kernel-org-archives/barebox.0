Delivery-date: Tue, 16 Jan 2024 17:17:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPm8G-002AXm-2Q
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 17:17:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPm8H-0004Uy-Fs
	for lore@pengutronix.de; Tue, 16 Jan 2024 17:17:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PHMjkT8cepN9Wdu1LuTR89DiyWvrPOHOA2u2hFYbER8=; b=WLBd5T2rjpbW5gmXQjaZF/1RjZ
	UN3KQfg8+BmLwMwLQfbsFAq2zqm8uiT7APMbBgRVKkz4e9wDOveAwORkf3KTrzsvynPyONhbWMdf6
	vZLBf/xNLbbSag+zqy2p/KJcCGoNzv5fajI9DmMM948ujzswEa8cfn3DL5sE7Zy1zg8oXzHVe9idB
	aowQocnVjQc/eR26gM+hOupMtvC5rvfSCFUNHKkxKDvSb1LMhJnVBs4CJRj6nLLd2XrlOrj91vmy1
	hjrcebXETXG+et7mebI86b+yjha3tXQV4YMsco+w0QY0wrbyx83YeACAmp1MqdIMcgB/0eHPOfuCZ
	XLIxHTjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPm71-00CZUe-2S;
	Tue, 16 Jan 2024 16:16:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPm6z-00CZTi-0W
	for barebox@lists.infradead.org;
	Tue, 16 Jan 2024 16:16:26 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rPm6u-0004Ow-BO
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 17:16:20 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jan 2024 17:16:18 +0100
Message-Id: <20240116161618.114932-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_081625_197317_DA0FC3BB 
X-CRM114-Status: UNSURE (   8.31  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! habv4: use hab rom implementation of report_event
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

---
 drivers/hab/habv4.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 4e401ca9d362..87c96812c43e 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -318,7 +318,7 @@ static enum hab_status imx8m_report_event(enum hab_status status,
 					  uint32_t index, uint8_t *event,
 					  size_t *bytes)
 {
-	if (cpu_is_mx8mm() || cpu_is_mx8mn() || cpu_is_imx8mp())
+	if (cpu_is_mx8mm() || cpu_is_mx8mn() || cpu_is_mx8mp())
 		return hab_sip_report_event(status, index, event, bytes);
 	else
 		return imx8m_read_sram_events(status, index, event, bytes);
-- 
2.39.2



