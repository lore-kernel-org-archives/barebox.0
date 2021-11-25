Delivery-date: Thu, 25 Nov 2021 17:09:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHJl-0001aW-1L
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 17:09:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHJk-0000Ki-6D
	for lore@pengutronix.de; Thu, 25 Nov 2021 17:09:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PeS0KG1SzNuNtsaNbwvWJxESZLGmnqw9ccSCZ4BE4zw=; b=DElGMkuihPEtE4
	h06ShjVt/V7fp8H1sN+AI9ibcQQZQsgH2QN0QbXd22KQQLSlnQIQZdFS0GqNce1SBt+/SsirPKlu5
	+IPUyMvOpv8fjIf7X2blY+h5RtQp8HZo4FONGe7J89Lq1RdF/+gANZmXBdCXccXVCJibfmc6sEMRr
	V4OaHIy72oA+b6ttDdskPNF64CaQLjsOpL0vLqV8irOFbMs8WIlm2k8b9jrtsYb53FlZLmFbKsgrA
	lX0dPVxHYQMddD68klba6Lb7AQBPSIPF3T052MxOjyP4wCTwj2+mOIebZj141DYO3GLlX6yS3vo4/
	1krLAvw4l+y4RLw6V8fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqHFj-008Blg-OO; Thu, 25 Nov 2021 16:05:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqHFc-008BjJ-Sx
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 16:05:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHFY-0008AG-5T; Thu, 25 Nov 2021 17:05:28 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHFX-00G3ou-LV; Thu, 25 Nov 2021 17:05:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 25 Nov 2021 17:05:26 +0100
Message-Id: <20211125160526.3827881-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_080532_962032_F9F6AAA8 
X-CRM114-Status: GOOD (  10.24  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] test: emulate.pl: fix typo in help text
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

s/kconfig_add/kconfig-add/

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/emulate.pl | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/emulate.pl b/test/emulate.pl
index 78c2815884b3..77b751a329b3 100755
--- a/test/emulate.pl
+++ b/test/emulate.pl
@@ -515,7 +515,7 @@ skipped.
 Applies test/kconfig/full.cfg on top of base.cfg. This enables as much as
 possible to avoid skipping tests for disabled functionality.
 
-=item B<--kconfig_add>=%s, B<-K>=%s
+=item B<--kconfig-add>=%s, B<-K>=%s
 
 Extra kconfig fragments, merged on top of the defconfig and Kconfig
 fragments described by the YAML. In tree configuration fragment
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

