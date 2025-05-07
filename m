Delivery-date: Wed, 07 May 2025 11:31:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb7X-0035cF-1n
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:31:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb7X-0007e4-07
	for lore@pengutronix.de; Wed, 07 May 2025 11:31:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SVSuw5s/lYT6Z93m7BWv/bskIQ8nUWIa01KLVplB6hA=; b=jdCOwPXVl/Xqe+fgAgjBxdFKLQ
	KoQrqllgfJ8ZguPnQGBBaeTOEIU3D3xF/LGs2vL+jL1kEZDpWM3fkgW4hV00qRbRfdbaMJi+mR/Ru
	QDQuYxDF3xtOVMx9nxcG0M3ssZNTqV5KiHO+MGbzIt13y1FKFSRcfIC28VIVjiqL2/u0nq9WJt3FC
	uXfMda2lUafjwBzvZ713CM4PAjv3m3z9W/a3gz04595FKkJ2/5L9/AsvJXdM7mKvk8odnfo3GA6Pq
	Uvz7t2/E0YqNGZybKJljzSGx7+mwEt5az1PzWDfkKGpOh3VO/McBgUA2QRzUoQS+qllDfIBRwEJAv
	kGO0qTuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb77-0000000EyA3-3WwD;
	Wed, 07 May 2025 09:30:53 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaGH-0000000EmFI-292C
	for barebox@bombadil.infradead.org;
	Wed, 07 May 2025 08:36:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=SVSuw5s/lYT6Z93m7BWv/bskIQ8nUWIa01KLVplB6hA=; b=DRHlfnJ4fBZMIGgMDVnriyriO5
	Mrl2qKpT2Jqu6syT6MV0MEuobpWnahBmTawwYKey/zBIiYvLcRqDiYnuAmbeDq18k1NsKuoSmPvYB
	SGa8iy4PJcT30nkvZupeIx0KOhM0DXPmkFkt5CU+B3fw9jt1DRGzcSc7/B27mjw5i7NdZcHEZ9hUn
	i5s5xkkdNpKI1GIJaEKaGABzCZ5fTzzgud6JFo/Zii9xp4McuzkhOPdl7AJazOl8c4keYdAsnXEVC
	bb1dA/VL2uDRs4kjtkRrboCIuAGTdVW2OGM+vHnmduXk9mf5XP/IpATPe/k0CXrj8vBj4mfVo9TVN
	CUUGFsvg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFo-00000001ihW-35yl
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:35:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaFA-00041Y-NB; Wed, 07 May 2025 10:35:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaFA-001WvS-1i;
	Wed, 07 May 2025 10:35:08 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-1A;
	Wed, 07 May 2025 10:22:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:21:55 +0200
Message-Id: <20250507082209.3289972-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_093549_189865_0545D45B 
X-CRM114-Status: GOOD (  10.04  )
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
Subject: [PATCH v2 16/30] mci: arasan: introduce mmc_op_tuning helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of duplicating the check most tuning related places, add a
helper like Linux does that checks if a command is sending a tuning
block.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c | 2 +-
 include/mci.h              | 6 ++++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 5774928e5a97..ceef0b63a8b9 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -280,7 +280,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
 	/* CMD19/21 generate _only_ Buffer Read Ready interrupt */
-	if (cmd->cmdidx == MMC_SEND_TUNING_BLOCK || cmd->cmdidx == MMC_SEND_TUNING_BLOCK_HS200)
+	if (mmc_op_tuning(cmd->cmdidx))
 		mask = SDHCI_INT_DATA_AVAIL;
 
 	ret = sdhci_wait_for_done(&host->sdhci, mask);
diff --git a/include/mci.h b/include/mci.h
index d3b855f530fc..af56f453704e 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -504,6 +504,12 @@ static inline void mci_setup_cmd(struct mci_cmd *p, unsigned cmd,
 	p->resp_type = response;
 }
 
+static inline bool mmc_op_tuning(u32 cmdidx)
+{
+	return cmdidx == MMC_SEND_TUNING_BLOCK ||
+	       cmdidx == MMC_SEND_TUNING_BLOCK_HS200;
+}
+
 /** data information to be used with some SD/MMC commands */
 struct mci_data {
 	union {
-- 
2.39.5



