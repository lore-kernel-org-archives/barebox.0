Delivery-date: Mon, 14 Oct 2024 15:30:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9Y-004H5I-1u
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:30:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9X-0003XQ-2q
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:30:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MNVGPTXxu9xxS1wjVrsRoL3t0j862MvLSEh7E+7QhrI=; b=wnpC+Rk5wpr/fQOje5Ma+wxQuJ
	p4tGo2ijzCxF1vKI12MtBr6LLDu4yZDtGVaq1P+UYd2nGSnbgfrq8nFLmD/ljWbcWB8u5UQ/ZFyHq
	wd3rNQe0VSVjTITOt8WCc+/dA7BE2q1si1JUxbaaA14jeh2oE+EySLpQjtIIkms+YjhiFWeav5P5Y
	FNmMt7qLiAd2so08tJsQs6OtGVvdziCzIAOXRp8b2M0w0Gkq5wZ7llkLq4DP1+PLlDkqVxG5eSXyj
	dp67x43OBjuE35Yeb75p3z5vY7NdzuQZe7s/eSmL/UHJr/3rNj/8Mw64Rku5UAEZCas/0GBENwXL1
	dEKXiTTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L8x-00000005HlB-2jbo;
	Mon, 14 Oct 2024 13:29:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JcY-00000004zZz-3ufl
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:52:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=MNVGPTXxu9xxS1wjVrsRoL3t0j862MvLSEh7E+7QhrI=; b=EImVPIrv4WwVhuvMjXMnIxJW2F
	5K1sgdDG3m+E/1QOIaF8+ExEw2jjgDMnkLg5IbHehSy08J2wvi8nYlqdmFpzz9MqoyiQKruF3cgHq
	nh8ZOhdlCVm0bF+UoXhhRo51aV8HDmh8J1uBkYJ4D9XS4VmfKyVJ/MKuoxl0qPB0fDdUdaOk516xI
	l9Hz3TyAkHRSYbnfeg/AsjIuG91/x4VCa6ky63PfcWvARMjtwgpjGA8kjw8H55RPWOyrpwxIiaA+E
	uJlvklKVOEC54uw34H22DSjCTuD1eK0bzB+lHL8kPMP+hwBifQkuAQjqkrL89WCycXOclwx6GBf61
	enJojSSw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JcV-00000006KoA-0CIc
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:52:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JcU-0001H9-LL; Mon, 14 Oct 2024 13:52:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JcU-001mVR-9J; Mon, 14 Oct 2024 13:52:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JcU-00BwOc-0e;
	Mon, 14 Oct 2024 13:52:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:52:13 +0200
Message-Id: <20241014115213.2846066-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014115213.2846066-1-a.fatoum@pengutronix.de>
References: <20241014115213.2846066-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_125215_500333_69BBC6B3 
X-CRM114-Status: UNSURE (   8.87  )
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
Subject: [PATCH 3/3] FIT: add dependency on CRYPTO_BUILTIN_KEYS for signature verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

FITIMAGE_SIGNATURE adds references to symbols that are only defined when
CRYPTO_BUILTIN_KEYS is defined. Fix this by adding the missing select.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index aca44ff28b36..859356038386 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -63,6 +63,7 @@ config FITIMAGE
 
 config FITIMAGE_SIGNATURE
 	bool
+	select CRYPTO_BUILTIN_KEYS
 
 config LOGBUF
 	bool
-- 
2.39.5



