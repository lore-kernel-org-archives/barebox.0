Delivery-date: Sun, 19 Mar 2023 16:50:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdvIp-006ev6-2e
	for lore@lore.pengutronix.de; Sun, 19 Mar 2023 16:50:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdvIo-0002zg-SG
	for lore@pengutronix.de; Sun, 19 Mar 2023 16:50:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lBufwOMFkhazhdpySCOAjTLQiUwB1XefgnCwV2dexUI=; b=vQhRMErvgViu7U+aODHmUhPSpn
	3J660u76AsKzuvLAEKErJF5GW8mULcqGMoVG/QyPdjEJFuqdDWRmJDAl0ZoxWpkmG8PUKRsFUCAB9
	88j4qDfFaxHqsLaae8eaws+27Y+iDN4htm6C1y7UqRumCegvfebkDB8sdU93QJIpjK+jmLdcVNs1M
	WXNZS2QMSILV1+OsiRSV8qluCXTHDG/fNLih4hRrlMAa6fAV0wlxpLd8kuyIc+PXofBdhLc8FK70W
	MtEgIApudZfzukjX+CNYuPPD0FBjnaOZqqir72wTMz74n9jFRqPHaaeCvwtuSgVLDYVmU61ZqwiUJ
	Lw+eikeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdvHn-006xjv-2g;
	Sun, 19 Mar 2023 15:49:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdvHl-006xiS-02
	for barebox@lists.infradead.org;
	Sun, 19 Mar 2023 15:49:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 91A8B610A3
	for <barebox@lists.infradead.org>; Sun, 19 Mar 2023 15:49:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9950FC433D2;
	Sun, 19 Mar 2023 15:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679240968;
	bh=UCCT9n8MG4x1f/7bNLpts7XJpKJGgU+7+o1NN9GqVck=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=k8oIh40ZO6mWXc0c/rrmbcAhpouInxRemRKHjNhxO9dZEcxMYjGawKyaMDITgMKR5
	 bXkPUBddtfpxK0YhfBsat9mi7Zwx6Al3T6QEYD6eGgMJtcZHGJl2l7yier7vjqGM58
	 klsW0QgEEVqKML0Lx7R5oe6ow+39/LgscdeiXMkfBL3FeYtiqMpzaoGHHh8Dxlzs9A
	 BEyiCSLVMXSCrC6nCvwZnhaR1Yo4mUEQq5PNyQIEl5/mPpm5yroGTfiUmkD40Ai/v+
	 8VuNl6EdWoj5SuRQ93QSN/adU/jbWSj0ROmMUBb2wcRg4TkR/f2RkUge0DSRGt8AeW
	 +j09EHowszKoA==
From: Wolfram Sang <wsa@kernel.org>
To: barebox@lists.infradead.org
Cc: Wolfram Sang <wsa@kernel.org>
Date: Sun, 19 Mar 2023 16:49:09 +0100
Message-Id: <20230319154909.24047-4-wsa@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230319154909.24047-1-wsa@kernel.org>
References: <20230319154909.24047-1-wsa@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_084929_145871_3EFC5451 
X-CRM114-Status: GOOD (  11.23  )
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
X-Spam-Status: No, score=-104.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] mtd: nand: atmel: legacy: remove superfluous code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

54bccadddd always populates 'ecc_mode' but forgot to remove the
code which overwrote the previously hardcoded 'NAND_ECC_SOFT'
when needed. This is obsolete now.

Fixes: 54bccadddd ("mtd: atmel_nand: retrieve ecc_mode from pdata")
Signed-off-by: Wolfram Sang <wsa@kernel.org>
---
 drivers/mtd/nand/atmel/legacy.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/mtd/nand/atmel/legacy.c b/drivers/mtd/nand/atmel/legacy.c
index 184cf465e3..cf402549b8 100644
--- a/drivers/mtd/nand/atmel/legacy.c
+++ b/drivers/mtd/nand/atmel/legacy.c
@@ -1242,21 +1242,12 @@ static int __init atmel_nand_probe(struct device *dev)
 	nand_chip->ecc.strength = pdata->ecc_strength ? : 1;
 	nand_chip->ecc.size = 1 << (pdata->ecc_size_shift ? : 9);
 
-	if (pdata->ecc_mode == NAND_ECC_HW) {
-		nand_chip->ecc.mode = NAND_ECC_HW;
-	}
-
 	if (pdata->ecc_mode == NAND_ECC_SOFT) {
 		nand_chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 	}
 
 	nand_chip->legacy.chip_delay = 40;		/* 40us command delay time */
 
-	if (IS_ENABLED(CONFIG_NAND_ECC_BCH) &&
-			pdata->ecc_mode == NAND_ECC_SOFT_BCH) {
-		nand_chip->ecc.mode = NAND_ECC_SOFT_BCH;
-	}
-
 	if (host->board->bus_width_16) {	/* 16-bit bus width */
 		nand_chip->options |= NAND_BUSWIDTH_16;
 		nand_chip->legacy.read_buf = atmel_read_buf16;
-- 
2.35.1



