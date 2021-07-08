Delivery-date: Thu, 08 Jul 2021 13:28:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m1SDB-0000jy-Gt
	for lore@lore.pengutronix.de; Thu, 08 Jul 2021 13:28:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m1SDA-00022B-Nf
	for lore@pengutronix.de; Thu, 08 Jul 2021 13:28:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Md0kq7fcekyHoOY5lejmIEHC6kpCU5PppX/M+hrWlfg=; b=S0NtAcYynKAADv
	lo2oR884tJ3AvXeVkjwjOAIZMdHqbeJgpmjIUlmZxqdX4ssad3vXBxI1Akd7zji/WgDaVhbQ+936w
	FiQJPHwhvIquUpLa8jFzySNmWC3Lv6nwZ2ynCYrL1jBQvW3LxU9PkuG31/6AwzGKnqGM11VjQF5SY
	Ai2levN7HW54yZ680v/vCGLcK4g+oUt/jplvQdajthOxBQzCq9vTXuq354muIIEwKdLPNBJc4XIUr
	BO3THcuvwMFsOAJmsUAr2DzrfB+6jFpxLlbCa/X5E9tsoUua4VPZ+i/UdkLkEJ5MUqN+6bkumMwLb
	FXg3UhUbJTNUeWriU4RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1SBc-00GhPA-CM; Thu, 08 Jul 2021 11:27:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1SAr-00Gh8O-H4
 for barebox@lists.infradead.org; Thu, 08 Jul 2021 11:26:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ejo@pengutronix.de>)
 id 1m1SAn-0001cI-TS; Thu, 08 Jul 2021 13:26:29 +0200
Received: from ejo by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ejo@pengutronix.de>)
 id 1m1SAn-00056s-Kj; Thu, 08 Jul 2021 13:26:29 +0200
From: Enrico Jorns <ejo@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
Date: Thu,  8 Jul 2021 13:26:29 +0200
Message-Id: <20210708112629.19243-1-ejo@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210708_042633_627610_19EBAB6F 
X-CRM114-Status: UNSURE (   9.24  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mtd: nand: provide helpful error message when trying disabled
 ecc mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We know the reason to return -ENOSYS, thus let the user know.
This will give him a much better hint why his NAND is not working than
only getting the generic

| probe failed: Function not implemented

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index b37017372f..4c90ad9757 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -5646,6 +5646,7 @@ int nand_scan_tail(struct nand_chip *chip)
 			if (!ecc->write_oob)
 				ecc->write_oob = nand_write_oob_syndrome;
 		} else if (ecc->mode == NAND_ECC_HW_SYNDROME) {
+			WARN(1, "CONFIG_NAND_ECC_HW_SYNDROME not enabled\n");
 			ret = -ENOSYS;
 			goto err_nand_manuf_cleanup;
 		}
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

