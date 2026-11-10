Delivery-date: Tue, 10 Nov 2026 21:56:50 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQstd-009TlE-2G
	for lore@lore.pengutronix.de;
	Tue, 10 Nov 2026 21:56:50 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CAC07201BFB
	for <lore@pengutronix.de>; Tue, 10 Nov 2026 21:56:45 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HOrLcN1u;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794344205;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=FLHI6DCMy4DGKTwXzKQwdjwFzF7aZYDINU01kmKSPP0=;
	b=fJT3A6fHgcH25X2rRVg+WQlL98y0CKwjwAnvAUG4/jdyq47jdXkscDva8Z+z2r+/CcmAR8
	Ql392AooytvN5nKKUtf+7iSuBM+I2BEVG8tIdiStt+yrDSoaFmNrKnP4BDlwMQpjWAgYk6
	mOmmSxu6OfF7lAWhBnG2axBu/eGn9EGlAmWLPx7oxrGVsIKMHTqP/5LUw555K3w14joFti
	MNvS3OUCeodlA0kkT/dRjgeaFlkOleqID0RIs3Pq1FYGgjppJTiUq59aI8rJebzfvYRgaP
	1+W/h+vbWsxvaBJpNRKdjfJpMJ+aefVwLB229RkU/XTRFQvhcxz6DUgjsFySrw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794344205; a=rsa-sha256;
	cv=none;
	b=TIDQjo4RJoC/sr5BSg0aJZ5mZK1fa2ZJxljMbF8X8v0cY/BL5UkswNMOTtugzm1+KZiwOe
	owFlwFlB4OTN1uyaNgZSb9l4NNoPnJ2Z/h9f9m0GuzhtXRcomIQf8tDELaTTo391kyBlf9
	wEUObI/nkjvipkaLT6saAmLDGInRh67JMEdkOfx0r9SmGjI08uPbs7RFb9TR0rFjJymuyw
	JGUwuIvNYjTTNw9EWUQLaRf9M4XWnCW0wns2bgOBIlufVgDAnPdp0w3ZC1G6+YwHvAxkav
	ffK36FeFEl2HoDQ1IWJcOjo6J/2oop0ivq78ydvyVEbv7ZQTyJ21Hm/4va8cIQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HOrLcN1u;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=FLHI6DCMy4DGKTwXzKQwdjwFzF7aZYDINU01kmKSPP0=; b=HOrLcN1uWnsZu09MG1qJQg6wTl
	U1lJCDYdr1+8S3qS/av2nx0a8D5drodUcik+ux/T8FCHySplG0dvTPai6FhKXs0w19A8+pGf8K3iL
	fpUqrjuEVAiLEo81pX0xO6mUVJ/xMGyRemML+w4pp7IHnzMEjZtSLcoeghgEzRyWSvvXxvjKK3R7a
	2neQRTR16hYQ0y0wRKFW7wQIqYn4s1ZypysMtoO6d7C6/rHfibMYKARtPR6r4g37W6e6S0qFhOFN3
	5qRE1cDM6y0P9MWwGXCK+O9u0uSkPqxVuXriT99rcdx0+89immJ1Pz/kZ/axfleQTF2BusJOykQjJ
	j8rfBVIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQssH-000000051BF-1onj;
	Tue, 10 Nov 2026 20:55:25 +0000
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65] helo=vs81.iboxed.net)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQssE-000000051Ab-0RTj
	for barebox@lists.infradead.org;
	Tue, 10 Nov 2026 20:55:23 +0000
Received: from blala.de (localhost [127.0.0.1])
	by vs81.iboxed.net (8.18.1/8.18.1/Debian-6) with ESMTP id 6AAKtJ4M029369;
	Tue, 10 Nov 2026 20:55:19 GMT
Received: (from akurz@localhost)
	by blala.de (8.18.1/8.18.1/Submit) id 6AAKtJvO029368;
	Tue, 10 Nov 2026 20:55:19 GMT
From: Alexander Kurz <akurz@blala.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>
Subject: [PATCH 1/2] ARM: boards: kindle mx50: remove old bootm -c option
Date: Tue, 10 Nov 2026 20:55:12 +0000
Message-ID: <20261110205513.29359-1-akurz@blala.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_125522_443391_B170BF04 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Support for the bootm -c option has been dropped with the
   2026.10 release. Remove it in the boot script as well. Fixes: 93e0ed81f13a
    ("commands: bootm: remove -c and -s options") Signed-off-by: Alexander Kurz
    <akurz@blala.de> --- .../boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
    | 2 +- 1 file changed [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-5.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[akurz@blala.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[blala.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akurz@blala.de,barebox-bounces@lists.infradead.org]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: CAC07201BFB
X-Stat-Signature: at3cyagig5qwwc33cxwzki6yqhjhz86p
X-Rspamd-Action: no action

Support for the bootm -c option has been dropped with the 2026.10 release.
Remove it in the boot script as well.

Fixes: 93e0ed81f13a ("commands: bootm: remove -c and -s options")
Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 .../boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel   | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
index b8d93be593..3109f137bf 100644
--- a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
+++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
@@ -12,4 +12,4 @@ armlinux_system_serial="$global.board.ocotp_serial"
 
 global linux.bootargs.dyn.root="root=/dev/mmcblk0p1 rootwait ro"
 
-bootm -c /dev/mmc2.kernel
+bootm /dev/mmc2.kernel
-- 
2.39.5



