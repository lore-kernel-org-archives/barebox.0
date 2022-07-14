Delivery-date: Thu, 14 Jul 2022 10:12:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtxm-007Lpy-Vq
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 10:12:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtxk-0001Xg-7l
	for lore@pengutronix.de; Thu, 14 Jul 2022 10:12:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c7SmxwdOWM5XtkUg4/8131xja6XKZQ3gj7zVBTtqyhE=; b=bv9VH3dyEsvwshn6y9ohXIKBVh
	xWexV6fsK6rT35Y7l3o1sJBNGD1BWtmKILzB/BuW8uWSz40SRyXIOgbQzYxEc3MwZoM87jLIMFDIF
	P0shHgkTXOQaB88lezLiveH1j/5aUkluK6esnBYPEYlzCqt+sDXfWMtgVgXYU/Z9Cz8q8JaZdS5XQ
	04FGRxNCmOZQxESVEXl/ZgXnxNdwLEVZq8v0fTFw3wbd+80AEsZznxveoq29qT8KY67a5HoJg7lkE
	dEbO0+Ff734iscK8VhEzXyILKVXFS3SdXniWpCEz9FTKw6+U1Bxz2D+i81te11nxD2Q3wTE4e8e2V
	424HUsTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtwX-00CDWe-JD; Thu, 14 Jul 2022 08:11:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtwN-00CDPJ-0l
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 08:11:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oBtwK-0001DY-0U; Thu, 14 Jul 2022 10:11:16 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oBtwJ-000rwf-9l; Thu, 14 Jul 2022 10:11:15 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oBtwI-0056ZE-IN; Thu, 14 Jul 2022 10:11:14 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 14 Jul 2022 10:11:08 +0200
Message-Id: <20220714081108.101094-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220714081108.101094-1-u.kleine-koenig@pengutronix.de>
References: <20220714081108.101094-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1466; h=from:subject; bh=IQhsOzaFkN7WquTFfe6w0/Y//4oxRmfbsBpejcoUvXk=; b=owGbwMvMwMV48I9IxdpTbzgZT6slMSSdPz9DoaXZvH3Xr8ndNvdrvKcbKubc/9SQFGNfHTCrQKuf gcehk9GYhYGRi0FWTJGlrkhLbILEmv92JUu4YQaxMoFMYeDiFICJqGaw/7PVWnXbcJvMCvXpXUITKy UKT2ef82VVY0u2frO/UH1n6ys9pie3LpWIx24x3i+klX2LL4rXP04yuOHUpRiFFf479dkaIwX0755c kjdjsd4+5f1NP2duLKl+5OEee17Tb9sy/sANjDVee2zmRC43LXe5evCWwATnNqMrbC1sUUX3DxZb+X 8MORuS9rkvs0S2447nwtu2b1fKnXW+8O1MT3huXM+EB0mvg38+S2bMTpmtzbdtU+q/6znP2uqiFJZx HvsXvEij/MDUSyo1+WunMCh/EpOIW9MaK71dzfnk5V1HLWVs5kz639KxS+hZtqVuH9NOs4qoV+8jy1 9Oujr1dvLyzObc9oZJNdqR83tEAQ==
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_011119_103390_A8A2E484 
X-CRM114-Status: GOOD (  13.16  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: imx/bbu-external-nand: Fix freeing image copy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

imx_bbu_external_nand_update() does:

	image = memdup(data->image, data->len);
	...
	for (...) {
		...
		image += now;
		...
	}
	...
	free(image)

So it's not the original pointer that is passed to free. This results in
a hang.

Instead use an offset variable and keep image constant.

Fixes: 93b564d9acc7 ("ARM: i.MX bbu-external-nand: Do not modify image")
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-external-nand.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-external-nand.c b/arch/arm/mach-imx/imx-bbu-external-nand.c
index 4d3493f9e1e0..40dbaabdc7fa 100644
--- a/arch/arm/mach-imx/imx-bbu-external-nand.c
+++ b/arch/arm/mach-imx/imx-bbu-external-nand.c
@@ -29,7 +29,7 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
 	int size_available, size_need;
 	int ret;
 	uint32_t num_bb = 0, bbt = 0;
-	loff_t nand_offset = 0;
+	loff_t nand_offset = 0, image_offset = 0;
 	int block = 0, len, now, blocksize;
 	void *image = NULL;
 
@@ -157,12 +157,12 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
 		if (ret)
 			goto out;
 
-		ret = write(fd, image, now);
+		ret = write(fd, image + image_offset, now);
 		if (ret < 0)
 			goto out;
 
 		len -= now;
-		image += now;
+		image_offset += now;
 		nand_offset += now;
 	}
 
-- 
2.36.1



