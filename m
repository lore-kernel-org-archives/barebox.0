Delivery-date: Wed, 02 Jun 2021 12:27:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loO5m-00016m-LW
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:27:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loO5i-0006CE-5m
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:27:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uaS85tnbmnSKa1HNf++Cw1WdLUPJJjhFbTU7KWW5kjA=; b=kDMbXyx5gDRU6C
	4vva1F8Z9lq/hS8l9PP1X+4XNbd04S7SA5BzPfBQ7V00RT3Th/ovYFzNI/TDOJZKCCIAUbKdLLV48
	tY/lOFISZxIyAFCHLSPeCDcxDRmb94Mt/OfbX9xqo5gn54MaDmuwJgSalplVq7+qvzECL60tq4M5S
	hzEBQbbTTnThIhLL/zHmgOIK4lP/dz1amAHJWqwYuDB2PI+ZF5N5PvqYGtnas+FkGMvdCZOKeBK0o
	03deTnNZYP195b8Fr0qz8dYifYBSRYgkb0UaJXz/SFep/YKg4QLWgRJ9B6tTC7HquhzYgz+Pq3KG8
	Uol0pALx9xdUoW8FIKkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loO4I-003Jry-1h; Wed, 02 Jun 2021 10:25:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loO48-003Jqi-Rk
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 10:25:38 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loO3z-0005qq-KV; Wed, 02 Jun 2021 12:25:27 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loO3z-0005Gl-BO; Wed, 02 Jun 2021 12:25:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mgr@pengutronix.de, ore@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Jun 2021 12:25:23 +0200
Message-Id: <20210602102524.20034-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602102524.20034-1-a.fatoum@pengutronix.de>
References: <20210602102524.20034-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_032536_942225_FCD5A609 
X-CRM114-Status: GOOD (  14.17  )
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
Subject: [PATCH 2/3] ARM: at91: mmc-xload: allow overriding card capacity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The PBL MMC driver works with the assumption that the BootROM has left
the SD-Card in transfer mode. There seems to be no definitive way
to find out whether a running card is high capacity (> 2G) or not,
but we need this info when reading, because default capacities accept
their read offset in bytes while high capacity deal in 512 byte blocks.

For i.MX, this is elegantly solved by just reading from sector 0.
For AT91, we chainload barebox from FAT, so we need to seek around.
So far, we just had an assumption buried in the driver that we are
always highcapacity.

Export a knob to change this, so we can move the hardcoding from
driver to board code, where it's more prominent. This is done
in a follow-up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/xload.h | 3 +++
 drivers/mci/atmel-sdhci-pbl.c           | 8 +++++++-
 drivers/mci/atmel_mci_pbl.c             | 8 +++++++-
 3 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/xload.h b/arch/arm/mach-at91/include/mach/xload.h
index bbc70af2108a..038f32554568 100644
--- a/arch/arm/mach-at91/include/mach/xload.h
+++ b/arch/arm/mach-at91/include/mach/xload.h
@@ -12,4 +12,7 @@ int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base);
 int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
 		      unsigned int clock, unsigned int slot);
 
+void at91_mci_set_highcapacity(struct pbl_bio *bio, bool highcap);
+void at91_sdhci_set_highcapacity(struct pbl_bio *bio, bool highcap);
+
 #endif /* __MACH_XLOAD_H */
diff --git a/drivers/mci/atmel-sdhci-pbl.c b/drivers/mci/atmel-sdhci-pbl.c
index 626e4008fe85..317f26f8af0d 100644
--- a/drivers/mci/atmel-sdhci-pbl.c
+++ b/drivers/mci/atmel-sdhci-pbl.c
@@ -99,6 +99,12 @@ static int at91_sdhci_bio_read(struct pbl_bio *bio, off_t start,
 	return blocks_done;
 }
 
+void at91_sdhci_set_highcapacity(struct pbl_bio *bio, bool highcap)
+{
+	struct at91_sdhci_priv *priv = bio->priv;
+	priv->highcapacity_card = highcap;
+}
+
 static struct at91_sdhci_priv atmel_sdcard;
 
 int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base)
@@ -122,7 +128,7 @@ int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base)
 	ret = at91_sdhci_set_ios(host, &ios);
 
 	 // FIXME can we determine this without leaving SD transfer mode?
-	priv->highcapacity_card = 1;
+	at91_sdhci_set_highcapacity(bio, true);
 
 	return 0;
 }
diff --git a/drivers/mci/atmel_mci_pbl.c b/drivers/mci/atmel_mci_pbl.c
index 767d6f3ce2d7..82e45fd4e89e 100644
--- a/drivers/mci/atmel_mci_pbl.c
+++ b/drivers/mci/atmel_mci_pbl.c
@@ -82,6 +82,12 @@ static int at91_mci_bio_read(struct pbl_bio *bio, off_t start,
 	return blocks_done;
 }
 
+void at91_mci_set_highcapacity(struct pbl_bio *bio, bool highcap)
+{
+	struct atmel_mci_priv *priv = bio->priv;
+	priv->highcapacity_card = highcap;
+}
+
 int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
 		      unsigned int clock, unsigned int slot)
 {
@@ -110,7 +116,7 @@ int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
 
 	atmci_common_set_ios(host, &ios);
 
-	priv->highcapacity_card = 1;
+	at91_mci_set_highcapacity(bio, true);
 
 	return 0;
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

