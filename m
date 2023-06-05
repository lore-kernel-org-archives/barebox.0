Delivery-date: Mon, 05 Jun 2023 08:37:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qO-00BSFW-U7
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:37:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qM-00049H-Mp
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:37:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H4xRv9IC8VR6jJJ/b5LKNE6ObGCWBHrlKDg0P5G2tuI=; b=hEqV6bPUmaAB+p73CAZal+26um
	x5NUZ7J9qmd1Q9RejE1Uy7ZyiD3+PYustsONxKQt3QwGsvbaZO9QOVri6oz5VbghuL/H0vQIJDHB4
	gSscoMHNKlxfEXNB8ON33rFPsJmQoMPDRo6CAFwBmw4Y2l36jb/jemf/eTlJOQZlSL5e331Cyquif
	5tqFvxwdp05qVuIuYTomQxtc94EK/SpwPBBRiYR3AFKUQ0s4sqSQTx/TTh2u1fVPu7sYPqBME53rc
	/gKeC3qqrt2vGjysX+YDGn500pxqqx1Gu1Uerlo8vaMJN3ufUrF4e8OgFG/wvYbbdS4tI+CvKTive
	WdtaR4Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pR-00ENB0-1E;
	Mon, 05 Jun 2023 06:36:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pN-00EN7e-2H
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:36:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pM-0003VZ-Fo; Mon, 05 Jun 2023 08:36:28 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pL-005CtB-Ns; Mon, 05 Jun 2023 08:36:27 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pK-005pPZ-FB; Mon, 05 Jun 2023 08:36:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:36:16 +0200
Message-Id: <20230605063623.1254764-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
References: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_233629_751182_742A7630 
X-CRM114-Status: UNSURE (   7.17  )
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
Subject: [PATCH 07/14] ci: test-defconfigs.yml: rename to build-defconfigs.yml
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Having both workflows with test in the name can be confusing, so rename
the one that does the build test to build-defconfigs.yml.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/{test-defconfigs.yml => build-defconfigs.yml} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename .github/workflows/{test-defconfigs.yml => build-defconfigs.yml} (100%)

diff --git a/.github/workflows/test-defconfigs.yml b/.github/workflows/build-defconfigs.yml
similarity index 100%
rename from .github/workflows/test-defconfigs.yml
rename to .github/workflows/build-defconfigs.yml
-- 
2.39.2



