Delivery-date: Wed, 17 Apr 2024 08:22:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwyh0-004Xic-0z
	for lore@lore.pengutronix.de;
	Wed, 17 Apr 2024 08:22:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwygz-00079G-PP
	for lore@pengutronix.de; Wed, 17 Apr 2024 08:22:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hMu7uYCtOoPGJqajjkIqkq6JTKQ8FvZrBmgwpWsZOwU=; b=mrazXu/S2fZX1gC8prOIdu2Cby
	msv9RHqvsbU81c2csuh1pEZU1BgU2ee6dm9D2YCOmEQRPlzuAFzpuhnO5zsZvo9Z8FaM/tyRv+uB4
	8B+n4Nm2QJPShBF5BksK2azmvae5niztXMGJ9OmSiUGZoaG220vjReRy10LK677tKmotN4OSaWNJ9
	F3swSB4gfMm0qNjh1LV0AWInIK6LMVPU8GnMDY11K2ABDPXTVmGqFtUxG/RID5noSoJQWvu+4VzAa
	7fOV9hkGMrS88anOJ7GlvTeBCphgdPIU/RZCwnWdkwrbpAc6FIfoEk6+yiY79C7QWRpMcRyTUb09S
	mS+Kp4Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwygb-0000000Er44-0M2G;
	Wed, 17 Apr 2024 06:22:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwygX-0000000Er3i-0cZ0
	for barebox@lists.infradead.org;
	Wed, 17 Apr 2024 06:22:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwygV-0006gh-Rw; Wed, 17 Apr 2024 08:22:19 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwygV-00Ck4N-FI; Wed, 17 Apr 2024 08:22:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwygV-00D9oT-0w;
	Wed, 17 Apr 2024 08:22:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Juergen Borleis <jbe@pengutronix.de>
In-Reply-To: <20240416061730.1335890-1-s.hauer@pengutronix.de>
References: <20240416061730.1335890-1-s.hauer@pengutronix.de>
Message-Id: <171333493921.3135862.9000615594726379575.b4-ty@pengutronix.de>
Date: Wed, 17 Apr 2024 08:22:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_232221_242060_AEE908BE 
X-CRM114-Status: UNSURE (   7.10  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] fs: jffs2: remove NAND write support entirely
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Apr 2024 08:17:29 +0200, Sascha Hauer wrote:
> Our JFFS2 implementation refuses to work on NAND flashes because we lack
> support for CONFIG_JFFS2_FS_WRITEBUFFER currently. JFFS2 is barely used
> anymore and it seems unlikely that write support for it will ever be
> added, so remove write support altogether. With this we can now safely
> operate on NAND flashes.
> 
> 
> [...]

Applied, thanks!

[1/2] fs: jffs2: remove NAND write support entirely
      https://git.pengutronix.de/cgit/barebox/commit/?id=5817dd7e4826 (link may not be stable)
[2/2] fs: jffs2: ignore cleanup hints
      https://git.pengutronix.de/cgit/barebox/commit/?id=524cb0a98fbd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



