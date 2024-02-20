Delivery-date: Tue, 20 Feb 2024 11:45:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcNcg-00Fvi6-1i
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 11:45:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcNcg-0008CH-0H
	for lore@pengutronix.de; Tue, 20 Feb 2024 11:45:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+CcLg5NzfdFgVERDyV3hhJy+30xt0AbLj3NpLFmhPSc=; b=d6qrMvjO7MOGBPDzl3pZx9tIEj
	IGanCv9xM385VACzxiLaTPEOh1v5YllmMHwEtGJgpo4+frfA9N+Pfc0UogFJv3jRdwX1OJSqmPwG0
	++qFESAOMDKdCkaEsjywbd49fDCEzqEIBlwkpWN7dxDQk002ldrr6P6Pv2AvZz6AwwMSSK/Y7iYK3
	LwEHaiFbO1sReTKLs+oBPnxfBNw8m6sOwYa5k/lv1EeP3upXRn711aXmKoDIGUGLNNDCoM7BNwNjK
	SeLZpO71/1r83rERZt89OO23Zl0lGXfAAey3l1Fkl2m6NWYyFXGIe2LNGmkyk7d8+NqtLkadO5T7t
	Y88jgPSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcNcD-0000000EJTk-1NoO;
	Tue, 20 Feb 2024 10:44:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcNcA-0000000EJT6-01CC
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 10:44:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rcNc8-0007zO-Q1; Tue, 20 Feb 2024 11:44:40 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rcNc8-001pIK-Da; Tue, 20 Feb 2024 11:44:40 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rcNc8-00HOC0-16;
	Tue, 20 Feb 2024 11:44:40 +0100
Date: Tue, 20 Feb 2024 11:44:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZdSCmKtO_7higenQ@pengutronix.de>
References: <20240220071337.337920-1-s.hauer@pengutronix.de>
 <2122f54a-18e4-4ce7-8a50-c82e14d46441@pengutronix.de>
 <7a843e63-edb5-4a5c-b1f3-49a98e4e1f7a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7a843e63-edb5-4a5c-b1f3-49a98e4e1f7a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_024442_062998_F221DDF7 
X-CRM114-Status: GOOD (  16.49  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: add barebox,bootsource-mmc aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Feb 20, 2024 at 10:12:47AM +0100, Ahmad Fatoum wrote:
> On 20.02.24 10:08, Ahmad Fatoum wrote:
> > Hello Sascha,
> > 
> > On 20.02.24 08:13, Sascha Hauer wrote:
> >> Several boards overwrite the standard mmc aliases to give them a board
> >> specific numbering. This breaks our assumption that the bootsource
> >> instance number matches the mmc alias numbering. barebox supports
> >> barebox,bootsource-mmc aliases to provide a mapping between the
> >> bootsource and the device nodes that provides them. Add these aliases
> >> for the newer i.MX SoCs.
> > 
> > Does this have an effect without i.MX calling bootsource_set_raw?
> 
> Typo: without it calling bootsource_set (it calls bootsource_set_raw)
> currently.

Indeed, I missed this. Sent v2.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


