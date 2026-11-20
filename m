Delivery-date: Fri, 20 Nov 2026 12:05:40 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xUMR1-001QSf-1Z
	for lore@lore.pengutronix.de;
	Fri, 20 Nov 2026 12:05:40 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A5E22205B33
	for <lore@pengutronix.de>; Fri, 20 Nov 2026 12:05:39 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Hv2EE6o0;
	dkim=pass header.d=gmail.com header.s=20260707 header.b=CdqM3Bw5;
	arc=pass ("google.com:s=arc-20260327:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795172740;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=0+4UfJrInVTWSYc7w2EKNpSk246S4V0kaxTHwcRhgoc=;
	b=bHD78AH+N5VGCd0794InIEPFVzVAC0CduYqtEJ6WsLUl7LyiYE8z98RbfJT3TwepHWkPbx
	iUtZuxBg+AYcUGLfxnT4JIH5yQ5iz93dU7yGWMC9n++zN/4UcvHQT8Otpl1xbYOdjctcjs
	ZU7LkqOXQ4FaqAtqYON3UUrEnzzUBTt9shkg7l7ncdsuUf1V0VjYDbJKJuIKNPy+B9N5r8
	i1iWdrdTd3CYD6mFh+rBTSjJK+uydHK8IiNVN/48oJLNPjE9pADZqyRyx5Tinbu+oXVJHw
	4z0Lkqde2J3cFaaWval+VWEpBrnqNYSQ7nD7EwUhKjG6G20qRE53WopjXPatnw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795172740; a=rsa-sha256;
	cv=pass;
	b=VidBnaoPz3OKbubxuhZ66hV8YmEQD7lPvN0fQok9gFP786qytPnEDDhZ6DgETc3qub7X8K
	EI26z1J+IdoB6kafTw8dP6vSlm4LbKgxkCFZ+03ZT46MPpj1uXMt719Cjxf471EeR1bL/q
	Y/0plbZQDT2kIFJ/AY20ngZhCBMH7J/ryxq/EA3ArTwbndTqTSgJrNZHUSx9hNYkm4Lrp5
	JK96re2gaTeoncx7rYQX2/WZAqXa884930Z9GfWZQjqtqaeb+XyTqYDyLL6HFgs7gVk3HA
	uobnOdgwgF8QITElM09PbMUvjOTMDAd8jMS/XVnbgHjgNPPe+g6EiP6l9VY4Hw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Hv2EE6o0;
	dkim=pass header.d=gmail.com header.s=20260707 header.b=CdqM3Bw5;
	arc=pass ("google.com:s=arc-20260327:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0+4UfJrInVTWSYc7w2EKNpSk246S4V0kaxTHwcRhgoc=; b=Hv2EE6o0cBDOP/pdL7/b33mmvQ
	ehcLJG8/4ubUmQ7Tf6vlxBojMA41OpUBexPuT9HMO/ziHtDyftLbCsBaSAPvYsMVvTGMQiz6q8Jec
	H8pr+0gbDvC4ZVt7HoRLqGjjg3joCy11/ORcNUvmJVPXwtCOaWSIPtDHncqalWqMpQ6HdWAT321Fj
	rGXZdc85s2It3UdYg2rIEjXL+0t1ekuE6DF2x77gv5YZ+eK8rVJNIe4TeWDTE4kiDNNnV/p93FaMz
	ZU8FbQ9utX0Zgc8TeMgXGrHcWU7VqTZnxFC9CQs0BKX9mrnuEl18rSqVjBr0zpcsWWwzYYdBaALEa
	QwJQWA3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMPI-0000000Eh9C-2VhD;
	Fri, 20 Nov 2026 11:03:52 +0000
Received: from mail-dl1-x1231.google.com ([2607:f8b0:4864:20::1231])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMPE-0000000Eh87-0KbV
	for barebox@lists.infradead.org;
	Fri, 20 Nov 2026 11:03:50 +0000
Received: by mail-dl1-x1231.google.com with SMTP id a92af1059eb24-1b3ada81853so857785c88.0
        for <barebox@lists.infradead.org>; Fri, 20 Nov 2026 03:03:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795172627; cv=none;
        d=google.com; s=arc-20260327;
        b=ULn19CTfUoVkvjBDvJ9vrDsW99N7z6sMqXWMewdUk0BwykwHr7Q8Ivo3HKoTlhUty8
         QOC2fjRWweQ4+BTpQFfM5PXhdVOZ96dcGTQafe9xx0s8xURFcXzpq+Kgl97p36gGCYXf
         +0+VUeko18xpbBbKTezfk2+bXk9OTRLi+2SVoq7g9frYU2g3XESG5H3LsVdVcs2BUffC
         uG7y0PXoinfOMHu3f0ZuNnV8yk2ni61Sn5zJlcTbh88rws1mParil6Sb9O3u+BIbYxct
         d9WnABXwvsB6DHei2BijxLwEzeSSzqPUHp19wFwCAd1nu1MPvfksnGpnD9PH6NbAoU+o
         6ozw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0+4UfJrInVTWSYc7w2EKNpSk246S4V0kaxTHwcRhgoc=;
        fh=9wbHphZ1o6vuBgZLfgyjXd2LCnpfvvT7OkAeU5lvog4=;
        b=AMryVKVjQOWF4mpAOBq5B5Er+6u09j5ZUsiWck+/atO2KTkpRXncFhBUaWnP9aUv3x
         YcrZvhjuFU8SfGTcsPELZhXmcYx/d5zveufqu4D1clP/EAmpja2pmYVwiKu+oiOMy89M
         jlTtPYYEtRE8RVbE5+pFJecvyVj31ZNo38Eons6z1SuBP4v9gJHSKNCE8ysCTkHESmzi
         kabDxgG0EfGbXQSCVMG+n8v7IPbStv3ZCmW7SAZ8GwGkXTAMzDpb1jokusPPLou2MiJ0
         R8VrKYRvxDKRi+N5UWIoACAN+AIgH21hUUnqr5VMJFXxi8YTsHQ3T5dXekGk7ga3qYkE
         6NHA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795172627; x=1795777427; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0+4UfJrInVTWSYc7w2EKNpSk246S4V0kaxTHwcRhgoc=;
        b=CdqM3Bw52JwFdMaXGTraS8fFmb9e2ZqMWmNq2Xi8s2t07LAqm87XMlwcojqlH+9bbn
         hfKnqN4T6fapLRmN5lJqZUwa19AUff4B2zUhBxSoMq8lBPm8nR0HqAL4TrS0jKLjKFta
         RAOBpmPsl3lwFI6ZxR+cV0kI4Vf1tmWpG741G0YyJoQpWo75h/21Awh3DsHUtJ6FYOX+
         E6x2Wmh9jlz2pa6IJj547oWxEY+QAjavnP/Skva/LKHuJWXUrcKkz1x+TlNCXNwI6lf2
         Bf8dJT/Bc7w5fqYcjwBef2boAvce0uujU7hYdxdkLkTHf+/TtH5e/oGEOtbIr6qKiftm
         z6WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795172627; x=1795777427;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=0+4UfJrInVTWSYc7w2EKNpSk246S4V0kaxTHwcRhgoc=;
        b=x+jvjEco6pRtHhCAT6mTSrkIfkI03ArBz+GmFYa1r4fbdgok1TRF1eusgClk/xICG7
         yq+0mZNYhE5xbOsUUwQ22evbnOcGTWvGKCVDshLtdhHnWa86b8PXD29vpicnbhHIl+HT
         9uQ88IY82NJrnV7aAHBz/U2gUFHb/RFY4fxgfEoEptd7l48ZATuPKRI1n0Q6SvFPduT+
         Dhf4noCeX77l26jVBE+qtO1xT7XzaXC+rag+FCIMBsUkr2p+tXu9qxSaRObO0Fx2QsGv
         XD3HjhEHo8Z+A+ShgvAUHgP+PW9vtZI6lqruZeFmd0da5a19PY22EZd7ST1CeMCPUWdl
         Bisg==
X-Forwarded-Encrypted: i=1; AL+hErEC207XHS/kjPTZ3Rei4CbOnAwcTjPuleSCeUGNG8vjdwha2wtGKkdF6vaQ8TOlSY517v5faZk0@lists.infradead.org
X-Gm-Message-State: APuU4Z/3GphLYJhsuUzmYKXhbsVzKWciTSZBbcfstf3wS2y3b6VXpbvM
	3DZrqBce1jIVPN2ZpJh0HrShS7krwdPP0vKZLkZ6JDP2PuZjJbsGUJUoxExR43DG75m+7VDt6t5
	4rt+YSFkx7uo4BLx0cvxeGULWSTQdfWvn0qW1cQucHg==
X-Gm-Gg: AYBFou1zUiFpVD17XzOElXvZ1rZB+614KdCxuubBPFolDzvLngW7MD6ZqA2ZtWK/M+G
	fj4y2ZgFIDvDkQpQtC58fqHdL9k927wKN6u+aPjg3oIOIDWDWbyHotfSOMqTkniwe/XuAPQoPyL
	gZTb6IfYGhqT3Pv/B0MVdZjfMgfScMh3A+/9vE+bO6o8d/LgZTvou2gNFkQ7YeXY49QQgGsl5vY
	vPG1JoNXfyat7rKCtkGJqem2wbGfXhv+HC9Sb5CJ8y7cJ+G6B9Hz9oTLhhFtfdoFgDYMhOV9Ggq
	ekCPNPckWTAnsUMTQbAy6DZh9+NGrMOc43NFgIuSadC35pqhqvS2h1eWqsFvkyUdtmUzWp3OyyR
	n/MkMX6T98u8hQufmjCfdDxcWvyKxCJBhh6+lI8ed+iiLWVCRD6VquwJVfj+B
X-Received: by 2002:a05:7023:a41:b0:1b5:4b48:b9ee with SMTP id
 a92af1059eb24-1b5568c0ec9mr2457772c88.26.1795172626902; Fri, 20 Nov 2026
 03:03:46 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvRtU8munqnUTiqU_zEP_rxdm_hb42u_oU1FVL93czrtFA@mail.gmail.com>
 <yhue3ceigbcc2njkoqyui5z6dhjkxts3dvbbwxlt7v36abxsyi@v3uubuqgfe5x>
 <CAP1tNvRpSdk9mauU3RGraT0DqCc5LFyR8mzBjHQg3Uw_eeo63A@mail.gmail.com>
 <2817c1f2-7550-4c85-821d-acffc20d3077@pengutronix.de> <CAP1tNvRWnRyMqBA2kxu-a-UxLUm2TJXR3_tHANL5X0sfEDXX3Q@mail.gmail.com>
 <31660d31-5215-416b-bbf7-56dd6335885f@pengutronix.de>
In-Reply-To: <31660d31-5215-416b-bbf7-56dd6335885f@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 20 Nov 2026 14:03:35 +0300
X-Gm-Features: AclHuK94pyfpdjPZSMnmmVprTtLWXTwdn_jtawdxo0w2iKUz6ELsUlruXQacwmY
Message-ID: <CAP1tNvQAN1Yxquus3OpSXk+0aepe0ajtfAXabrnFmS9MFsx2gQ@mail.gmail.com>
Subject: Re: Strange bug with supply dependency
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>, Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_030349_578882_FE0AFC0F 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello. ... > > `-- fd880000.i2c@fd880000.of > > `-- i2c0 >
    > `-- pcal65240 > > `-- rk86021 > > `-- rk86030 > > Here's your PMIC > >
   > `-- fd880000.i2c@fd880000:pmic@23.of > > and here's a platform device tha
    [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [eagle.alexander923(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [eagle.alexander923(at)gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:20:0:0:0:1231 listed in]
                             [list.dnswl.org]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-5.91 / 15.00];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[google.com:s=arc-20260327:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20260707];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:20::1231:received];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	FROM_NEQ_ENVFROM(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: A5E22205B33
X-Rspamd-Server: mx1
X-Stat-Signature: 8awnzzyno5jyq5499gcqu4977uxtn6rk

Hello.

...
> >    `-- fd880000.i2c@fd880000.of
> >       `-- i2c0
> >          `-- pcal65240
> >          `-- rk86021
> >          `-- rk86030
>
> Here's your PMIC
>
> >       `-- fd880000.i2c@fd880000:pmic@23.of
>
> and here's a platform device that deep probe wrongly created
> to represent it.
>
> >>>>> Uncommenting the "vcc-supply" line causes the PMIC driver to silently
> >>>>> fail to load,
>
> Interesting bug you stepped on.

Tracking down the root cause was even more interesting - that
commented-out line was
the last thing I would have suspected...

2 Sascha, if there are no objections, please apply this series to master.

> You are hitting an corner case with deep probe, when devices
> on the same I2C bus have dependencies on each other and a consumer
> device is probed first.
>
> I Cc'd you on a series that should fix it. Please give it a test.

Now, works as expected.

Thanks!


