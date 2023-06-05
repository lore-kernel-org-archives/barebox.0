Delivery-date: Mon, 05 Jun 2023 08:37:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qf-00BSK9-K2
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:37:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qd-0004Ik-0S
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:37:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ioVH3a3CPaOWEOcyOD30H+biPPbDRIFMnz5P/U3NSgQ=; b=vfSKWd+tTD5k6A95wiDk8tpFjM
	8IZHkrE2oVtWoSzsmAcou6ndgrhT+DMiymlLrhXeKR1Xp7j1QKe9Xq0Xo4SzRphLDO8ufc5dKv2I3
	akqB8csxNdCY0o/AWuHrVr/tglI/vxc1LX4+vDv+a1cclAPljKbYPZhgbPJWyemK2U2UpMAs78i5X
	p1wDgN/jsruYlTxAsNRTJTIF53cwdADFjUCcfpXmNPM9oojHo2ovkQRPBSHFA3rLd168Y4+H39Tw0
	3AN8ZRIfEa9tGH5SzwWl9Mln1tm7wGCvy/MZdY9WCIVnXpfNVLzA1rO0oLR6FmEAiz6/Q+sHqg4BL
	5RK6V21A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pa-00ENJB-0J;
	Mon, 05 Jun 2023 06:36:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pP-00EN8e-0F
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:36:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pN-0003Wr-R7; Mon, 05 Jun 2023 08:36:29 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pN-005Ctg-4X; Mon, 05 Jun 2023 08:36:29 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pK-005pQ5-Fj; Mon, 05 Jun 2023 08:36:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:36:18 +0200
Message-Id: <20230605063623.1254764-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
References: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_233631_148979_A508D1C0 
X-CRM114-Status: UNSURE (   8.32  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 09/14] ci: don't fail fast
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If one job experiences failure, it should not cancel pending jobs for
other defconfigs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/build-defconfigs.yml    | 1 +
 .github/workflows/test-labgrid-pytest.yml | 1 +
 2 files changed, 2 insertions(+)

diff --git a/.github/workflows/build-defconfigs.yml b/.github/workflows/build-defconfigs.yml
index d8813ade7ca1..c205944f2660 100644
--- a/.github/workflows/build-defconfigs.yml
+++ b/.github/workflows/build-defconfigs.yml
@@ -11,6 +11,7 @@ jobs:
       options: --user=root --privileged -v /dev:/dev
 
     strategy:
+      fail-fast: false
       matrix:
         arch: [mips, powerpc, riscv, sandbox, x86 ]
         regex: ["*"]
diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 2f823664a4ef..e0b9cbf799f4 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -11,6 +11,7 @@ jobs:
       options: --user=root --privileged -v /dev:/dev
 
     strategy:
+      fail-fast: false
       matrix:
 
         include:
-- 
2.39.2



