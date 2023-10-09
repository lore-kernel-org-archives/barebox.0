Delivery-date: Mon, 09 Oct 2023 13:54:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpoq9-001qbg-Nx
	for lore@lore.pengutronix.de; Mon, 09 Oct 2023 13:54:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpoq7-0002Ta-Oa
	for lore@pengutronix.de; Mon, 09 Oct 2023 13:54:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DZWOyZWJdnIlus+x1W/n0zKoUuXGO3POILWH069p3zY=; b=dmBbsSQ9MUoLcWi0DpMbCoaGCw
	JuNbtIMpd3ECWJOMSYFnvFQBgyH1PmhfdHelGZVp5Kc7dTZCcvNpzB2JiXcYPIyXGnVfP1F9xSm2m
	wLLPtcVkBJinMyS24hqjZNSunzZoLVSZ3Fl26KFlTT0K9MaZHSojyzGgs9l7+mUYLpKlxGNDBSRJf
	zg3l0j4tXS+TMHAPn8YVgrMZGdAyKXtubY+sRBo5pPqqyfkL0n93snh9umEOYLv0fX8w0dd/SQAMP
	WZgC4p80m7el7o40X8FVt3Deg0HjDpt9JD/n7JCPeCrGhRt1D8bUPJ/DRnchJqdCH0Jv1nkTgbRvs
	SzEpEqVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpoox-00AWQB-37;
	Mon, 09 Oct 2023 11:53:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpoou-00AWO3-2H
	for barebox@lists.infradead.org;
	Mon, 09 Oct 2023 11:53:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qpook-0001nL-Gd; Mon, 09 Oct 2023 13:52:58 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qpook-000P3t-22; Mon, 09 Oct 2023 13:52:58 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qpook-009ytO-05;
	Mon, 09 Oct 2023 13:52:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Oct 2023 13:52:57 +0200
Message-Id: <20231009115257.2371076-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231009115257.2371076-1-a.fatoum@pengutronix.de>
References: <20231009115257.2371076-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_045308_740513_3351D5C9 
X-CRM114-Status: UNSURE (   9.17  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] test: self: warn and exit if device tree parsing fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

selftest DTs are compiled into barebox, so it's not expected that they
fail to parse. Nevertheless, error conditions shouldn't be ignored,
so warn about it and early exit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/of_manipulation.c | 2 ++
 test/self/regulator.c       | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/test/self/of_manipulation.c b/test/self/of_manipulation.c
index 64913ac1eab8..8d645b113732 100644
--- a/test/self/of_manipulation.c
+++ b/test/self/of_manipulation.c
@@ -121,6 +121,8 @@ static void __init test_of_manipulation(void)
 
 	expected = of_unflatten_dtb(__dtb_of_manipulation_start,
 				    __dtb_of_manipulation_end - __dtb_of_manipulation_start);
+	if (WARN_ON(IS_ERR(expected)))
+		return;
 
 	assert_equal(root, expected);
 
diff --git a/test/self/regulator.c b/test/self/regulator.c
index 08073cfc9158..bcbcbe33e12f 100644
--- a/test/self/regulator.c
+++ b/test/self/regulator.c
@@ -175,6 +175,8 @@ static void test_regulator(void)
 			return;
 
 		overlay = of_unflatten_dtb(__dtbo_test_regulator_start, INT_MAX);
+		if (WARN_ON(IS_ERR(overlay)))
+			return;
 		of_overlay_apply_tree(of_get_root_node(), overlay);
 		of_probe();
 
-- 
2.39.2



