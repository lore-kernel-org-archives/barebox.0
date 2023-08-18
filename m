Delivery-date: Fri, 18 Aug 2023 16:24:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qX0PF-009XTj-IC
	for lore@lore.pengutronix.de; Fri, 18 Aug 2023 16:24:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qX0PD-00086O-PA
	for lore@pengutronix.de; Fri, 18 Aug 2023 16:24:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EtkYANCODTPfhK8RxLwxG7XVIS0GVk9DykE+UGCs+Po=; b=HB4xs5y5KHzZ+wZIXvoRBkWB0e
	X4r0fEoDidZ/93xRlTPF//6TkWeZGlZyZhPaSy+4yVMxeaNjr9GBTyfYU8RXObTF23eujcDLfcrlc
	hPESctC6/cTaZNkrQcUYpxcpon9FnUdUarUWF8sKcL03bCUHeQFm6Og3MVzqADI41eK3j/AtBUma8
	sxJ2Vs//46n7alM3Gkm1Eh1l5miI/35Ny8f21bMt4RkLZdH5kC2twxvWR7qlgcit7yAlkAqQLdMR7
	iMBW5StHOlt9UgwD6pvHcPL4c/27pXrGmkX7EBOuBr3kUlpTGdm8Avo9ETAQZx/l2SuehQmCvBya7
	5w+AhuDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qX0O3-009URo-1F;
	Fri, 18 Aug 2023 14:23:39 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qX0Nx-009UOy-1w
	for barebox@lists.infradead.org;
	Fri, 18 Aug 2023 14:23:35 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3503624000A;
	Fri, 18 Aug 2023 14:23:27 +0000 (UTC)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri, 18 Aug 2023 16:22:39 +0200
Message-ID: <20230818142244.17157-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230818142244.17157-1-jmaselbas@kalray.eu>
References: <20230818142244.17157-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_072333_803222_FEAA2C9A 
X-CRM114-Status: UNSURE (   6.41  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/7] mci: sdhci: Add registers defines
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



