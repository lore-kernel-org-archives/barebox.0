Delivery-date: Thu, 14 Jul 2022 09:29:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHW-007JWu-Vo
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 09:29:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHU-0002Fz-PJ
	for lore@pengutronix.de; Thu, 14 Jul 2022 09:29:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cD73e9HY+BfUNv/z+XOYw2YGfvooTaN6GZIUsXwGQAQ=; b=lSU4pka6pdSoYkreyPt5u8+/jD
	whzNsBieqxUatjJqqXSOspq8DgiP8MEWtj44ZaQmi92ze3GWO0bZ2f8eOYeEMCdnK1oPMEh/Um54v
	IoxwJ/ZmAdUaAIDxaBJCBBoSiKJHWoDgKk74VeqIwur92K+qC+0U28qcwf9KN8ua9C03+jG5XVjmX
	bEItqeeLaOGCXuYkfTQ/UZn+XP6AIeeUv7CePN4apWV1vfUEj+PrAMChLvYOxEaJVrEcw0z48b1XY
	ch6vhDGbsh6xAOQ0pyZibkJY96Q7GkhM9+cCyFFPYeE/35THRHTiBqfLUi87d/EpwnZSWTnltw2dI
	ht5/ZgTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtGA-00BoeE-63; Thu, 14 Jul 2022 07:27:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtFx-00BoVo-Tx
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 07:27:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFu-0001hp-Rb; Thu, 14 Jul 2022 09:27:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFu-000rqw-57; Thu, 14 Jul 2022 09:27:26 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFr-00C1W7-Ec; Thu, 14 Jul 2022 09:27:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 14 Jul 2022 09:27:21 +0200
Message-Id: <20220714072722.2863571-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220714072722.2863571-1-s.hauer@pengutronix.de>
References: <20220714072722.2863571-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_002730_048107_88523150 
X-CRM114-Status: GOOD (  11.45  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 11/12] imx-usb-loader: verify correct image length
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When verifying the uploaded file we may only check the already uploaded
part of the image, not the whole image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 44ad7e3f0f..f3dcc61b9e 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1409,7 +1409,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	if (verify) {
 		printf("verifying file...\n");
 
-		ret = verify_memory(image, fsize, header_addr);
+		ret = verify_memory(image, firststage_len, header_addr);
 		if (ret < 0) {
 			printf("verifying failed\n");
 			goto cleanup;
-- 
2.30.2



