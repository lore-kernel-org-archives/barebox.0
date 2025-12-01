Delivery-date: Mon, 01 Dec 2025 11:14:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0vi-006mgX-1u
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 11:14:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0vh-0005Jh-Uq
	for lore@pengutronix.de; Mon, 01 Dec 2025 11:14:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/fpyw/aZLJ/M2ZABNucq5RIy3k/FF8LY6xH/qBDXrbo=; b=bFF51MNYMTf0zkvyJq/j8Is+uP
	GIz250tOkZuz/aeHIvubJNFwOVxDEkkbSMGf0Ap3uu16A/wfyKYW7GrrxJgmYvBTfU/z6Q3DOq/6q
	1fh0DL+wEWEz3rNz7xF69ATfuxubmxwPhMB65EpkZnQraVqSWnSxRCwZXmFayO225gfB0o2wFr6O2
	nyKGjRbkDKEOFbBSlEfrI9lmsKj0wuwgyRreB4rwwtCO2XPsunFVqKGzXG3ctNvTaDogFORSL+MiW
	zI6cG91Yul97rPWOYv+A68qbi3+O1Lyp3U9GCB0rOqlzRsa5jXxOCVYra/fBZeOAeFX5RH6IyZfXG
	UOPWmYgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0vM-00000003Ih4-05pc;
	Mon, 01 Dec 2025 10:14:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0vI-00000003IfR-2n1G
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 10:14:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0vH-0005EF-8G; Mon, 01 Dec 2025 11:14:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0vH-003QW0-0D;
	Mon, 01 Dec 2025 11:14:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0vH-00000000eUx-00O0;
	Mon, 01 Dec 2025 11:14:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Grzeschik <m.grzeschik@pengutronix.de>
In-Reply-To: <20251128-keytoc-v1-1-5540f8543f32@pengutronix.de>
References: <20251128-keytoc-v1-1-5540f8543f32@pengutronix.de>
Message-Id: <176458406299.155656.15439988952636363320.b4-ty@pengutronix.de>
Date: Mon, 01 Dec 2025 11:14:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_021424_729321_B53DF39A 
X-CRM114-Status: UNSURE (   7.29  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] crypto: keytoc: fix env parsing after keyring support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Nov 2025 09:22:01 +0100, Michael Grzeschik wrote:
> Since the support for keyrings was added for keytoc the parsing of
> pkcs11 keydescriptions that are set from environment variables is
> broken. Fix this by adding the necessary try_resolve_env call before
> working with the key description.
> 
> 

Applied, thanks!

[1/1] crypto: keytoc: fix env parsing after keyring support
      https://git.pengutronix.de/cgit/barebox/commit/?id=04941314c35c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



