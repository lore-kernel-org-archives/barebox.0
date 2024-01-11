Delivery-date: Thu, 11 Jan 2024 12:50:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNta1-00Cw3R-0B
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 12:50:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtZy-0002N2-E6
	for lore@pengutronix.de; Thu, 11 Jan 2024 12:50:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8ZwbiuBA/MlGGOzB8BzOu667q69e14+WcrTi/YRV88Y=; b=LRoynZyDrgmQPIQP0Clr1uOwRs
	sRjzWE3vSfL3xmJLsX89Voa14rDmZGHcczZmD9XN8Q3bR/ING9+jnMftGSS427rZhIk6ogSJt5si5
	pt6jcQJJYXSV6Q/qZwtJARz2QLRUYnum7rq/WGCrL3BvsWRkHqtbfaJxGopdmqIm70Vwx6rlr7zR/
	UM04fwE2l2E7wDj2bWXe4KWoFqfw6+vRtC8t88Kh88x+xeHekVDkDhMr6yJ/bl1KZkhmqBAoHU0do
	y+Dp6yF18jbSxSFULxGnf87rzt55G7qn+IquNz0kAfQ+PBRiGKG2/YPgAzb+3HKfUWOskDqHPCGyG
	PZ5VnVMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYg-00HSr7-0v;
	Thu, 11 Jan 2024 11:49:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYQ-00HSaq-33
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 11:49:03 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rNtYK-000137-Qt
	for barebox@lists.infradead.org; Thu, 11 Jan 2024 12:48:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jan 2024 12:48:34 +0100
Message-Id: <20240111114841.2676939-12-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240111114841.2676939-1-m.felsch@pengutronix.de>
References: <20240111114841.2676939-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_034858_989320_A93D480C 
X-CRM114-Status: UNSURE (   8.89  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 11/18] optee: optee_verify_header: constify optee_header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/optee.c      | 2 +-
 include/tee/optee.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/optee.c b/common/optee.c
index 2ae28b172bbb..34667f1f51e0 100644
--- a/common/optee.c
+++ b/common/optee.c
@@ -8,7 +8,7 @@
 
 static u64 optee_membase = U64_MAX;
 
-int optee_verify_header(struct optee_header *hdr)
+int optee_verify_header(const struct optee_header *hdr)
 {
 	if (!hdr)
 		return -EINVAL;
diff --git a/include/tee/optee.h b/include/tee/optee.h
index 7bd6638f8559..393a6978f258 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -31,7 +31,7 @@ struct optee_header {
 	uint32_t paged_size;
 };
 
-int optee_verify_header (struct optee_header *hdr);
+int optee_verify_header (const struct optee_header *hdr);
 void optee_set_membase(const struct optee_header *hdr);
 int optee_get_membase(u64 *membase);
 
-- 
2.39.2



