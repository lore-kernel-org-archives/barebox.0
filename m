Delivery-date: Wed, 16 Aug 2023 11:41:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD1y-0066bi-1f
	for lore@lore.pengutronix.de; Wed, 16 Aug 2023 11:41:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD1w-0001P7-Eg
	for lore@pengutronix.de; Wed, 16 Aug 2023 11:41:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EtkYANCODTPfhK8RxLwxG7XVIS0GVk9DykE+UGCs+Po=; b=bLR8aXp4m3VkG+6Yrvlrs5rISc
	yI3Bn+ipSRR77StDmemBD0f7/cDtU7tsKWpoH8EqqjXXEcQ1EJD8f3ewFQ6isB/7GT4BZkxkxUYrN
	Y6GivwLjBroTK1Y53CNtWJocY4VvYp9TMTQlUkY4E7tFK6F0WpxCu1gyLtiP72bvPo1cIw2adOowN
	Hkh5BLlwZ6/A7eLY/aEHGbQgsjtasEHa2DPvMI5jvwzXyog0AJ+zzIh55hY1UQO/UJ5jMvEEIRp3z
	CSzpjPtc6EVU6mFZhRZUw6BkzjqkHeHuOEFQQPx42Ed3pPtRfUtnt1C5bhk1R62XFd9DcWBw+V32V
	YOR7XjZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWD12-003ctN-00;
	Wed, 16 Aug 2023 09:40:36 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWD0x-003cpw-06
	for barebox@lists.infradead.org;
	Wed, 16 Aug 2023 09:40:33 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id DF2C940010;
	Wed, 16 Aug 2023 09:40:27 +0000 (UTC)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 16 Aug 2023 11:39:40 +0200
Message-ID: <20230816093945.19974-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230816093945.19974-1-jmaselbas@kalray.eu>
References: <20230816093945.19974-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_024031_214427_546F34DB 
X-CRM114-Status: UNSURE (   6.45  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/7] mci: sdhci: Add registers defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mci/sdhci.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index fe8c25cb9c..50179de0e6 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -117,6 +117,9 @@
 #define SDHCI_INT_ERROR_ENABLE					0x36
 #define SDHCI_SIGNAL_ENABLE					0x38
 #define SDHCI_ACMD12_ERR__HOST_CONTROL2				0x3C
+#define SDHCI_HOST_CONTROL2					0x3E
+#define  SDHCI_CTRL_64BIT_ADDR			BIT(13)
+#define  SDHCI_CTRL_V4_MODE			BIT(12)
 #define SDHCI_CAPABILITIES					0x40
 #define  SDHCI_TIMEOUT_CLK_MASK			GENMASK(5, 0)
 #define  SDHCI_TIMEOUT_CLK_UNIT			0x00000080
@@ -173,6 +176,9 @@
 
 #define  SDHCI_CLOCK_MUL_SHIFT	16
 
+#define SDHCI_ADMA_ADDRESS					0x58
+#define SDHCI_ADMA_ADDRESS_HI					0x5c
+
 #define SDHCI_MMC_BOOT						0xC4
 
 #define SDHCI_MAX_DIV_SPEC_200	256
-- 
2.41.0



