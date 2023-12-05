Delivery-date: Tue, 05 Dec 2023 12:37:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rATkS-00474T-24
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 12:37:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rATkS-0006Gy-M5
	for lore@pengutronix.de; Tue, 05 Dec 2023 12:37:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gf+2BOv3qfmyCALXUKeQ7JcweqInVMaqOZ4a6MT5EtY=; b=293u3mnZJubjcuxFM+0Vz8mVTt
	8DvJhMwigN3F7ERzVFf/Z66R344YaiUvi1/FDFNApQlKyP7QWDHzxOwAvM2IZ8373N67frOTjvnnY
	zAyrtq1h3t7kDMcKdwTqQnyN9rmpcuQKk676F0Fj/b2XeLtKoQ7F5YnYqZRUVlHERA93mcyKfGWXX
	GMXZQTRxY7ws11YVq+AEOGY5cnKG9Iq7AIh0AagQ3FOFTGbDym/CZ32QVT/tev8qT7spJg7lA6lJK
	Z1q8D4Qk+5HwsycTUbBXXVOSYE3HDd2RmeT6LOvMzA1bE2P1dbzpQOlZ+YvFu4Z603Z+gs0kE2Tgu
	rr+0rWdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rATj0-0079HJ-1G;
	Tue, 05 Dec 2023 11:36:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rATiw-0079Fl-2A
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 11:36:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rATiv-0005wA-Ee; Tue, 05 Dec 2023 12:36:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rATiv-00DjOV-25; Tue, 05 Dec 2023 12:36:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rATiu-00H1fd-38;
	Tue, 05 Dec 2023 12:36:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  5 Dec 2023 12:36:17 +0100
Message-Id: <20231205113618.3966168-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231205113618.3966168-1-a.fatoum@pengutronix.de>
References: <20231205113618.3966168-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_033622_710075_8E2171B1 
X-CRM114-Status: UNSURE (   9.49  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] of: early exit of_match_node if no better matches are possible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The maximum score that can be returned by of_device_is_compatible is
OF_DEVICE_COMPATIBLE_MAX_SCORE. Once that score is returned, there is no
point in continuing with the string comparisons, so just early exit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 8a42fcee1d40..b22959dabebf 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -717,6 +717,9 @@ const struct of_device_id *of_match_node(const struct of_device_id *matches,
 		if (score > best_score) {
 			best_match = matches;
 			best_score = score;
+
+			if (score == OF_DEVICE_COMPATIBLE_MAX_SCORE)
+				break;
 		}
 	}
 
-- 
2.39.2



