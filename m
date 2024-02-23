Delivery-date: Fri, 23 Feb 2024 08:36:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rdQ6k-002dhV-1N
	for lore@lore.pengutronix.de;
	Fri, 23 Feb 2024 08:36:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rdQ6j-0001Jw-Nd
	for lore@pengutronix.de; Fri, 23 Feb 2024 08:36:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yUcZjigEaRZUcftKvauWk/rLdHwYkwr6bfU5KEYJM50=; b=LJXgtIvr2HKfP6oFWKxonJXxms
	yRuLVrPGhOqmU6AmSQli/NNYAdfCoRB7Tdgd+K+w63lJWxeDp5VR28Y5YgcUz/b0RHvO0YHSP6KAo
	Z4Y3r8YwkhmC29fittuI4Dv9iRCv57ZEN8dPD1hJqU9M+YU0dekizHxheOOC4L5d1V+EIr4GD7IVP
	QLxKe1MNmr//8RmQLDU+biu782KnGfUul3OU8pA5Lro2mmvlaar9YeKXZ+a0n2ccRbnf30nzDubGn
	AYYBKGkaklz2GYLGNR2AlKtXGEOGfcZfKf6gx/vQJurDu3yZddFR7VVVfZOeHG3lT2aPk4pT4w7te
	u+senGnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdQ5A-00000008JSw-0WJO;
	Fri, 23 Feb 2024 07:35:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdQ2Y-00000008J0f-3lU3
	for barebox@lists.infradead.org;
	Fri, 23 Feb 2024 07:34:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ2V-0000oM-9k; Fri, 23 Feb 2024 08:32:11 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ2U-002NfF-Sy; Fri, 23 Feb 2024 08:32:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ2U-001F8f-2g;
	Fri, 23 Feb 2024 08:32:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240220123215.3758465-1-a.fatoum@pengutronix.de>
References: <20240220123215.3758465-1-a.fatoum@pengutronix.de>
Message-Id: <170867353082.296344.4796773178728362737.b4-ty@pengutronix.de>
Date: Fri, 23 Feb 2024 08:32:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_233216_124784_8FCB9BF6 
X-CRM114-Status: UNSURE (   5.93  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MM: innocomm-wb15: switch to upstream DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 Feb 2024 13:32:15 +0100, Ahmad Fatoum wrote:
> The same DTs we have in barebox have made it upstream with very minor
> differences, so drop the copies inside barebox.
> 
> No functional change intended.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX8MM: innocomm-wb15: switch to upstream DT
      https://git.pengutronix.de/cgit/barebox/commit/?id=b2b465a75814 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



