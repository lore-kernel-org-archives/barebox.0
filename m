Delivery-date: Sun, 19 Mar 2023 16:50:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdvIe-006eu4-M7
	for lore@lore.pengutronix.de; Sun, 19 Mar 2023 16:50:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdvIe-0002wD-BE
	for lore@pengutronix.de; Sun, 19 Mar 2023 16:50:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LvCWX6rR1yCpmE4+2Xu6Eu9iPwOG6gqNr7Z13sReu8M=; b=WqgVz+a+mSgL39T2lH3kbi6FPy
	2et3dKILNg/qI/PSIA/VkuuOwOeVIcubZV6oenVdG8dnLeCIw0msI4A09DBOOTR+hyPInkGDpKzsg
	Vr9cvF2nEVQEO6m9kXKLoDF5DCNnBuXM0uVDE3FohpZG5d01gzLI5G+UhUTpX5XZ90AZJoJyMxG4b
	6OJZ6MkZ7AL+rBz2xkPvN6Ct6t3QKxnd19kBjMTjt0Or8AD8Xy5cDOqt70dlEzUjFwtPgoQMQpXYF
	NqJAkjiRKwCUf1/7qSlT9KawNOW2s/Vyte+L9U3n7TppOVSrPniIW1kn8fGD7a9yjfnnOM55RiCuH
	rJLFgQhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdvHh-006xgq-0i;
	Sun, 19 Mar 2023 15:49:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdvHe-006xgA-0T
	for barebox@lists.infradead.org;
	Sun, 19 Mar 2023 15:49:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BBA1E61068
	for <barebox@lists.infradead.org>; Sun, 19 Mar 2023 15:49:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB61CC433D2;
	Sun, 19 Mar 2023 15:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679240961;
	bh=tL6+0F3O8TKb1uGgIj0YZej1xOeL5X6BQ47jN+kkhrk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MtMoWdgJNIy1Yo1pHCEUUawKH0SqkOyqz9tpXao2Ro8mWxIDXLD+FnXRFMH6K7+2p
	 DvmihHZzpOEIds5klBHLAFwziQ54/QCcFl5/NIS/t9DUwp6QmG2KBBtTEZv5TWUUlH
	 SFcT5ugH4zy+G/VzveNrPVmpjtjDV+RqjfPAl9e3mcs92GxOXhs6rDFvsmCC7dngay
	 X82V5+Olzlv/QuMGJxBOl9TbMKbFc+TcwuYt24gCxBR7AYp94RPHrdEVTBmPtARf+W
	 JAZh5t8qkf6IMOmcOSBp90VA7HntmN+zjleHZBlFPb7L3j1/AdByNnOxOZw8cLTGj/
	 R6nLdo5hoCixg==
From: Wolfram Sang <wsa@kernel.org>
To: barebox@lists.infradead.org
Cc: Wolfram Sang <wsa@kernel.org>
Date: Sun, 19 Mar 2023 16:49:07 +0100
Message-Id: <20230319154909.24047-2-wsa@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230319154909.24047-1-wsa@kernel.org>
References: <20230319154909.24047-1-wsa@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_084922_220519_023D42EF 
X-CRM114-Status: GOOD (  11.26  )
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
Subject: [PATCH 1/3] mtd: nand: atmel: legacy: add 'algo' to use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixes "WARNING: Unsupported ECC algorithm!" on my USB-A9G20.

Fixes: b6bcd96de5 ("mtd: nand: Update to Linux-5.9")
Signed-off-by: Wolfram Sang <wsa@kernel.org>
---

Or maybe we should make HAMMING the default fallback in nand_base.c?

 drivers/mtd/nand/atmel/legacy.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mtd/nand/atmel/legacy.c b/drivers/mtd/nand/atmel/legacy.c
index 44cd4d07e8..ea1fd64ad8 100644
--- a/drivers/mtd/nand/atmel/legacy.c
+++ b/drivers/mtd/nand/atmel/legacy.c
@@ -1246,6 +1246,10 @@ static int __init atmel_nand_probe(struct device *dev)
 		nand_chip->ecc.mode = NAND_ECC_HW;
 	}
 
+	if (pdata->ecc_mode == NAND_ECC_SOFT) {
+		nand_chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
+	}
+
 	nand_chip->legacy.chip_delay = 40;		/* 40us command delay time */
 
 	if (IS_ENABLED(CONFIG_NAND_ECC_BCH) &&
-- 
2.35.1



