Delivery-date: Wed, 02 Jun 2021 12:27:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loO5r-00017e-5h
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:27:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loO5m-0006D0-L1
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:27:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g8FJGtsfM1uS6/TC3SCFfg4fHZ8GwGUOhHlsBSBh5ns=; b=zFHMfhRvuo2UtV
	lalBDhmwx1OBaZUSRKt4Loy8T2jjuHeQ8PAUpdMmVLcMyjAxrqLnFUO489JKpRsZ94jqmYdbWatsK
	j3tbLPWwwtFQcCO1F1CSk6nmCvDwqw6G7mmASHP4b/BRdwPJzWz+P7P15xoaoUwgzL/6ebhlgC/8l
	DoNxnGHsSYBO3cN0un6MPBzCnISBXtDzWbdFJKI85Tazo7bkX1+jsWi8+IePZPbSkvuRJEd2O+YeO
	a6m1JS8SxIkQladWqKBtuCyMrL3B+OY/WLvlw5WnO+jMpBcRVdTjimckLXEf8nBt1kfvkCBJnsnO4
	EeIh2s8YAKWSYsvrdbhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loO4B-003Jqk-18; Wed, 02 Jun 2021 10:25:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loO42-003Jok-Lb
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 10:25:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loO3z-0005qr-L6; Wed, 02 Jun 2021 12:25:27 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loO3z-0005Go-C7; Wed, 02 Jun 2021 12:25:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mgr@pengutronix.de, ore@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Jun 2021 12:25:24 +0200
Message-Id: <20210602102524.20034-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602102524.20034-1-a.fatoum@pengutronix.de>
References: <20210602102524.20034-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_032530_742061_2C5CCF3C 
X-CRM114-Status: GOOD (  12.96  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: at91: xload-mmc: add prominent note about PBL MMC
 limitation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The PBL driver has an assumption about only being used with
high capacity cards. When using a default capacity card, the sama5d3
MCI controller hang when doing unaligned accesses.

This heuristic could add some support default capacity card support
without risking unaligned accesses:

  at91_mci_set_highcapacity(false);

  sector0 = read_sector(0);
  if (!is_mbr(sector0, &fatsect)
         abort();

  fatsector1 = read_sector(fatsect);
  at91_mci_set_highcapacity(false);

  if (is_fat(fatsect))
	goto default_cap;
  else
	goto high_cap;

This, of course, fails if fatsect * 512 on a high capacity card
happens to have a FAT signature. As it's unclear whether supporting
<= 2 GiB is worth the effort, hardcode it in xload-mmc.c and add
a note about the limitation to conserve future debugging effort.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/xload-mmc.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/xload-mmc.c b/arch/arm/mach-at91/xload-mmc.c
index 1b641f3a47ac..89766cf6b910 100644
--- a/arch/arm/mach-at91/xload-mmc.c
+++ b/arch/arm/mach-at91/xload-mmc.c
@@ -76,8 +76,18 @@ void __noreturn sama5d2_sdhci_start_image(u32 r4)
 	if (ret)
 		goto out_panic;
 
-	/* TODO: eMMC boot partition handling: they are not FAT-formatted */
+	/*
+	 * There seems to be no definitive way to find out whether we are
+	 * connected to a default or high capacity card without resetting
+	 * the card. The PBL driver assumes however that the card is already
+	 * in transfer mode. For now assume all cards to be high capacity.
+	 * If support for cards smaller or equal to 2GiB becomes relevant,
+	 * this assumption can be revisited.
+	 */
+	pr_debug("Assuming high capacity card\n");
+	at91_sdhci_set_highcapacity(&bio, true);
 
+	/* TODO: eMMC boot partition handling: they are not FAT-formatted */
 	at91_fat_start_image(&bio, buf, SZ_16M, r4);
 
 out_panic:
@@ -128,6 +138,18 @@ void __noreturn sama5d3_atmci_start_image(u32 boot_src, unsigned int clock,
 	if (ret)
 		goto out_panic;
 
+	/*
+	 * There seems to be no definitive way to find out whether we are
+	 * connected to a default or high capacity card without resetting
+	 * the card. The PBL driver assumes however that the card is already
+	 * in transfer mode. For now assume all cards to be high capacity.
+	 * If support for cards smaller or equal to 2GiB becomes relevant,
+	 * this assumption can be revisited.
+	 */
+	pr_debug("Assuming high capacity card\n");
+	at91_mci_set_highcapacity(&bio, true);
+
+	/* TODO: eMMC boot partition handling: they are not FAT-formatted */
 	at91_fat_start_image(&bio, buf, SZ_16M, boot_src);
 
 out_panic:
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

