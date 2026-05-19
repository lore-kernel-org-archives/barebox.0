Delivery-date: Tue, 19 May 2026 16:16:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPLFP-001WRu-2r
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 16:16:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPLFP-0003Jf-As
	for lore@pengutronix.de; Tue, 19 May 2026 16:16:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZE/kcuHk6/ttJGklmvGseT5jlLApJcbgay0z1AJJB78=; b=Rg37wot9tbjxi2
	HOhT7vxKn6hN3UhzdzNdT7TwuE9TVB86fF26K6uycz+v0W6Vk74zhFqHaCvWGfOG+KNU/UOnZ6N/N
	HACQMzkt1lj5baXUeH3b7pRWyqZgao0WYi4ocikuXifVSSDJ4OcF/QeMf/Qg8L+0tbOotGuaNSOId
	t+3ye+X/pFUf+xqn5Cb7jS9lJwKoRtrDDELp/xvoJ2wG0V34wof8YxyJ1a+IM1s27fq6cCcM6rLbz
	WZnzQ9pmGMGP6693+IAEr4uNTgfi6+BUk5kioXjUSCEYS/Bwc3Jy9+hLno/pTBDDl83x41OqFA5XN
	kLTonyB1auAyCE/NgKWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPLDu-00000001mvo-443z;
	Tue, 19 May 2026 14:15:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPLDs-00000001mus-2cFI
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 14:15:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPLDr-00032j-4F; Tue, 19 May 2026 16:15:03 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPLDq-000mG3-1M;
	Tue, 19 May 2026 16:15:03 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPLDq-00000005zNJ-3gSl;
	Tue, 19 May 2026 16:15:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 May 2026 16:15:00 +0200
Message-ID: <20260519141502.1427529-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_071504_664113_2676F4CE 
X-CRM114-Status: GOOD (  11.62  )
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
Cc: Sascha Hauer <sascha@saschahauer.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] mci: sdhci: propagate tuning failures from sdhci_execute_tuning()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <sascha@saschahauer.de>

sdhci->tuning_err is set but never used. Drop it and return the tuning
error directly from sdhci_execute_tuning(). With this we can actually
return tuning errors instead of silently ignoring them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/sdhci.c | 2 +-
 drivers/mci/sdhci.h | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index f7172347e1..1b13df8583 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -353,7 +353,7 @@ int sdhci_execute_tuning(struct sdhci *sdhci, u32 opcode)
 
 	sdhci_start_tuning(sdhci);
 
-	sdhci->tuning_err = __sdhci_execute_tuning(sdhci, opcode);
+	err = __sdhci_execute_tuning(sdhci, opcode);
 
 	sdhci_end_tuning(sdhci);
 out:
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 8d21febd7a..4a326f9d84 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -280,7 +280,6 @@ struct sdhci {
 
 	unsigned int		tuning_count;	/* Timer count for re-tuning */
 	unsigned int		tuning_mode;	/* Re-tuning mode supported by host */
-	unsigned int		tuning_err;	/* Error code for re-tuning */
 #define SDHCI_TUNING_MODE_1	0
 #define SDHCI_TUNING_MODE_2	1
 #define SDHCI_TUNING_MODE_3	2
-- 
2.47.3



