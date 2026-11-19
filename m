Delivery-date: Thu, 19 Nov 2026 16:10:03 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xU3ly-0018Ed-2X
	for lore@lore.pengutronix.de;
	Thu, 19 Nov 2026 16:10:03 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3A5FD200F2F
	for <lore@pengutronix.de>; Thu, 19 Nov 2026 16:09:59 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Eld3nZdd;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=X9wKJdqA;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795100999;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=mdYmwshy+sqa1TuBsKYWVQef/BJvotMZrAv4DBodYfo=;
	b=JBoPpTJJVDxjqUBLFuBat/hp2Be218v2VC8gf89hXZxDpkb2fbhsJAE4rfJUa3wahtWst1
	LpopvqYywvCHUhF5ZoAnMnzYujf/dJC8TudvWsNIFlv1ASYWDJEecPev/ZpzIoOpkn6nQn
	0YrhOzvRZi/eqpQwUX9f8atN32+C8yAxuLPVQ9NDx6OZT3zBIlxy9mp0dH1uQR4aUYGmHz
	rDECKwbBRKzIGQrBsOJ7DCY0NTT8YtyRHcwBPOjsQYd5DhmSYeSZ9hICdJvfqGet6hI1Dw
	2EOmcw3z/T1TKSx0WrnnT5smKn8Uu76ByOmGsiWu2weboJndGGMPP4oaxxtX8Q==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795100999; a=rsa-sha256;
	cv=pass;
	b=M/9yaBSm6R9PLjJHMJbVQFlLzFizPHAOZ2myCiGMTyq6FD8z9AaGvu4ugafOKe5N0bCMDF
	K2dpg+C+/bPFPF22LGa6jfUDfbyjDWawBgx/izsZL8zobf3Ebo8Hxdy4c/eeANNi6R/d9O
	0h24vxJ8JSMr+pnllSssjXU7dKjtGjQg1r5e0DCzAHzwy5Dy3Zg91vCxU5YYg5NfciYD1d
	en9rkDnpy28AVG2qJbLW02II/T99UDjOWLgvum9jGob6n4kIwoqLllN6XP0T5aKvB3PTNO
	0c1d/RJVwyQWm/QoK2b6wN4Bk7uF3xU9XqFtdMURz7AMy+CUUIR8iCJTyj0P6A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Eld3nZdd;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=X9wKJdqA;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=mdYmwshy+sqa1TuBsKYWVQef/BJvotMZrAv4DBodYfo=; b=Eld3nZddvgRZqjT1OjpeDKLtLe
	0twFdp/wtl1svG9ra4CLVamlaqq7fwDPQfYmiNhsSyqiHJ49oNRjQttPY5rJkg9RrjSdGQQBN8xXx
	XHnFProARsdxc7vauO0HQUiUbcq1BAp2PoSQrQR1Dji9ETC1PANx0L/AB7C1hHclKJKbbUnV5SaIL
	0Srg14RhQbj+uUYDjbqV4NU7YkZa2fDVTcE0H952ZiPF12ICWEdVk5BURTEazjp/tjBVvPouwUbdM
	nfw2dApDwOeq/iCL9trmNcnsf9P0esuq2AzrrlbNXJ/9hpmzbl12YvvmDjRqzPh8ns/76SRqx9yU5
	qq1URVOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU3ka-0000000CMxn-1dmg;
	Thu, 19 Nov 2026 15:08:36 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU3kL-0000000CMgf-46F0
	for barebox@lists.infradead.org;
	Thu, 19 Nov 2026 15:08:34 +0000
