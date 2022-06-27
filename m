Delivery-date: Mon, 27 Jun 2022 12:01:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lYi-00GEiL-D8
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 12:01:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lYk-0005oW-71
	for lore@pengutronix.de; Mon, 27 Jun 2022 12:01:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zt/880EfTQZnwWe4nYiIx+oCRTIZ88SvitULDNK8TuI=; b=2mPVog6ZOCchnk708SKUs09rEI
	h1qiO11g4nmm/3dhsUHF4epurIF1TWtc5zZ5dom9kxQmR9AG4RNpl3PhTueL6kNYW12M62UJ+ub7t
	AusY21H0N96GxMgJAARarMkmwnejDZw075BTSjaCmk1jaKXiEQJewkg/e4HtGztJijI5GDgaVclD2
	MMfWKHYH5uzIXa5TgjRhVI86FXFldAsUkdJQ4SnMiwIsTUlFlNXMXRLd+KIPsmxblW10GMpZuPizF
	86yIVdTxC2sdcYC/DnRaMox9zBPPKhk1jt+wfvjG9EDg/pdVz+HipAP73gMqhqjd4eXpT9l5648rw
	gLQJfwXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lWn-00HXfw-KW; Mon, 27 Jun 2022 09:59:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lWN-00HXZ5-VV
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 09:59:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1o5lWJ-0005Ce-0l; Mon, 27 Jun 2022 11:59:03 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o5lWD-002zEm-Mq; Mon, 27 Jun 2022 11:59:01 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o5lWG-001RiX-5A; Mon, 27 Jun 2022 11:59:00 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 27 Jun 2022 11:58:55 +0200
Message-Id: <20220627095855.32842-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=905; h=from:subject; bh=jTD6VyDEGRlHhULgONy1zp/lOJtB/jwJXMi7fa0nL/8=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBiuX9c/fZT5lRVDUc5dZvcICLPBsz75vuUkHOW5E0q 5HloBnqJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYrl/XAAKCRDB/BR4rcrsCdYACA CDCGAhy0jz91m9x/dGfGd7gaY3jbXCrPbwasK6+Wa+eRj8tak6LoN6EU6ZjOF6rLT4YT3JbyiSJTsK hLY7sdmTjCNjhG9o5LH6Xl44cX1c54fBgM7IVf+nIpEgFHUSScHpZv+1QP0hd7uYfOkczEeXzOAlE+ 35jPMKCwbqBr5ec1uBB6DKKe80RxLFh7AsYEevCbeR9a23WgrysEKDBgxjuGtm0e4Zw0sLYxQz2gN5 tfBs9rhZwbBV2vhtsrYREQEobiT9O0cgucRjfSLRKqMRhokzCaz8a36q3CIy2oVT1R/jM51pp+PriZ 5cpc0tliRE6RJj0T8Be7ZcV0gc1+88
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_025908_068242_E13E3FA0 
X-CRM114-Status: GOOD (  11.81  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] video: imxfb: Fix call of memalign()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The first argument is the alignment not the allocation size ...

Fixes: 36152c5aa546 ("video: imx: assert that image buffer doesn't cross a 4 MiB boundary")
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/video/imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index d15c2d88fb91..633815f5d919 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -404,7 +404,7 @@ static int imxfb_allocate_fbbuffer(const struct device_d *dev,
 		 * allocation as necessary, but in the absense of a better
 		 * function just use it.
 		 */
-		info->screen_base = memalign(fbsize, SZ_4M);
+		info->screen_base = memalign(SZ_4M, fbsize);
 		if (!info->screen_base)
 			return -ENOMEM;
 		memset(info->screen_base, 0, fbsize);

base-commit: ff087598f4cdc426ba883a8720367a4ff3d6b9fe
-- 
2.36.1



