Delivery-date: Fri, 22 Mar 2024 17:40:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rnhwM-0006k7-1D
	for lore@lore.pengutronix.de;
	Fri, 22 Mar 2024 17:40:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rnhwL-00006A-Qk
	for lore@pengutronix.de; Fri, 22 Mar 2024 17:40:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7HGprQCp4bonMczSy8Ys2K3ETqzugEVx1S9yUl8MrWQ=; b=Q9aM6sLlody+KiQ247Q52jvcUe
	Uuo07ig3D9bY6u5TfGVPmac7x2ia6q2dnT7WSVqQiBqxl+LW+nLMqElzQl5AqCWPKxXMHeS52FYrE
	NPEVCr+drx2J+D4EEI/TNew5OfGIl1bNcISVNwRxDzxdWqhup7MYAD2HjrW8hsbPLTCrGfvKn1Koh
	LLiefZszanUnVAZEKZC7CWovLCzN3FcMmdpp7cfn300R5CvOMlqCbBBVDml4f/6FLd+JeKJAk23Kn
	7dFNHzHPOddpIs29dhe1c/voT6wjWcg3oL4+r4h2auWcJJjCzLJ1MtapFXnSuiisBn4pwourhOQSf
	i19HBp6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnhvi-00000007yyA-415O;
	Fri, 22 Mar 2024 16:39:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnhvZ-00000007ytC-47yM
	for barebox@lists.infradead.org;
	Fri, 22 Mar 2024 16:39:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rnhvV-0008Mu-Ph; Fri, 22 Mar 2024 17:39:29 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rnhvV-007sYb-Af; Fri, 22 Mar 2024 17:39:29 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rnhvV-009gsm-0o;
	Fri, 22 Mar 2024 17:39:29 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 22 Mar 2024 17:39:25 +0100
Message-ID: <20240322163924.192327-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1106; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=VF15BQXQdDqR5T0XKkggW5ECNMcamTb0YUt7fSm49Ic=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl/bQ8A02Z7qSo3P+scfm1mDhJyxBdm1F4+RTJt /+q7+1fayOJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZf20PAAKCRCPgPtYfRL+ TmRsCACftgaVW7/iqrHcgE1R7MRfKJFRuRmfQeEWFkXDsrK10eWcZekWAxfwA0+LHrg0vo1rTax uLPKRD59j365A1Z6SlzoFfxCSXBXo2gk2iwF1AdXk4LUiyf8LB3Wd0q+O9DdMftnUTqgsR+1paK FXN49b+EsZqN0LkfcoY+fpUMkGZDm5ZgTvys5v+k6DnnYXEoBa540qV4YefEpUEZg7cHthW3xe5 lTfwByx7PWbEJSag6v53y3ealzLbtGvPHfx4uBtm1dpkFWbBaujTBspF6PMc5J7swm12P08n6QG zn3DVdy9kEDV2MmDl7WWdIYspPqh9QGwE2GjRWScTqM4BQMW
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_093934_092223_145F1E6E 
X-CRM114-Status: GOOD (  10.71  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] spi-nor: remove Fujitsu MB85RS1MT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux did the same in commit v6.7-rc1~61^2~1^2~42 with the reasoning
that this part isn't a NOR but an FRAM and is supported by the at25
driver. Follow this reasoning and drop MB85RS1MT from spi-nor, too.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/mtd/spi-nor/spi-nor.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 1773db09a1ab..e0e72f8551ec 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -658,9 +658,6 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "mr25h10",  CAT25_INFO(128 * 1024, 1, 256, 3, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
 	{ "mr25h40",  CAT25_INFO(512 * 1024, 1, 256, 3, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
 
-	/* Fujitsu */
-	{ "mb85rs1mt", INFO(0x047f27, 0, 128 * 1024, 1, SPI_NOR_NO_ERASE) },
-
 	/* GigaDevice */
 	{ "gd25q16", INFO(0xc84015, 0, 64 * 1024,  32, SECT_4K) },
 	{ "gd25q32", INFO(0xc84016, 0, 64 * 1024,  64, SECT_4K) },

base-commit: a72dbcb0c695c3927f713464c2a71fc915a81032
-- 
2.43.0



