Delivery-date: Fri, 14 Mar 2025 16:02:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6Y5-00E2yN-1Y
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 16:02:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6Y4-0000uN-Ac
	for lore@pengutronix.de; Fri, 14 Mar 2025 16:02:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:
	Subject:To:Message-Id:Date:Content-Type:Content-Transfer-Encoding:
	Mime-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hPYdESHyHElXRkkm0DwmCyS7k2MPCQovOf9cUIxN/Dw=; b=a1ktTT9Gy33wtHlpjNHqLaL1yR
	puDkwcbDb8iT3L/kP0tfJMgCnHupjXnQw/0mOGyrIul0YTNvNQuzDcwm+kVGjrZ6MHsFdo/pOZsQg
	/ZuhUJ2LHTkML2mR+o7yv9GJpPMWX95rxJ4ScOjiKkLkUdrpfIQhv6675wLkWLkmygdlSo2DN2s89
	CSjVVbsi6V/cw1xt+S3YAA+Fhi7xGHpeWP+nf+MPYNwzZ7ejNhiJciTV9cVYrOJe7vBmdlpwHGde/
	ZVca/U4Yqi1pS4qbeWdJIDgRVGtTnslDD1b3pgseOgZdphjH1ntFcgvHRvlJZC7s/NmJNyljQGQKZ
	puP3hD8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6Xa-0000000EUJv-0O4K;
	Fri, 14 Mar 2025 15:01:38 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6W4-0000000ETzZ-2QFc
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 15:00:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741964402;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hPYdESHyHElXRkkm0DwmCyS7k2MPCQovOf9cUIxN/Dw=;
	b=cQN347M4kkdFyjSRncsE6aqp1HjTJs0MLO+SCTU3PvNWtsPUPpkaW8M0dPTGzL10c1/q7c
	QYyK9KJm19mTCU+uzbAdl089NM6XF0i+g7tnKTEaRdv60g4NKxA1eBBWeaU0Uswd7G2Qap
	A9SoccOUjQ11tJOPaE6TV9FwgoW33zIjM6dQKUWDMAXGT6fTP/dTX5I8wNBmfjTeJ1sEnm
	jx0CURfmU7zeOZ5RST2UhRiIzneuhTk8E5oAFgwt66PnBQ/xmLdc+hs5y8fE30E7xFZPcd
	KBEEAyXOaG/+0Cbcy54kZjpOGjyTgDuM7n3LoY0Gcc1wPT4t/uYEr82x2/nvtQ==
Received: from localhost (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 86db14c5 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 16:00:02 +0100 (CET)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 14 Mar 2025 16:00:02 +0100
Message-Id: <D8G2UF0EAAFW.35UKIQ5U4FFPI@zdiv.net>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>, <barebox@lists.infradead.org>
From: "Jules Maselbas" <jmaselbas@zdiv.net>
X-Mailer: aerc 0.20.1
References: <20250314104034.13637-1-jmaselbas@zdiv.net>
 <a87dbd9c-10fb-4451-abd3-f3d9d49c13e2@pengutronix.de>
 <D8G2HOCHLZHE.3FCQMJ924J7NR@zdiv.net>
 <70cf43af-954d-4cbd-bb2d-0e2be2d8c6f5@pengutronix.de>
In-Reply-To: <70cf43af-954d-4cbd-bb2d-0e2be2d8c6f5@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_080004_921555_09F12517 
X-CRM114-Status: UNSURE (   7.45  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/6] compile test fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Fri Mar 14, 2025 at 3:49 PM CET, Ahmad Fatoum wrote:
> Hello Jules,
>
> On 3/14/25 15:43, Jules Maselbas wrote:
>> On Fri Mar 14, 2025 at 2:08 PM CET, Ahmad Fatoum wrote:
>>> Hi Jules,
>>>
>>> On 3/14/25 11:40, Jules Maselbas wrote:
>>>> Small patches series of fixes discovered with a compile test on sandbo=
x (x86_64)
>>>> The compile test has been against the next branch but all the patches =
applies on
>>>> commits that are already in the master branch.
>>>
>>> This partially duplicates fixes in my clang-analyzer series here:
>>> https://lore.barebox.org/barebox/20250313073445.764875-1-a.fatoum@pengu=
tronix.de/T/#t
>>>
>>> Can you rebase?
>>=20
>> Only patch 6 is conflicting and can be dropped because it is already fix=
ed by
>> 9b815da01ff4b88c6634c4a7541c581a35ad96d8 ("treewide: fix missing headers=
 in sandbox allyesconfig")
>
> Patch 3/6 and 4/6 as well as partially (?) 1/6 are also addressed by my
> series. So even without conflict, applying this on top would lead to
> addition of a now superfluous include.

Good point

I will send a v2, and drop unneeded patches



