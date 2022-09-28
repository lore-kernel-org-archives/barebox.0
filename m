Delivery-date: Wed, 28 Sep 2022 15:40:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odXJ5-00HNfh-Mb
	for lore@lore.pengutronix.de; Wed, 28 Sep 2022 15:40:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odXJ4-0001bV-B9
	for lore@pengutronix.de; Wed, 28 Sep 2022 15:40:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qTzz0n/Cb2elANrX5ZtgdgN4uK74l16UMSTbo6M7CRM=; b=ieQn42g04/uNuCaMCrXIRjCMdH
	MamsWeKMkaZ9w19AmmVosVtEsXw0vMv9+EGbl1dT2MrELH4vSyGQ7Ss0jWSQd9tF0qMF+2rf2SHiT
	ZEXH9l5D9dN+nKE0iACWuDfBw80AzzZxxfzA3wJ3kWBnyRkCSyTAPVfeNtQL+dEi33xKDfTYijtLe
	dUllGJW3InY+175vZi5wolvxNy3SVS7Lirt2zttLrAW6IRQhKm8O1EczJR3Bz1bljlaH8HbP1ASQp
	g6oPac86Qqlqft4V8heorihz13jstfhGPLD7MpoJMNyp+I6y4LWoIW45OwnxYduQaJEXMa/9TQgYk
	oOyR6zfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odX1i-00GSyj-Ki; Wed, 28 Sep 2022 13:23:02 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odX1d-00GSxY-9k
	for barebox@lists.infradead.org; Wed, 28 Sep 2022 13:22:59 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 28SDMoAD1093356
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Wed, 28 Sep 2022 15:22:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1664371370;
	bh=qTzz0n/Cb2elANrX5ZtgdgN4uK74l16UMSTbo6M7CRM=; l=327;
	h=From:To:Cc:Subject:References:Date:In-Reply-To;
	b=wsBf3Dvu+kBDn31/zuoF30W1Aqdy7eWZ/m+8Dx+OlxeXTTQlkvbtQfYgPXtuvIg2Y
	 AG0KOlclMMX8BUefm4A/2VpkPW4/P1f0ACfYd1xqca+xhUh/k10MAAcTtg4htTWDcc
	 YEEh9lrhqMgv5nYvlyF+goU1rAlsGoXicScikGrKXsD0Jf/gvADyv1HTN8QquaA5vI
	 r/NO8WxfcGXmyTaCnxCLszMJUNLK5Gczp0gM8b6ae0XueeHJ3AFobC5+CWeNJF0z1D
	 GZgzbkBYcW0Dc2r/CVRi1hLoTB8vJBwN9Gy85BlE8V2Ky+J68zvX8HlERrsLgwDene
	 J+/bsvNeWwwHA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 28SDMlr03951686
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Wed, 28 Sep 2022 15:22:48 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ([192.168.12.72])
	by reddoxx.intern.sigma-chemnitz.de with ESMTP
	id D4KPDCEHD1; Wed, 28 Sep 2022 15:22:47 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 28SDMlMH1046250
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Wed, 28 Sep 2022 15:22:47 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.96)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1odX1T-00ESkv-01;
	Wed, 28 Sep 2022 15:22:47 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
	<20220905103546.1476277-6-a.fatoum@pengutronix.de>
Date: Wed, 28 Sep 2022 15:22:46 +0200
In-Reply-To: <20220905103546.1476277-6-a.fatoum@pengutronix.de> (Ahmad
	Fatoum's message of "Mon, 5 Sep 2022 12:35:46 +0200")
Message-ID: <lyzgejws49.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-REDDOXX-Id: 63344aa7934b9d3e05358a9e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_062257_507824_D5A330C2 
X-CRM114-Status: UNSURE (   7.06  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] gpiolib: gpioinfo: add optional CONTROLLER command
 line argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Ahmad Fatoum <a.fatoum@pengutronix.de> writes:

>  static int do_gpiolib(int argc, char *argv[])
>  {
> +	if (argc == 1) {
> +		dev = find_device(argv[1]);

'gpioinfo' without arguments will crash because this calls
'find_device(NULL)'

| :/ gpioinfo 
| BUG: failure at lib/string.c:226/strcmp()!
| BUG!



Enrico


