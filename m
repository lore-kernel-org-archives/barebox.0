Delivery-date: Wed, 07 May 2025 11:29:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb5a-0035a2-2U
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:29:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb5a-00070y-4p
	for lore@pengutronix.de; Wed, 07 May 2025 11:29:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6rAW5ML4Sl39vhu0u9cAILgcXjN8yXMtyGkbDfZS1pE=; b=Obtj01wutwVoRUBqoCjCi5pXBT
	2Xn6bXxd6U7dTrBAZrRzfQtRztpn/lu7v8F5QcV+3oL6MF6BBQSNwvW6chcP1+B9OpHUsnkGzOxtO
	C73FfWTQ9NS0nf6lvTpK+C3Dle300ANOhP6N3ENa9RLm9KWbTdggdk8j6Cmmq9WvL2F0UdkAfe5PH
	/71j1sXXUFvj5IQ7F8n3GS7LSwEbDqmHTUbPjN83iKbNnVMUP2jLQZAXUwd4FrVJDcLn6mD5V7FDi
	hmbByeFGwDEwuSoL8aj2Vv1/lLCEom/DKHIji9Mf5FEBY7liys0jsabezh9dCxLFWrPj4gJ4vrIOO
	fsL2cHoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb5A-0000000Exg4-0iYd;
	Wed, 07 May 2025 09:28:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaG7-0000000EmGB-3CeU
	for barebox@bombadil.infradead.org;
	Wed, 07 May 2025 08:36:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6rAW5ML4Sl39vhu0u9cAILgcXjN8yXMtyGkbDfZS1pE=; b=TCPmxV7xj3UOuW8E27tcgSD7cz
	Gt20yC6TJM7qWc5npcofZFP+OrH2SvQZIEy5sxOx0ZvLa3nBRiErMgpL0OC8oCWs92dqQb2eJWRKR
	aI0ndgnB5UlkUePIet/TQxdTeKji8fqm2vbpjvm+G/ONHsU3tU5+OOozkl/48ordvM7MEcJW9bF4U
	BfZTBM4DrT2n7Da4akEAFyZtQJ5pqjRB+dv7lJT/h716j68HoA3HlwamiX68mIojVMJBI1GT48gaK
	RZ9HM8YmjO2tDx7Hi4Bh54uCcCyjiL3Up9TA01MfsRGrD6A8jhRpfrcNJ6QfaYo7PdDzh/joyuwGx
	ApdNJCsg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFq-00000001ihB-1iuJ
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:36:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaFA-000403-5i; Wed, 07 May 2025 10:35:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-001Wv0-35;
	Wed, 07 May 2025 10:35:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-0s;
	Wed, 07 May 2025 10:22:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:21:53 +0200
Message-Id: <20250507082209.3289972-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_093550_888711_42A86FC4 
X-CRM114-Status: GOOD (  10.51  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 14/30] mci: imx-esdhc: drop one extra read of SDHCI_INT_STATUS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Our new esdhc_poll implementation stores the register value read for
later use, so make use of it instead of reading the same register again
after the break condition has been triggered.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/imx-esdhc-common.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index 0743e7b74d22..18a9f3be7239 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -121,16 +121,14 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 		      command << 16 | xfertyp);
 
 	/* Wait for the command to complete */
-	ret = esdhc_poll(host, SDHCI_INT_STATUS, val,
-			 val & SDHCI_INT_CMD_COMPLETE,
+	ret = esdhc_poll(host, SDHCI_INT_STATUS, irqstat,
+			 irqstat & SDHCI_INT_CMD_COMPLETE,
 			 100 * MSECOND);
 	if (ret) {
 		dev_dbg(host->dev, "timeout 1\n");
 		goto undo_setup_data;
 	}
 
-	irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-
 	if (irqstat & CMD_ERR) {
 		ret = -EIO;
 		goto undo_setup_data;
-- 
2.39.5



