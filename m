Delivery-date: Tue, 16 Apr 2024 13:56:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwhQA-003Kdz-0w
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 13:56:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwhQ9-0001TT-NM
	for lore@pengutronix.de; Tue, 16 Apr 2024 13:56:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NasBePoJBpq7PWFVI5uxBSe8C0uI7ti2fdO7JCqHiGA=; b=ZZeE37hCiRmTvyMtriEuDRCSAg
	7sDpZ+xl8VQ2EF2a659nUSKXolIQVojkvDfoukDr8zlhVDuR/5tBHIwvt67cIICEA7t9EiBH3uzXt
	hxYlb318nOZavVsF8uqAwtm0h6yyJa5ciPJZZp5CJEdWN4OXfJYdh4vIl8Y7ilcNbAptaV9SYvwiV
	ZGe51OUE2mYgFo2oYbCuT1iq5pV0KYS+V/ZNRam16F4o1IPz2YNsy3XZqOCj3auMYsLkiIllBapmy
	utsR0UlOKpWKw0XJMOaC0vVOyP9XdaFO2N45gjogE/XAO8RabfgGl3O6TgGfvCvG47ffwrGv5WW/d
	Ehg05+Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwhPb-0000000C1sR-213W;
	Tue, 16 Apr 2024 11:55:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwhPY-0000000C1rk-2XxP
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 11:55:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwhPX-0000Zt-89; Tue, 16 Apr 2024 13:55:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwhPW-00CbI0-Ry; Tue, 16 Apr 2024 13:55:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwhPW-0007mf-2Z;
	Tue, 16 Apr 2024 13:55:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
In-Reply-To: <20240412162836.284671-1-enrico.scholz@sigma-chemnitz.de>
References: <20240412162836.284671-1-enrico.scholz@sigma-chemnitz.de>
Message-Id: <171326853879.29797.4655418677801697385.b4-ty@pengutronix.de>
Date: Tue, 16 Apr 2024 13:55:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_045540_681654_BD6C6D9D 
X-CRM114-Status: UNSURE (   7.26  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM64: let 'end' point after the range in cache
 functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 12 Apr 2024 18:28:35 +0200, Enrico Scholz wrote:
> v8_flush_dcache_range() and v8_inv_dcache_range() are implemented
> under the assumption that their 'end' parameter points *after* the
> range.
> 
> Fix callers to use it in this way.
> 
> This fixes e.g. spurious corruptions in the last octet when sending
> 129 bytes over ethernet.
> 
> [...]

Applied, thanks!

[1/1] ARM64: let 'end' point after the range in cache functions
      https://git.pengutronix.de/cgit/barebox/commit/?id=65ef5d885263 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



