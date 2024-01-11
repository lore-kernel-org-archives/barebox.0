Delivery-date: Thu, 11 Jan 2024 15:15:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNvpx-00D3bG-1k
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 15:15:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNvpx-0008Ul-0V
	for lore@pengutronix.de; Thu, 11 Jan 2024 15:15:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E035yIVH1b75UXXsstSIRJdUtUuR3M/Zrv9VcmfLEsY=; b=167C66g0EPnYIy453Ow/rmqYp3
	ahMjZE5gwc8DpE8hvA0d3yHjQqq0CSuLgsxQgJ9xKZRdS2siDxfY3nMhbrg4DIR3pu0pyXvpMc/kn
	AFzwj7WEp6bzVrd7pP9oyRG9l4ZHPjG2Vhz4afiHqnKC+Jn6xUWi6bOeY15lUWL7pg9NFEyy2lI7/
	/n+xwrjvkAwR75NXq5xh6SP1iXvO5KL1kHandNW8AF2vRywmTwJOvk6Um60V+JRzJt0ZjOE5N1d72
	cPEkB5AJHQoAyAu4nU5W+zeVeJkoQilzznTXGwlWM0KHhVjf0ZFC2EETQwsE2cAVE0IgY7h/9JvuG
	AueZCxgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNvp0-000GC4-1n;
	Thu, 11 Jan 2024 14:14:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNvox-000GAD-2B
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 14:14:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNvow-00088H-Gd; Thu, 11 Jan 2024 15:14:10 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNvow-001wpB-0F; Thu, 11 Jan 2024 15:14:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNvov-00DtTH-34;
	Thu, 11 Jan 2024 15:14:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Robin van der Gracht <robin@protonic.nl>
In-Reply-To: <20240111073412.1318725-1-a.fatoum@pengutronix.de>
References: <20240111073412.1318725-1-a.fatoum@pengutronix.de>
Message-Id: <170498244994.3311457.562048172988125039.b4-ty@pengutronix.de>
Date: Thu, 11 Jan 2024 15:14:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_061411_744632_A9B83D11 
X-CRM114-Status: UNSURE (   7.34  )
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
Subject: Re: [PATCH] regmap: clarify struct regmap::max_register value some
 more
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Jan 2024 08:34:12 +0100, Ahmad Fatoum wrote:
> We already have documentation for the member that was taken from Linux,
> but still managed to use it wrongly at multiple places that were
> recently fixed. To prevent such issues from reoccurring in the future,
> expand the documentation a bit.
> 
> 

Applied, thanks!

[1/1] regmap: clarify struct regmap::max_register value some more
      commit: 36e096eeed5cd1a5f0f8a0930cd5473d4bd5a699

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



