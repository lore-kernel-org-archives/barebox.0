Delivery-date: Tue, 29 Sep 2026 09:43:08 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBSUW-007b4y-30
	for lore@lore.pengutronix.de;
	Tue, 29 Sep 2026 09:43:08 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BFA68200B6B
	for <lore@pengutronix.de>; Tue, 29 Sep 2026 09:43:08 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Kd5m9LWU;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LywdxBa0;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790667788;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=R7utKQKkG85QFDDDa6Jf8+hpBkcGt+izVXpfPVgm7do=;
	b=OSDb8b/UtEPNdbPq1+qukTSnSldgNFq0KcQ7Z1N5+LDEq4SKFDft0DkI0TvI+UG6wz6FNN
	+quY4YR1vmb3MfZ1RwmZLXI8gAoY3mukzVf4o0maIxS7F/r6d5QQjpJBHDxBLqlLJsbNng
	IBpSHoKJ9PtYRJ6wMRuo1gzs7RaAw6KobzovJw6ACz6GwI44ypFnxKLEBjopKLV8O6B21/
	gZOn4GYSAIonj2AKCzfjvf8GMFi458+hoZOCLEfUjSecNX7gJxGY9nyuMI9/LpyGbg5dAG
	JixWOQAobo0WiLRfH10lqzHnOi9iTWaDkzD+3O3vetRPAngo+71DY7/Q75LsGA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790667788; a=rsa-sha256;
	cv=pass;
	b=ZY/YcHOa+UIAv65ggHgoFHNO9y3PLZ1WAkr9hddp3GFygx+sjXywOwW9Txw/eB8khT5tNx
	HU1b3gEht+CLAmuHLZSBTHxrsT4VCLabKPOw5KqcjwMYXl3GNKN86siF0zR4mrFJLjvrjh
	yEvhZgfGuuoyYEM4kd1WQRtIb3TsB26X/V/POtyndV2+R7xiylKoDijmvLZYezV4Az3Bq5
	Ua4lPml0GZT+fJURmh4KF5lUipf53n2CoCwrG5qxTzCDmrDbCEtrTK6veQW4Se1Kb4of3B
	aQ8MSd+ybKHpnMiexUvcyOFYLYOsDCCx6DtIdneBymzLF503ESefDbEXNtnpDg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Kd5m9LWU;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LywdxBa0;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R7utKQKkG85QFDDDa6Jf8+hpBkcGt+izVXpfPVgm7do=; b=Kd5m9LWUFiINqqyHHuVTGyM/dU
	mxQ+SoMSID3NxvA34fbEaY+cbL7wIHQoFZo0Qrt+eTCbVMdbwAu54HkxIPtD4avxsOU2LLssx7807
	NLih1MT/4jqgqDMfLf3FshVsTGLdyAvL0OBHDZC68b1VfaEukhEvhlL8oWFOmZi8imZC0xI7kI9Ts
	ZM4PwmU1QKImRXMGAD1z0L3qpnYIbcGqcT9wpHvU9F5mehIe93a/0IFRvyXavvaFYjzevdRS7Z5DO
	L6EnSrj2ok2V9c+r43pnnIX4mrZCCuQAVPuGsBE/RkgbFc+/JSd1Jn6hk3VDz852reYJWPKLQOq/d
	OADjuPAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBS0D-00000002Z0X-302k;
	Tue, 29 Sep 2026 07:11:49 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBS0A-00000002Yzo-3dCJ
	for barebox@lists.infradead.org;
	Tue, 29 Sep 2026 07:11:48 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 36FDB2016D9;
	Tue, 29 Sep 2026 09:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790665905;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=R7utKQKkG85QFDDDa6Jf8+hpBkcGt+izVXpfPVgm7do=;
	b=LywdxBa0x7A1V9yrCiBkTd4JcHKR+mkoKMrgVjdzj87ImpRAI4hIGQPHj015tzWZ+0MGEd
	eo6kXP0+c+dbWIMiCUGKXtwMv7QFaT8sH/XESSIuzWSFtzwIuiQQohdx8au5Sx0pE6w/uL
	EUT7MOI5BU9l+WQjRSH3rmvoEUeMRxe1Wow1JJYIi5ZSzDla9oUo6wtnQhDoMPA+xeUp72
	s4G19YGMib64NIQ0f2euilkvKvOYG8w33Cs+Jc8zdUrJd03Ulyetb4V1v7h0oHZeLYxByd
	vx6a+B1loGuULo5wTBURSb5uJ2LN4+DU/Ju+hoH0IuMmtG2jFDr6jpjWdrL4Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790665905;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=R7utKQKkG85QFDDDa6Jf8+hpBkcGt+izVXpfPVgm7do=;
	b=Jgyd+2ncaeK0+ssshWrWy9ULjmFOK0vxzQhGFcpU/Bq47f3l15yd0TC8GBfyD6oqbQYwFB
	1vAjK85TiH0CaugAili4pas5RrnaMaVvy6Zeb+W0C+47J58S7jGP/ZR51hSZGqA/2OeBpu
	HXIC7J9+gn9Toc0fqV5KzxAGaDh8MEIKc4mXovXrVFZhcX0xr1k1Ei1wgNBeJpw2x34Kf5
	ybZ//49hRbevzo0MOBtDTlOwPwMK6yyEeHBgy3q5HEroe8jc0IhuJxzygJ8ys3JgcA4U/D
	6JV6ZxLvzBgdhbItvobRaXhg6SIBQsLHTt/ejrut45JrSFA/g+ra7Yn45oyucA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790665905; a=rsa-sha256;
	cv=none;
	b=T3WCdBiVNZiy0pCzyvbJOCN/Q9EZUsDxRxWxr1B1SRV9+mgY8GJMs9zoeRHbpQxeHOnbEw
	lxSpGdUC/4jGmeeLPdzkfnJCB/pAnrh8LzCztpKcsF+4LoiMF6Zecs/GjrvtfrSnvv6/9Y
	ph8EC0POiQd2bsbYxUHIIB9d5bjVE/f7s/1md7VQUHgaNjFkcOy95+hGzyG+5cdv680/JX
	30sfMgo7b9ZHFJj0F0HzeWmb6+9w2wgOf7Y2FXlf5SDJYOu9h5XlXHo3xxbsgHdsZ3Xfvf
	moDghHTZYb4ewzLF43m1UzqBN5RZ0whW/v/2wgvyz5RtA76MUjDXYcBJnOVEcA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 2C50AFF954;
	Tue, 29 Sep 2026 09:11:45 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20260928-mci-cadence-sdhci-v1-1-e18fdf9070c0@pengutronix.de>
References: <20260928-mci-cadence-sdhci-v1-1-e18fdf9070c0@pengutronix.de>
Subject: Re: [PATCH] mci: cadence: adjust name of reset line to dt binding
Message-Id: <179066590516.722607.5689472986820009197.b4-ty@pengutronix.de>
Date: Tue, 29 Sep 2026 09:11:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_001147_061887_676EFBDC 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 28 Sep 2026 13:56:15 +0200, Michael Tretter wrote:
    > The driver has been implemented with a preliminary dt-binding. The > lastest
    version of the binding patches [0] use the name "combophy" fo [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: BFA68200B6B
X-Stat-Signature: kokekmt3qbbotc9yennqqzaojxawga4r


On Mon, 28 Sep 2026 13:56:15 +0200, Michael Tretter wrote:
> The driver has been implemented with a preliminary dt-binding. The
> lastest version of the binding patches [0] use the name "combophy" for
> the softphy-reset line.
> 
> There are no upstream device trees in barebox that use the driver with
> the preliminary binding.
> 
> [...]

Applied, thanks!

[1/1] mci: cadence: adjust name of reset line to dt binding
      https://git.pengutronix.de/cgit/barebox/commit/?id=78cb205a90aa (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



