Delivery-date: Thu, 11 Jan 2024 16:17:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNwo9-00D6mf-18
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 16:17:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNwo8-0005Ib-Qq
	for lore@pengutronix.de; Thu, 11 Jan 2024 16:17:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TmYG8YglA8BqqRZgeUgZf+PJCttdzD9yHs4fKCAfBzU=; b=A7JfGdWvW5Q6EF93cJ2b3HMliA
	W/JThmk1zuUHgI0LGOndEsNvRwDXW6Nea5Yxg3xM12r/sAjwKFgfdMFVGu1Z280M1hwJMYDwqLydZ
	X2yeWDHIZKeqh54scZvcPfHZ56l9907kclb02EVjNjWoPCR5wZKp3R2qFNf4jvm0RRlXVbodPuudk
	ep7w4agaDkiFb0aZnh6C32mXvClF7H9sA0XNqM1nwqxNpta99YzzjYEpUCTmMkkWTj7vzt43ybZSo
	RzWPaaQVxccrY4OpJLK1ZLbFTB1wQLOq5wxuQe7pq1WTNYMa/v32i/MkhvFQVEUlI2pY++4A+1jZh
	YI7630Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNwmk-000Ojp-1p;
	Thu, 11 Jan 2024 15:15:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNwmg-000OgT-1h
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 15:15:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNwmY-0004vx-Ha; Thu, 11 Jan 2024 16:15:46 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNwmY-001xPs-59; Thu, 11 Jan 2024 16:15:46 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNwmY-003by7-0J;
	Thu, 11 Jan 2024 16:15:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240111130015.1784217-1-a.fatoum@pengutronix.de>
References: <20240111130015.1784217-1-a.fatoum@pengutronix.de>
Message-Id: <170498614609.860897.7644310042114187767.b4-ty@pengutronix.de>
Date: Thu, 11 Jan 2024 16:15:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_071554_559869_B2B46466 
X-CRM114-Status: UNSURE (   7.64  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master v2 1/2] hab: habv4: use explicitly unsigned
 types for pointers into SRAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Jan 2024 14:00:14 +0100, Ahmad Fatoum wrote:
> char is generally unsigned on ARM, but we shouldn't rely on that. HAB
> code does though and compare a char against 0xdb, which would never
> succeed if chars were signed. Switch to an explicitly unsigned type to
> fix this.
> 
> 

Applied, thanks!

[1/2] hab: habv4: use explicitly unsigned types for pointers into SRAM
      https://git.pengutronix.de/cgit/barebox/commit/?id=225368d37470 (link may not be stable)
[2/2] hab: habv4: warn if more than 10 HAB events are found
      https://git.pengutronix.de/cgit/barebox/commit/?id=f90d6e70bce6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



