Delivery-date: Thu, 21 Sep 2023 10:53:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjFRE-005h4o-OG
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 10:53:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjFRC-0005gu-Nd
	for lore@pengutronix.de; Thu, 21 Sep 2023 10:53:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Dj+gXPRvLENKrbYkTGBuh7d6flzkU8HPjvWnXwE+yg=; b=i6PW+KjK4sBHVocLc/MBWvMnFM
	lW315OCFYTaxUE0/1O8M9ofAhOBqbTMEoil+gjIh8JjgGmn/tA1vfQQRlIWpjU41jXLiTQOsx54OD
	tgXf6rnTr558qUXjnU+xjHBLwyo2bWDhTfispw2qNNfE8GIS1KtgYaqWvnU1V8h2gA6IKNNSZHyDw
	de3Dx9Y6Tk9avrDcohtxaL/w842o/fPYN6gIKr6usjBnjzu7PuFBwdcQI6nz5PpIDe8qU8H5cstT1
	tcXWBA9PzSipxq7LBsaPupv/JHMLplWnMgGeLpOOamKegaAGA5Nbb4nV0/zUyIws1mJ24a8j4d3Nl
	nvukhwdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFQC-005WdN-0H;
	Thu, 21 Sep 2023 08:52:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFQ8-005WcE-1C
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 08:52:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjFQ7-0005Kc-6w; Thu, 21 Sep 2023 10:52:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjFQ6-007su0-QY; Thu, 21 Sep 2023 10:52:22 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjFQ6-00H3YI-2W;
	Thu, 21 Sep 2023 10:52:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 10:52:19 +0200
Message-Id: <20230921085219.4065181-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911150900.3584523-4-a.fatoum@pengutronix.de>
References: <20230911150900.3584523-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_015224_411811_E73946CE 
X-CRM114-Status: GOOD (  10.51  )
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
Subject: [PATCH] fixup! lib: add stackprotector support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

lib: stackprot: annotate stackprot_randomize_guard with __no_stack_protector

stackprot_randomize_guard() changes the stack protector, so it's
important that it can't make use of the stackprotector itself.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Not a problem in practice unless we use stackprotector-all, which we
don't.
---
 lib/stackprot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/stackprot.c b/lib/stackprot.c
index ca89b37d9042..aa0e88603aae 100644
--- a/lib/stackprot.c
+++ b/lib/stackprot.c
@@ -25,7 +25,7 @@ noinstr void __stack_chk_fail(void)
 }
 EXPORT_SYMBOL(__stack_chk_fail);
 
-static int stackprot_randomize_guard(void)
+static __no_stack_protector int stackprot_randomize_guard(void)
 {
 	return get_crypto_bytes(&__stack_chk_guard, sizeof(__stack_chk_guard));
 }
-- 
2.39.2



