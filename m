Delivery-date: Mon, 18 Mar 2024 11:23:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmA9V-00CDKh-2q
	for lore@lore.pengutronix.de;
	Mon, 18 Mar 2024 11:23:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmA9R-0001QM-6g
	for lore@pengutronix.de; Mon, 18 Mar 2024 11:23:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dJj+CKjWj2ZQ+d7G5X2i1foIh0UExM85U6aFUcZz0ws=; b=SJ1fqfy5GNPkmF9rW3eg0DL6AG
	cPzOi+6kWLbU4bQkk+0fxs7GmunHfxAT3d7jKGjSGoI+KQLd1Vr5sf0FEDM8H/GWvnwFaKHNW/Ugp
	/uumKwjUh21as8eUChMwQaL7nwxFhi8GvvR81QtyTHibCxzpKM7h4rmL+Cs0m3jkk+r2L4vaAx4AX
	HtDRejx7iTbk7kmtsQ6ABhsjZIxum/V3ehw1JYbm/V4ic7f9lab1VykWUEFzIKEMp6Y6Xvy+V2YcP
	NOZQQgNN+btW+OmIezpAQYRY8jqCRjm8ToDnowkgPLfZXSrKshYMjGcvsp0v+KeRJWNyTWAgRYXip
	0wQd3fog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmA8c-000000087pE-0PXA;
	Mon, 18 Mar 2024 10:22:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmA8L-000000087Jg-19Lg
	for barebox@lists.infradead.org;
	Mon, 18 Mar 2024 10:22:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rmA5O-0006MJ-IQ; Mon, 18 Mar 2024 11:19:18 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 18 Mar 2024 11:18:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-5-48756863add6@pengutronix.de>
References: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-0-48756863add6@pengutronix.de>
In-Reply-To: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-0-48756863add6@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1246;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=UoOq3x0xByR2EyC2dFw9Y1k/K7vcOJPn3pzGPj+GLE0=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFJ/iPyf/z72v08M8xmXypsvgv6/Pxy8OdJqUrVAEX//a
 fvDz1tudZSyMIhxMciKKbJErj2ksVn4s86X4+cZYOawMoEMYeDiFICJXDNnZJhgbp+hte1bq+fk
 yr5zLDJ1L03j1ly+KyOVN19ttbzirx5GhtWvla4oiKrOWB1ySHe9XEqBu8nXfwpuDsv+dXzcL/3
 wJj8A
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240318_032221_510267_74542AA7 
X-CRM114-Status: UNSURE (   8.34  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 05/15] include: mci: sync mci_timing with linux
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
2.43.2



