Delivery-date: Thu, 13 Mar 2025 08:49:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdJU-00DTeK-1I
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 08:49:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdJT-0008N0-8M
	for lore@pengutronix.de; Thu, 13 Mar 2025 08:49:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HwOD4BdKyi9CWatf9ZtnVDBNZjtWNCV2kDCG8LLM5xU=; b=S/XLh8OT2N0AcWzU1j68aK1h3D
	O9tCf1wsz9f01tAFHfmK5rl3JvZmM9HUl1Tn3xD3iPCv7FnUB6DvY7XL8jH7mxyE+7jvHxKDLakDO
	lYZUiamodV7F7e7Lnhcsv7gZs02YAoECf4x2QBPHb9fEgmb9q8INEJKi0Q/Ol7UnjqqmHYCTGDclu
	1sfqAUWuqgXEt2aPIpD7WCkPt74kE3lVrs6WjTBkKJ9qVc9YFP1UUrC3iSdFNCwEtmZ4J3LZDt150
	YOVx0ZTZu3k7FnFnLi9Cg4YhfBlKq200WjeVXwLUNTULnAGrbzVoHyiSJKHiFbcGiajezx/4oHnsS
	d+qL71EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdJ3-0000000AQje-0Xz6;
	Thu, 13 Mar 2025 07:48:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsd5k-0000000AOUq-0FPs
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 07:34:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-0005mr-QL; Thu, 13 Mar 2025 08:34:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-005Uvz-1E;
	Thu, 13 Mar 2025 08:34:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-003pwb-0v;
	Thu, 13 Mar 2025 08:34:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Denis Orlov <denorl2009@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 08:34:31 +0100
Message-Id: <20250313073445.764875-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313073445.764875-1-a.fatoum@pengutronix.de>
References: <20250313073445.764875-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_003456_109892_4C938A5F 
X-CRM114-Status: GOOD (  11.04  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/22] ddr_spd: fix always true sub-condition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The last subcondition is always true, because it compares the left-hand
side against two different values and ORs the result.

I think the intention of the code is to avoid printing bogus serial
numbers that are either all zeroes or all ones, so let's check for that.

This is a debug print, so there is no fallout expected if the guess
turns out wrong..

Cc: Denis Orlov <denorl2009@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/ddr_spd.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/common/ddr_spd.c b/common/ddr_spd.c
index b7693f3fd25c..7ca8e9887a55 100644
--- a/common/ddr_spd.c
+++ b/common/ddr_spd.c
@@ -927,10 +927,8 @@ static void ddr3_spd_print(uint8_t *record)
 	    && !((s->mdate[0] == 0x0) && (s->mdate[1] == 0x0)))
 		spd_print_manufacturing_date(s->mdate[0], s->mdate[1]);
 
-	if ((s->sernum[0] != s->sernum[1])
-	    && (s->sernum[0] != s->sernum[2])
-	    && (s->sernum[1] != s->sernum[3])
-	    && ((s->sernum[0] != 0xff) || (s->sernum[0] != 0x0)))
+	if (memcmp(s->sernum, "\xFF\xFF\xFF\xFF", 4) &&
+	    memcmp(s->sernum, "\x00\x00\x00\x00", 4))
 		printf("%-48s 0x%02X%02X%02X%02X\n", "Assembly Serial Number",
 		       s->sernum[0], s->sernum[1], s->sernum[2], s->sernum[3]);
 
-- 
2.39.5



