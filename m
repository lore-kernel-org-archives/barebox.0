Delivery-date: Mon, 14 Oct 2024 15:30:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9Z-004H5e-2l
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:30:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9Z-0003ZG-9L
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:30:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=boW3NmezsQtlBGVp/uDza9G97N/lFrQ4+fNvIVkZnZk=; b=mcgPmSOYRAX/ymKLESttLHc5xC
	PEwP3CG+C+js144w+W6jTSyX8JoIebCxDDKlAarygnHGEtvjn+n/XXn9ePBUPVU92R375vrWcbZDm
	8U1CwgdDP8hvvwvlBgV5RhfwOvcKGpoXTyaSCAsk749RkvgL00WK2VxtW2y+ez240TU02inusKeRu
	FKdoxys828SXA3W03w5kwLA5HG3kaSlrke87Lfzm5Xy036k6kRyS8//mep5wUUntlI5lywVikvTcB
	b4dksa977oaEkJoxvZpvFS2F9kTy0ZA3Wjkps1Bj8QEfdU74cTMZ2Ky1wLlO8sPF2PWh8GGYskRCV
	ug7vZVcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L91-00000005Hne-2hNf;
	Mon, 14 Oct 2024 13:29:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JcZ-00000004za5-2qgr
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:52:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=boW3NmezsQtlBGVp/uDza9G97N/lFrQ4+fNvIVkZnZk=; b=j2ynSVmUInf8/yGQbf2JCwOwpV
	G0O4d3qZ7sBKjqVaV00Ao8JUzyhNLbe2476fPH4XuMsMFe7goBTX4ZPQax8GzVHhFu2MUWkcDkmPQ
	sGUjYOx298J94nR3m16hi6GF9sn8ClyZ7NG2Pp7KJYFy+KrYYX9+8btxlIkjq78/KZC2uCoLmEaeQ
	0rMrNJTyG/QFzt+DIHA3mQEflkdRZxGtRo6gN+VAqq7v3J05lM75Ke7u15GJcSs6ieGMnNedjyDGP
	ewwanH7LlH6LM5jJJ8uxzyGU8DdvfcMtloaXZXknaDgXiBR0liTrYi5H+synKaGwl+xgDxdg/z0ix
	aKNtqt7g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JcV-00000006Ko8-0CE6
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:52:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JcU-0001H8-KB; Mon, 14 Oct 2024 13:52:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JcU-001mVO-7l; Mon, 14 Oct 2024 13:52:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JcU-00BwOc-0V;
	Mon, 14 Oct 2024 13:52:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:52:12 +0200
Message-Id: <20241014115213.2846066-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014115213.2846066-1-a.fatoum@pengutronix.de>
References: <20241014115213.2846066-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_125215_430125_8A424CDF 
X-CRM114-Status: UNSURE (   8.86  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] crypto: fix compile with empty CONFIG_CRYPTO_PUBLIC_KEYS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This currently results in an error message from keytoc when there are no
keys to convert into C. This breaks make allyesconfig, so workaround
that by allowing the symbol to be empty and generating an empty header
in that case.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 crypto/Makefile | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/crypto/Makefile b/crypto/Makefile
index aa8cd21e1d5d..0354e4568373 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -33,7 +33,13 @@ $(obj)/public-keys.o: $(obj)/public-keys.h
 CONFIG_CRYPTO_PUBLIC_KEYS := $(shell echo $(CONFIG_CRYPTO_PUBLIC_KEYS))
 CONFIG_CRYPTO_PUBLIC_KEYS := $(foreach d,$(CONFIG_CRYPTO_PUBLIC_KEYS),"$(d)")
 
+filechk_public_keys_dummy = echo
+
 $(obj)/public-keys.h: FORCE
+ifdef CONFIG_CRYPTO_PUBLIC_KEYS
 	$(call cmd,public_keys,$(CONFIG_CRYPTO_PUBLIC_KEYS))
+else
+	$(call filechk,public_keys_dummy)
+endif
 
 endif
-- 
2.39.5