Received: from ptx.office.stw.pengutronix.de (ptx.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::109])
	(Authenticated sender: relay-from-ptx.office.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CC60E201A7B;
	Thu, 19 Nov 2026 16:08:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795100891;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mdYmwshy+sqa1TuBsKYWVQef/BJvotMZrAv4DBodYfo=;
	b=X9wKJdqAIy9i546ZbdutXhBf6BasuJc5TBT/toGxW9o12QRAE99M27KypWnT8fLcvoPCgT
	PZuHYyXy5juKaADudB1lsjatTuizjJheCEdBwbG67HoBsTz9lc4fEXKFFIVnoze39l2v5A
	zyjYn8ftH6BO9zol+ordCma9xBc2USS9C/yEelKgUVvyjRVOXdO0fjv002CvRVAKTifWA0
	QL6FSMM3uZwrD1rJuvpO5g/rbuL/VKHhOfHKWOw8fZEh3Egc6c8cm6I8Nqp14WccXRnldp
	Rufpbzk/dY/22zjqXd08pI2kZ3k+BMrW/dzjcvTsipj3H8757nJAWtxX7LJAXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795100891;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mdYmwshy+sqa1TuBsKYWVQef/BJvotMZrAv4DBodYfo=;
	b=CLprOfnTkaGiMLr7QcyAJtvh51mlpehHimtKz+UZ3zhfFpd4KuOZfqODJyakc+VcPvW/yg
	2/EYDzavYJH0oHdRjwQXM+1OZi14Dgl9ilgKD4PzS3u4Yt9EFdijI4XSkASVY8Bn5fblyn
	jvk5vJlsZtuJBgEKZ8yykYyCU290YHo328dV+R6SuzH6Ik6rslWrYGsFDiQbYLqFQ7rzJs
	DzMZAtvsZnm5wR7tH0uR0gG4mKNN3K38uvM7vdbRV0z53l0ZqWThMJmmcn5WwOjncsi4K/
	54zNM7/tVrFRqoeeAhXePoPTFBdYqKmwcK+pWVqJWXqwbrXZafkEZFJfedc5VQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795100891; a=rsa-sha256;
	cv=none;
	b=LjT1VmTMPNaht2qkfVnsLY+YfYqDTLjQYKWMfiVirKG7NhjE1t8zEkuM28PatbiRqn+YNx
	rLWgS/T5aXlGv3BnAa+PmDmDYi10H8IzlQ380vkOt88z/cRdhZBZSWP/O2QvPi0V6Z5bkD
	ntaAKvJK9H65MJYu92UVojMKDduCaxs6urCQc9CKAfmJrccdWX5xEnlO63D2b2xkGmmFj4
	LkX76bgKXGnjtNp5fdYtvudNtcS9LpqUCRywl8cwSvlgFCfXwyBbFnDH0793FmrDqaiQrh
	+JZfMAN4M6LStOtEl4XbPXV/8VPxeTF3BTsqXyWf9JaGq+oQgPEMJVoTiWsJ4w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-ptx.office.stw.pengutronix.de smtp.mailfrom=mfe@pengutronix.de
Received: by ptx.office.stw.pengutronix.de (Postfix, from userid 1064)
	id B09C71BF844; Thu, 19 Nov 2026 16:08:11 +0100 (CET)
Date: Thu, 19 Nov 2026 16:08:11 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Subject: Re: Strange bug with supply dependency
Message-ID: <yhue3ceigbcc2njkoqyui5z6dhjkxts3dvbbwxlt7v36abxsyi@v3uubuqgfe5x>
References: <CAP1tNvRtU8munqnUTiqU_zEP_rxdm_hb42u_oU1FVL93czrtFA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvRtU8munqnUTiqU_zEP_rxdm_hb42u_oU1FVL93czrtFA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_070822_575909_55C99CCD 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 26-11-19 17:19, Alexander Shiyan wrote: > Hello All. >
   > I have the following DTS fragment: > > exp: gpio@22 { > compatible = "nxp,pcal6524";
    > reg = <0x22>; > gpio-controller; > #gpio-cells = <2>; [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-59.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:eagle.alexander923@gmail.com,m:barebox@lists.infradead.org,m:eaglealexander923@gmail.com,s:lore@pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DBL_PROHIBIT(0.00)[0.0.0.22:email,0.0.0.23:email];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_RCPT(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 3A5FD200F2F
X-Rspamd-Server: mx1
X-Stat-Signature: xhppofsu3e6xtttm1369e57ns18wuc14

On 26-11-19 17:19, Alexander Shiyan wrote:
> Hello All.
> 
> I have the following DTS fragment:
> 
> exp: gpio@22 {
>   compatible = "nxp,pcal6524";
>   reg = <0x22>;
>   gpio-controller;
>   #gpio-cells = <2>;
> //  vcc-supply = <&vcc_1v8>;
> };
> 
> pmic@23 {
>   pinctrl-names = "default";
>   pinctrl-0 = <&pmic_pins &rk806_dvs1 &rk806_dvs2 &rk806_dvs3>;
>   compatible = "rockchip,rk806";
>   reg = <0x23>;
> ...
>   regulators {
> ...
>     vcc_1v8: dcdc-reg10 {
>       regulator-name = "vcc_1v8";
>       regulator-always-on;
>       regulator-boot-on;
>       regulator-min-microvolt = <1800000>;
>       regulator-max-microvolt = <1800000>;
> 
>       regulator-state-mem {
>         regulator-on-in-suspend;
>         regulator-suspend-microvolt = <1800000>;
>       };
>    };
> ...
> 
> Uncommenting the "vcc-supply" line causes the PMIC driver to silently
> fail to load,

What do you mean by silently? Are there no error messages?

You extend the driver error message from:

dev_warn(dev, "Failed to get 'vcc' regulator (ignored).\n");

to

dev_warn(dev, "Failed to get 'vcc' regulator with %pe (ignored).\n", reg);

Regards,
  Marco

> which in turn breaks all devices powered by the PMIC.
> None of the expander's GPIOs are used anywhere.
> When this line is commented out, everything works as expected.
> Is there some sort of dependency from sharing the same bus?
> 
> Thanks!
> 


