Delivery-date: Sat, 23 Aug 2025 08:30:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uphlI-003aCh-1z
	for lore@lore.pengutronix.de;
	Sat, 23 Aug 2025 08:30:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uphlH-0004PL-FE
	for lore@pengutronix.de; Sat, 23 Aug 2025 08:29:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I7xLBky46OmBZRpyDMUT6UjB6fYsfq5ZBnWI29I4tA8=; b=Xmf1M5HubwnLcPCA9x30Cbh9Gn
	aagGMz2LDBpbXQ3BwNnfvVJA+KnCt3fNgNHY7JFoNlLml/efLgGle9zYJ17JaWtuMVY9OreLfX3Lb
	e6Y+C92ezAd7ebvPdraPegTtX66fVyHM4MTLtSIGa1l/iTmUb8dRYoYyN91wzRdni+YpmU5k3NO8m
	2JWmHWVvK3lTGYPvkhyckGe+t3AA6oESN+o8gfIs5u7GtWVzvQn7/FZP4wu0zxXYaezjb1D/BpvWo
	E7KeEHmcRVjjSkqmK7NUBq3fcWDro+pse8G/Ub4nCmriztVRwnBmIbCjfQZbiU6R/Fg702neqWHAa
	4K3C2n+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uphkS-00000003wsP-4508;
	Sat, 23 Aug 2025 06:29:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upQt9-00000002UA9-2kYP
	for barebox@lists.infradead.org;
	Fri, 22 Aug 2025 12:29:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1upQt8-0001N9-Cn; Fri, 22 Aug 2025 14:28:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1upQt8-001Ziw-0h;
	Fri, 22 Aug 2025 14:28:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1upQt8-00000002nrc-0TVq;
	Fri, 22 Aug 2025 14:28:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 22 Aug 2025 14:28:57 +0200
Message-ID: <20250822122857.668323-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250820-security-policies-v1-4-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-4-76fde70fdbd8@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_052859_690594_4DD3F54C 
X-CRM114-Status: GOOD (  11.27  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! Add security policy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With $(ARCH) in Sconfig we can not share Sconfig files between
different architectures as the build system would detect them as
outdated when the architecture is changed. Let's just drop $(ARCH) as
it's not really important in this context anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Sconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Sconfig b/Sconfig
index 183a6687f0..cdb2ceccb1 100644
--- a/Sconfig
+++ b/Sconfig
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-mainmenu "Barebox/$(ARCH) Security Configuration"
+mainmenu "Barebox Security Configuration"
 
 source "scripts/Sconfig.include"
 
-- 
2.47.2



