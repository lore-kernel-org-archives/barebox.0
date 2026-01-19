Delivery-date: Mon, 19 Jan 2026 08:45:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhjwi-002xJt-0G
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 08:45:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhjwh-0004xt-4C
	for lore@pengutronix.de; Mon, 19 Jan 2026 08:45:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k7HnULoHtk7hD0GbJPkYgjrkfd50a1KZObONdgBytqY=; b=WKqFTgOFL/K7ILut1rbQJvZSPh
	NKIzeW9E2jCogtNhGFpB4gJXoY6PietkDqjxhOp6AlAqINSv+U91ejCJYnILRDd2dKgVxnoQD0EoQ
	iBAdtcSXc5HlratO5otUivEcfC7xVg7M9dbdMCFHLTzBzg/KtjmKE5JzM0iirst1GxTbj10vYK+OC
	wSR4ino2+A9VfJ1gH1it04I+eEwaReDdQ1cuQ1UAbGUk2oXU/qJm1pvBiAmlFV7GFZidh3okayz19
	ottIQ67uL1CKL+LSh7t+1QnEI9G7wFreKBr6HhZHRrN44revcu86p96Cm7MK2n1wAebxMjKE+LtkF
	vWbePlfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhjwB-00000001W9L-0K1H;
	Mon, 19 Jan 2026 07:44:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhjw7-00000001W8n-3XAC
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 07:44:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhjw5-0004o8-UN; Mon, 19 Jan 2026 08:44:29 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhjw6-001NEs-1M;
	Mon, 19 Jan 2026 08:44:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhjw5-00000003PI1-2tin;
	Mon, 19 Jan 2026 08:44:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Holger Assmann <h.assmann@pengutronix.de>, 
 Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20260116134948.3931720-1-a.fatoum@pengutronix.de>
References: <20260116134948.3931720-1-a.fatoum@pengutronix.de>
Message-Id: <176880866968.812186.14667155338582287755.b4-ty@pengutronix.de>
Date: Mon, 19 Jan 2026 08:44:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_234431_889306_F2414A2A 
X-CRM114-Status: UNSURE (   7.48  )
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
Subject: Re: [PATCH] ARM: i.MX8M: atf: add debug messages just before TF-A
 jump
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 16 Jan 2026 14:49:46 +0100, Ahmad Fatoum wrote:
> The handoff to TF-A has been a frequent source of hangs during board
> bringup in the past for various reasons.
> Add a debug print just before branching to TF-A and add a comment
> explaining some possible issues to aid with future debugging.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX8M: atf: add debug messages just before TF-A jump
      https://git.pengutronix.de/cgit/barebox/commit/?id=11db05a5527d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



