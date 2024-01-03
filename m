Delivery-date: Wed, 03 Jan 2024 11:14:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyH3-001mRa-1z
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 11:14:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyH2-0002DR-Ki
	for lore@pengutronix.de; Wed, 03 Jan 2024 11:14:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R53LRViF8V7N6gWZW3JjbBfSIXBXdHOdhnET7PirX5s=; b=dBEwg8bSK5mVq4wbf+Yp+2dIOM
	2N3LbfGt8AgxKFxGkkfhT1hEctjAoFKqJkJTkcBSqteD/uxlD7jz+wDAa0HFd9hW2ExekVm38S4Xc
	y0FWvcIief9DG4hpzI4pFs5Y/FcCzr6Ld9/YD151r0cFZrUyzmEcglMyUS7k77WVBoQRWTr1QoScT
	NSY88Djj1FSaU7O/2lyDTFC23BoDVtAfkkIZlMy+bUHJFTLxkKYo1WlJOLOjUDNEpAr4ARcK79xRP
	2wDUkyrCdnJbMIHnCU96oIn90bgM+fOSm3482NYV9Z5cWw3y1i7H/6JO90BnHeNk0GQxL6IoeT803
	yDkWrqew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyG1-00ALm7-37;
	Wed, 03 Jan 2024 10:13:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyFv-00ALit-0z
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 10:13:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyFu-0001jb-60; Wed, 03 Jan 2024 11:13:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyFt-0005vm-Pr; Wed, 03 Jan 2024 11:13:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyFt-00B1v2-2J;
	Wed, 03 Jan 2024 11:13:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 11:13:44 +0100
Message-Id: <20240103101344.2628970-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103101344.2628970-1-a.fatoum@pengutronix.de>
References: <20240103101344.2628970-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_021347_364979_71155A49 
X-CRM114-Status: GOOD (  10.70  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 3/3] test: self: mmu: fix message on skipping tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The message currently reads:

  "skipping CONFIG_ARCH_HAS_DATA_ABORT_MASK because test_zero_page=n\n"

when it should be the other way round. Fix that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/mmu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/test/self/mmu.c b/test/self/mmu.c
index 58961daaab95..dbe5004550a8 100644
--- a/test/self/mmu.c
+++ b/test/self/mmu.c
@@ -207,8 +207,8 @@ static void test_zero_page(void)
 	total_tests += 3;
 
 	if (!IS_ENABLED(CONFIG_ARCH_HAS_DATA_ABORT_MASK)) {
-		pr_info("skipping %s because %s=n\n",
-			"CONFIG_ARCH_HAS_DATA_ABORT_MASK", __func__);
+		pr_info("skipping %s because CONFIG_ARCH_HAS_DATA_ABORT_MASK=n\n",
+			__func__);
 		skipped_tests += 3;
 		return;
 	}
-- 
2.39.2



