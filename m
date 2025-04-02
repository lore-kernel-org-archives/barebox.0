Delivery-date: Wed, 02 Apr 2025 10:27:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tztRV-007Kfd-38
	for lore@lore.pengutronix.de;
	Wed, 02 Apr 2025 10:27:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tztRV-0002Of-EQ
	for lore@pengutronix.de; Wed, 02 Apr 2025 10:27:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7uzlzRmoYh1UH6w2wlASZwQa3Vb8fJy7pz97Iqw/T9Y=; b=jOg5pkvRDU88RYq5X70tr5da5x
	Vl/Yx0wUui1UMw8DCz8J9ZO4xPP2povpR8hsFSm4M/94SwRrWJq0Ti71dv1TU7nzvJK9k8eVJnsW2
	f6KjcwoA2mQLT8C/aDarB/p2fZRSNc3qIe09Msdv14HPDQaWLDPT4X8MUUJSZC8syUFpjaeEI4LZl
	rOKjFISRR+7KorMuk3YSSeetXaLF3O7Jz23jjyHan3DOJGFH8zpUZe71vf/3OKvxc6sSXdC12cwPj
	1XZMd6ZUvZioOKwbe0xPimoJ7cze/b+H8kzXy2jazEjMCGN3ORkH9f5L5rDFUAd8/JVFeo9HI5Md7
	mmbbgl7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tztR3-00000005WaI-2xS7;
	Wed, 02 Apr 2025 08:26:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tztR0-00000005WZz-413T
	for barebox@lists.infradead.org;
	Wed, 02 Apr 2025 08:26:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tztQz-0002Ju-Lf; Wed, 02 Apr 2025 10:26:53 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tztQz-002u7n-1Z;
	Wed, 02 Apr 2025 10:26:53 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tztQz-00ESkX-1M;
	Wed, 02 Apr 2025 10:26:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250401105003.3961046-1-a.fatoum@pengutronix.de>
References: <20250401105003.3961046-1-a.fatoum@pengutronix.de>
Message-Id: <174358241341.3447060.2407404538515118362.b4-ty@pengutronix.de>
Date: Wed, 02 Apr 2025 10:26:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_012654_996683_A9F27DB2 
X-CRM114-Status: UNSURE (   7.01  )
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
Subject: Re: [PATCH] printk: make dev_printf a PBL stub
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 01 Apr 2025 12:50:03 +0200, Ahmad Fatoum wrote:
> dev_printf is identical to pr_printf except for ignoring the dev
> argument. Make it a macro to avoid compile errors when building without
> CONFIG_PBL_CONSOLE && !CONFIG_CONSOLE_NONE.
> 
> This has the nice extra benefit of saving some binary space.
> 
> 
> [...]

Applied, thanks!

[1/1] printk: make dev_printf a PBL stub
      https://git.pengutronix.de/cgit/barebox/commit/?id=7d64c54dbecb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



