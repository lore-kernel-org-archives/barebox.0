Delivery-date: Mon, 05 Sep 2022 17:37:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVEAJ-007eow-K6
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 17:37:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVEAJ-0002Zk-Sh
	for lore@pengutronix.de; Mon, 05 Sep 2022 17:37:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WodGj36DX4MK/cNmH9BvmHl2OsEcsl+KVOvY2F5S2Vw=; b=IbSq8nZM4tZtZiQBBS5/0JQBDK
	QHnVOYFHDcjon1aMWmWoUsrPrijYO/L3YzIuZRkumqIMYu+t/ATdtbVHzytHdaK7BrhGFIXNlA0p5
	BezJGexuqKKsfd/jcC3VwWqFHfxDVs6ghVCqA0MOlGEcJ5QUWaJJFiKK6qcGqI27dCUaoj9ujFclW
	LHrUOiDYQnTGZx2KZJk7+gNVcMM2fYb/BRK59c+YTU4+UYH1S/1K+JhZUnOcVmaO2+kjgh38yMvFM
	aSEG5oe2mFChrlUt1L0rfufvwyz/vZ9EghRPcV8I9eWAQQV2wc4QtGRV9gBvZ9s5tkKAhpdD9HM2R
	OGTJORHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVE8S-0063DV-Fq; Mon, 05 Sep 2022 15:35:41 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q4-00H48F-Tj
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=WodGj36DX4MK/cNmH9BvmHl2OsEcsl+KVOvY2F5S2Vw=; b=cuys/RqnWknUyepYzAGH7JuKBn
	ONSif3j15Fm5ZZl6ALZkBn6jip+Ri7jmc6Ml3FiIuY1RfpVl3eAGbeDi5ErPAM4EOFtZkl3TESCLR
	26AtDABS94723pjl/zAlEnch4MXOvgzlJi0ggAxqEO07AlJWJKYtBKX/96n56v6wWtueTMdE7+GRV
	gG+nfQUlac60g4VrshL9h3Ze8PSqKbZDaggwKlzKo6GqYP8Pq1Zwz0kca7teW0eSzQpbd9u5yH4LR
	qi23R0HoTHVZ0iKl20PQhYC6NlVHBFiItkzrKjSYN6A2RrpLyZxDncfj+HDbCXYssfd8JBnFf9Ro9
	iKy8jG6A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8pz-009MuR-4c
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8ps-0008JF-Q7; Mon, 05 Sep 2022 11:56:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pq-0042HS-4M; Mon, 05 Sep 2022 11:56:08 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002WeU-1p; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:43 +0200
Message-Id: <20220905095557.596891-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105615_223997_117DA5B0 
X-CRM114-Status: GOOD (  10.55  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 18/32] regmap-mmio: regmap_mmio_get_min_stride: unify branches for readability
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We just return min_stride after the switch statement, so instead of
returning 0 directly for 8 bits, just have all code reach the same return
at the end.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/regmap-mmio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/regmap/regmap-mmio.c b/drivers/base/regmap/regmap-mmio.c
index c8422ca46f3c..7b1501df933b 100644
--- a/drivers/base/regmap/regmap-mmio.c
+++ b/drivers/base/regmap/regmap-mmio.c
@@ -46,7 +46,7 @@ static int regmap_mmio_get_min_stride(size_t val_bits)
 	case 8:
 		/* The core treats 0 as 1 */
 		min_stride = 0;
-		return 0;
+		break;
 	case 16:
 		min_stride = 2;
 		break;
-- 
2.30.2



