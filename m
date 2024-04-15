Delivery-date: Mon, 15 Apr 2024 07:28:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEtM-001Z2l-1K
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 07:28:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEtL-0007LO-RX
	for lore@pengutronix.de; Mon, 15 Apr 2024 07:28:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sdphROI8Xhiusg5maSq6q2KgLI5JtM4wJtqiNYAd8t4=; b=bLE2COB8867lH9Cb/Lx+fAqHCi
	arp1i766N+OFhFlAuWnVuy6VnpkC3LFZvf2xxUnBal9fzgBsfoSq+PRy5kiA+tU3Vxph5ImWQv34I
	sYCZJd+AD16/g34ZcAFzspH/izOL/j2bHbSffuoXxxKQqtjoaMYTDbenMkSSck4Z+4F1zHEkscrVp
	PHMWelsc4FFKs20XPSQlXJNX5fXDlZZnh/6qlhAnE15gSbo5tRAgpQIFeEOCcHq6YuPGqm2RNLHjN
	VPvWkcK5Ajrc968OC1tcKFaoocp8RdVhyrqqAm8dMiQpoboKs5DCj9/fiGLUQwjgr6RylCIjyO2gA
	YXRLOSJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEsb-000000070BB-1T5k;
	Mon, 15 Apr 2024 05:27:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEsX-000000070AP-2OW7
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 05:27:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEsS-0006YN-EX; Mon, 15 Apr 2024 07:27:36 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEsS-00CMj4-29; Mon, 15 Apr 2024 07:27:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEsR-001XHO-39;
	Mon, 15 Apr 2024 07:27:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: str@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 07:27:34 +0200
Message-Id: <20240415052734.366242-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_222741_630362_4138A6C4 
X-CRM114-Status: GOOD (  12.71  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] mci: core: don't fail MMC probe if HS200 isn't supported in HW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A MMC may support HS200 in theory, but it's unusable due to I/O
voltage. Unlike Linux, barebox doesn't check the I/O voltage, so it
will attempt enabling HS200 and get told no by the card.

This no currently triggered a failure of the probe:

  mmc1: detected MMC card version 5.0
  ERROR: mmc1: mmc_select_hs200 failed, error -5
  WARNING: mmc1: Card's startup fails with -5
  Cannot set parameter mmc1.probe: I/O error

But the correct behavior should be attempting the next speed mode.
-EBADMSG is the error code used to indicate this, so return that instead
when switching to EXT_CSD_TIMING_HS200 fails, because the card couldn't.

This is returned directly as to skip the error message in the err case,
which would just be confusing.

Fixes: ffa59e16bb96 ("mci: mci-core: add HS200 support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 6b4acebaecd0..6d4abe321bfa 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1434,6 +1434,8 @@ static int mmc_select_hs200(struct mci *mci)
 		/* TODO  actually set drive strength instead of 0. Currently unsupported. */
 		val = EXT_CSD_TIMING_HS200 | 0 << EXT_CSD_DRV_STR_SHIFT;
 		err = mci_switch(mci, EXT_CSD_HS_TIMING, val);
+		if (err == -EIO)
+			return -EBADMSG;
 		if (err)
 			goto err;
 
-- 
2.39.2



