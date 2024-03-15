Delivery-date: Fri, 15 Mar 2024 15:02:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl88v-007x6Z-2m
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 15:02:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl88t-0001WB-QB
	for lore@pengutronix.de; Fri, 15 Mar 2024 15:02:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PYOyu29t7jCtT8d3BfIp/NP8by+UCu2TGSDCzLP6oi4=; b=gs1OC2XXlNE8StY2sPYydfJ7hO
	A+ssZflk7xpnBaqpsEY9W9+Fj7uE3TezhHCXlpUx29PNl4F1T2N+TtpHhVdpobxo7zWCuj5N61G/p
	8FGS9+T/2mYDsd6cV7nvRLjgO0vfdOswbCkX06K31MsIxBVN/pV2mAa1AP8fthm0/jVB8CBMcOqs9
	7UM+3Drgv5KEPY4IvNvdNvtBdO8P+Os5ssCpC1I+O5H+WukIZQLPf/koVBRp7vuitOStbhM4aW0wz
	ZDT0igsp2qyvnzKcZKZT8RPykBoU85UOl2bbJAes+7rVXyoC6JmSk5PZWaYXJxe1p9VlA4pwcyIQs
	1bWaYl5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl888-00000000Opu-1RN0;
	Fri, 15 Mar 2024 14:01:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl87z-00000000OjY-1ivo
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 14:01:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rl87y-000817-8w; Fri, 15 Mar 2024 15:01:42 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 15 Mar 2024 15:00:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-4-df268c2f4907@pengutronix.de>
References: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-0-df268c2f4907@pengutronix.de>
In-Reply-To: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-0-df268c2f4907@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1246;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=ruJwWkX/A7N2OP3a3bqJG9tbn6UHffDt724m+c7FnWw=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFK/hCySi2o8v1voz7P5edc7OEXe+WbH/Q/gLF7jHVkiu
 Suww21dRykLgxgXg6yYIkvk2kMam4U/63w5fp4BZg4rE8gQBi5OAZjI75MMf6WTM4qWBae8SVfZ
 Ytn4r2D/2z9HZhXLaQpsLgxcl7B/gSfDP2uxpR5msbxf0iLO5gknfGadmvFrz5P9/sxMim8f77z
 2mhcA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_070143_460697_5FDD2B52 
X-CRM114-Status: UNSURE (   8.16  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 04/14] include: mci: sync mci_timing with linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The timings are used to check if mci_host->timing is equal to one of
this values. Linux uses a different numbering. Adapt that for compatability.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/mci.h | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/include/mci.h b/include/mci.h
index 9c9d44881d..91460b7ef6 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -411,14 +411,16 @@ enum mci_timing {
 	MMC_TIMING_LEGACY	= 0,
 	MMC_TIMING_MMC_HS	= 1,
 	MMC_TIMING_SD_HS	= 2,
-	MMC_TIMING_UHS_SDR12	= MMC_TIMING_LEGACY,
-	MMC_TIMING_UHS_SDR25	= MMC_TIMING_SD_HS,
-	MMC_TIMING_UHS_SDR50	= 3,
-	MMC_TIMING_UHS_SDR104	= 4,
-	MMC_TIMING_UHS_DDR50	= 5,
-	MMC_TIMING_MMC_HS200	= 6,
-	MMC_TIMING_MMC_DDR52	= 7,
-	MMC_TIMING_MMC_HS400	= 8,
+	MMC_TIMING_UHS_SDR12	= 3,
+	MMC_TIMING_UHS_SDR25	= 4,
+	MMC_TIMING_UHS_SDR50	= 5,
+	MMC_TIMING_UHS_SDR104	= 6,
+	MMC_TIMING_UHS_DDR50	= 7,
+	MMC_TIMING_MMC_DDR52	= 8,
+	MMC_TIMING_MMC_HS200	= 9,
+	MMC_TIMING_MMC_HS400	= 10,
+	MMC_TIMING_SD_EXP	= 11,
+	MMC_TIMING_SD_EXP_1_2V	= 12,
 };
 
 static inline bool mci_timing_is_ddr(enum mci_timing timing)

-- 
2.40.1



