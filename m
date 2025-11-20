Delivery-date: Thu, 20 Nov 2025 08:32:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLzA2-002vqy-0R
	for lore@lore.pengutronix.de;
	Thu, 20 Nov 2025 08:32:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLzA1-0004tW-K4
	for lore@pengutronix.de; Thu, 20 Nov 2025 08:32:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jWxXs0JTOjVeUv4keO7miygNgUHNuHrH2rXUAioUD84=; b=AZjp0ToMo69BHlhBKJdAMfVQxx
	iQGZP3ftikYiH87e1qJ30w0YUWCGtETlfggHSeCJIoMNcFqCxDj1xtRst4vx3XLS5u5aklEaQw2Yc
	B+UF292drIXjXRrb9qN7886O7slSOQyCE/KGixu/iIZMjyE8olZ9y9TlYhG9RmBCxqI/JZb6KX7jF
	QQX/L+OxHN60TYZf0WI1K2PZxwjAQ/fpLpFLAzpmxMYs6MPe7eGhuxFA7O7Jl9keZn3N/lHNmiAX6
	fvtz2CtsadzSkzfGdE/dbVKFyN1S9ILyp0E2ztCWoigyFIu3r2R0DbiKkZCKt/Yi9Cs0h/NmZvsxs
	oDRqlu5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLz9b-00000006IgS-2Ffa;
	Thu, 20 Nov 2025 07:32:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLz9Z-00000006Ifl-0Sdk
	for barebox@lists.infradead.org;
	Thu, 20 Nov 2025 07:32:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLz9X-0004nc-Fs; Thu, 20 Nov 2025 08:32:27 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLz9X-001NcH-0z;
	Thu, 20 Nov 2025 08:32:27 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLz9X-00000006wP1-2szq;
	Thu, 20 Nov 2025 08:32:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20251119185307.931800-1-eagle.alexander923@gmail.com>
References: <20251119185307.931800-1-eagle.alexander923@gmail.com>
Message-Id: <176362394723.1654436.11420405458143519801.b4-ty@pengutronix.de>
Date: Thu, 20 Nov 2025 08:32:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_233229_171711_729FD762 
X-CRM114-Status: UNSURE (   6.46  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: truncate: fix multiple file handling with
 relative sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 19 Nov 2025 21:53:07 +0300, Alexander Shiyan wrote:
> Fix bug where processing multiple files with -s +SIZE option
> would use incorrect sizes for files after the first one, because the
> size variable was being overwritten.
> 
> 

Applied, thanks!

[1/1] commands: truncate: fix multiple file handling with relative sizes
      https://git.pengutronix.de/cgit/barebox/commit/?id=6981db707661 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



