Delivery-date: Mon, 12 Apr 2021 09:18:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqI-0003f2-8R
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 09:18:42 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqH-0004lp-Jb
	for lore@pengutronix.de; Mon, 12 Apr 2021 09:18:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uTqQRXypackhWwwJ157AKjCX7C4D4GLcUVl/1vT3aL8=; b=pgM/puRZnADdAXvxuSjTM3R2m
	F3pfj7MDxYXVk+Gnh6aKXDNPHIWOTDcl6wV2WNt0+itTB6Znx1Ct/xReJYH3pGB+eMxSqMzGZ98IL
	xEDVAgeF69PqcyonJ5MSp8NEmORH5+zN3Gn1Qyhq8PsQI1QY0IWwOSsZmC3+Y/Mv5HCJhPpRI7GhQ
	+pia7G8I3zgf1lzU7z5B2KsKORVObc/XNtqP0C24V1OCSx4A+hdzWm7T4BcFQAs8TNnrvV07X6cnv
	vog3893YVXHO8X5FdPzuP8zyfuib0TkkVj7ssDc5PCVBOb0ZMOxgMWv79AGbV/1KQ+XFsWeTszcG7
	UYVaCCbFg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVqp5-005vyh-FM; Mon, 12 Apr 2021 07:17:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqoh-005vu9-E7
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 07:17:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=2Z4GrvfY8U01P0nAICxYYXSRQgsGpyRuy+TNBiXeCss=; b=j7HB2yUEHeMQBvWzQ76NNV4wOd
 mLYh0WizPtzXvW0QmMWPZvyV33uWI+0cU++wuUB56unRm1JgYtXD1lVVe33xMHoDVtM7XJZwiQVaT
 x16a1lpM/uF2XwntEXNlBQreLPVF4vym+vU8p+IHSVB2jsxex0efUjGV1Zwz3B1rzTKL9xbfczE2I
 zOWzspuczJ6p7vBclZ1D3tfUNQywTl5ujVoQXP4gFq8TIi4sxTNX1QGFOiq2vf9aNU5uVeuZUpLVz
 58cENkoR3lwEoW9mf33V72c/pLEBMBOGL9/uUtfjkN3E6f9Bw1sdW2mXRqxS4PmGYQqXrkknjcniT
 pw9M3wfw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqod-005vEk-Sh
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 07:17:02 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoa-0004HE-4R; Mon, 12 Apr 2021 09:16:56 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoZ-0002fP-71; Mon, 12 Apr 2021 09:16:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 12 Apr 2021 09:16:36 +0200
Message-Id: <20210412071651.8769-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412071651.8769-1-a.fatoum@pengutronix.de>
References: <20210412071651.8769-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_001700_016302_3AE3E31F 
X-CRM114-Status: UNSURE (   7.57  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 02/17] kbuild: add ARCH={i386, x86_64} as aliases for x86
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux already does this. Follow suit so we can interoperate with tools
that assume Linux-like Kbuild structure.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Makefile b/Makefile
index a13f1e792549..387f46b587d4 100644
--- a/Makefile
+++ b/Makefile
@@ -343,6 +343,14 @@ ifeq ($(ARCH),arm64)
        SRCARCH := arm
 endif
 
+ifeq ($(ARCH),i386)
+       SRCARCH := x86
+endif
+
+ifeq ($(ARCH),x86_64)
+       SRCARCH := x86
+endif
+
 # Support ARCH=ppc for backward compatibility
 ifeq ($(ARCH),ppc)
        SRCARCH := powerpc
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

