Delivery-date: Mon, 02 Jun 2025 09:54:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM007-002t0g-1U
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 09:54:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM006-0000W7-Ti
	for lore@pengutronix.de; Mon, 02 Jun 2025 09:54:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sre8Nh90rzmhp708zHiCjniFDn6Jjr79ZrK0iPPBjCo=; b=uAkDluJSqDAzFWiNaSw1CuuOEM
	XKquUTy2u6438nFW/R66vfvhe7TIvsQhYDfXwjlGlNJ3ZvUyK6nvCv4pqZjctjF5/xuHQVmlLjfes
	aRCCNt1L8pFPW+CVB807MkI8MG0n6Td3HyxFyHkZjgaBAqgrR3IiddpYEuuptffu/oLMKyASFt1TC
	BwOm5sQzAR5BxlVhvYjTYo6TYqLEBa7lp5JmpY3vlayG+9eWYurbwvWoLNPt0R8c2BE+VY8SoPJRl
	ergy0A300aU2gZ5ElkoxHGlye71MFnqf24V1CG0GkKexX8EPB+DCU2g56REJUcus3LFZEeTi+GPog
	AzJcPPQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLzzg-00000006wa2-2nZ6;
	Mon, 02 Jun 2025 07:54:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLzzd-00000006wYv-3nJ4
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 07:54:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uLzzc-0000LH-JN; Mon, 02 Jun 2025 09:54:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uLzzc-001PuT-1K;
	Mon, 02 Jun 2025 09:54:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uLzzc-003W0M-16;
	Mon, 02 Jun 2025 09:54:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250528153709.636444-1-a.fatoum@pengutronix.de>
References: <20250528153709.636444-1-a.fatoum@pengutronix.de>
Message-Id: <174885084033.837987.5613268692129987869.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 09:54:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_005401_946574_2CC7F24F 
X-CRM114-Status: UNSURE (   6.44  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] lib: random: add CONFIG_INSECURE logging of seeds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 28 May 2025 17:37:09 +0200, Ahmad Fatoum wrote:
> clocksource_srand() can be called after events that take a varying
> amount of time to extract some entropy. To get an idea about how much
> entropy we are getting out, add a CONFIG_INSECURE-guarded debug print
> that prints the seeds out as-is.
> 
> 

Applied, thanks!

[1/1] lib: random: add CONFIG_INSECURE logging of seeds
      https://git.pengutronix.de/cgit/barebox/commit/?id=da582f605ebf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



