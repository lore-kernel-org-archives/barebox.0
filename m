Delivery-date: Mon, 17 May 2021 20:56:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPS-0005Ti-0Z
	for lore@lore.pengutronix.de; Mon, 17 May 2021 20:56:10 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPP-000451-Un
	for lore@pengutronix.de; Mon, 17 May 2021 20:56:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uOO2QEFR9hCKWHYc87J86WXmSJUOhx60QKrcSxgkvjA=; b=OJcKTVEGQ0htC2PH+pCdUycAF
	9arBaVFFK9N6jhDklHMv3jCH1az7RFC/eV3fvAIEZqJHXJuIJgChP0BSMy8TRL6GLJtext8CYSKAd
	EukJ/sgV0FLLoY5jA1jNmAiiId/DRtU9KENEqYWbe742Of3hbj6s8dOqfC2DbFQPgBfboFN9mCtb5
	Qhf/qGk8ly7naHUtKQe+A388jMW2xmGgseLxVTtyoTRVLmf1wYc4VoHAWl70v46Ht95mjsIwHmkh3
	4A6I9+MVCsVv6B+Z5ixy809mcV7vOMcZqSFKtRp6jQWCLEmw7w+/Js+T6IaQ2drAVgjfdE/ooy2zd
	vZUIx2uug==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liiOX-00Ftdn-Lm; Mon, 17 May 2021 18:55:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNu-00FtUl-Hp
 for barebox@desiato.infradead.org; Mon, 17 May 2021 18:54:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=RyXVOsiJIrBI2J1b2cadXpLUihtMu8SsYc1/zuU6TDA=; b=WET/rP+ZgZ8IHUnUfyNIGMFLjg
 TAoZMKdvyHseVVT3QDnJ7gRd6AtvSVvcqckAV79s/3LxhwGCHTwNBXLcMT1QinMAZiHE+xaInoVOm
 pzGUdSq0gs+cc5nCRl8nbSaU6m2w4ubpckNX0g8mw9vNWiOozUjV/1IpQwbF/uUYFmu1JqZnZj8te
 N6Adavd81EGhlgqVeeUmWAXp9IXIso/UWzrMYGuoyc26jv3bwCaK+mEWlWn4YoyVZltVT6KSuayok
 2c6SR8VN9gILeb7YfqaAg1HbrxYNgspbQ0piHvWzfIBbCaTqe3AVDMow799IXNlJgihO5DYEsiUzR
 d97DM/+Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNq-00E4SZ-3y
 for barebox@lists.infradead.org; Mon, 17 May 2021 18:54:33 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNn-0003PC-HY; Mon, 17 May 2021 20:54:27 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNm-0002xi-CL; Mon, 17 May 2021 20:54:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 20:54:15 +0200
Message-Id: <20210517185424.32145-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210517185424.32145-1-s.hauer@pengutronix.de>
References: <20210517185424.32145-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_115430_309894_B3B215C4 
X-CRM114-Status: GOOD (  14.18  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 06/15] mtd: cfi-flash: Fix compiler warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

sector >= 0 is always true for the unsigned type flash_sect_t. This
means the loop to find the sector will only behave correctly when we
actually find the sector, but not in the error case. The error case
is not expected though and will not happen when the code is correct,
so just catch it with a BUG().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index ba0bd1b4eb..ffd29d80a7 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -466,9 +466,16 @@ flash_sect_t find_sector(struct flash_info *info, unsigned long addr)
 {
 	flash_sect_t sector;
 
-	for (sector = info->sector_count - 1; sector >= 0; sector--) {
+	sector = info->sector_count - 1;
+
+	while (1) {
 		if (addr >= info->start[sector])
 			break;
+
+		if (sector == 0)
+			BUG();
+
+		sector--;
 	}
 
 	return sector;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

