Delivery-date: Thu, 01 Oct 2026 22:33:30 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCNT8-008Zv7-1i
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 22:33:30 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E3F03201F0C
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 22:33:25 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=TEXxpTef;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=W+u3k5+Y;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790886806; a=rsa-sha256;
	cv=fail;
	b=HtMkYxZgKbdgBe9GDAWTxSfdNgyMaygg/KkeDFROm/0ayWb3Zc1pARGvVTHKQTuMLQMUK9
	F2KqG6gsTjSNHYpZZcj4LFHjKtDGjbggh5mBiH97w8w+RHSp22DEKJTot18pYhFkvWmDal
	/fQTwQLgL8fZzjLRkZUV4+/pvVGXS0r7Q3gJqgmTSUIKUPEAHt8ei7ReKcxNP8Z0BUhaYE
	mOgLPKrjqGXlybRdZ8/axVg823NuddE2Uccpw+ALs99B/KY0Y6KhAgwIPz3rbtKGoZlxAM
	tqPwXkJyghdNHXCgI73n9HLv/5AjIGwogD85wEERO7biIeHXbhf7/myUGCjeQw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=TEXxpTef;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=W+u3k5+Y;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886806;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=158ctbyblmg1g2gPI6kPg0x0fsfrmxswx8SF9oXQKQ4=;
	b=VJbm7Ah7SFtNdJzkEfV3gJrHiMiT+2zXi/p0hu/fv6SM4oxDnwykcNKWRsBYE7G1V5iNfl
	5Cv1mCOKtGC/9EOBYeV0trGgoiuNihimpww2QApknOFeRuSuyZ/kJvJ5AMBmdZO0DKH0Ph
	NpJddcdtCB9Kl34CuP6WBiBalpVFNBOT2O/1G/PLACE6x0ChziDfWuDIWuBHTFGY52h+RH
	M8EeAqZ1/Y6egkGrQosfHLVHjfhYa0K6Qg9lLIWmmMfbm5JPFnYX5VuL0B6UrJMAYxShrh
	wuR3sELjWaPqxhzMVmWsKsHQ0d3jpkFY37RDohtW698MQkV6PcHJLYyYP2R5Lw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=158ctbyblmg1g2gPI6kPg0x0fsfrmxswx8SF9oXQKQ4=; b=TEXxpTefqKOTrPEHHOBJZ6toOg
	FG10vLkpdnwg9luAGlXzSZnYqySj7TfsKEj3vnP5LshyBhNuKfBKumi2fEtbf/pDTnlXcMYA254EN
	0D8KbMTFKEaUvHwJghCtO3GyZDH0EuckC4Xd2uH0KmWZfry+/4Lurulu+DEuPSZ+xcS11fy0AsHe1
	5BMbkUoQkJXFtEU0V/qvJBaR0YderHUMyF731zybTxPcEtKlapmjB/CemPEB9fEfbNT072SxtvOep
	ypE+bzEcajOLyKKNlnHLlRiHTgVFstfN+UlnHXbFoABrzYCnwMCoJIHJD/KLHY3XmHoVZdhgUYO3Q
	xUcMiBCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNRm-0000000AAUZ-2gKN;
	Thu, 01 Oct 2026 20:32:06 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNRj-0000000AAU2-3mpx
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 20:32:05 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EBC50200566;
	Thu, 01 Oct 2026 22:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886717;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=158ctbyblmg1g2gPI6kPg0x0fsfrmxswx8SF9oXQKQ4=;
	b=W+u3k5+YM5tgvM0tI+TUGHuSdz8ia/zeyEU9/c0H5JLOV7ScyTHNEzeAN648GGNv7lWouR
	CS5xytlk5iem8dbB8yp+y0N19wTDIMqujh7o4OvVzfEbN0bra1trJ09RNQroOQ+HJJHyEW
	DrgMty7BjfZNEi97+n85hd7LCoG5QfbdepYzunKk8SzeYZuQwRH0TwT8/8yoqDh3S2OXc3
	FLB0EB0T2F/kVfICchPf5GyfwA/2ePG12zJ+2agtDc1fIv0moc9xNKAn3wGRBwcIgAVtHJ
	mkIRi7UGjs/vZA5+zl/CFoDJoqco7++k/bJ8l2xTk6z1uqBEBDmD8TooyqcMvg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790886717; a=rsa-sha256;
	cv=none;
	b=PBkHZld8UbgWA6lU1icih41MuZGhxwSN4igWaQ9g3WkreHLh04gbzOY+IWJbGToyS9qHeu
	gfd3jEFFBaaUEvNqVLAzdNUpBHpZ4IVxY/2nIDd03R9G+UU8u0iiKPZb71WOYXg+QpygpS
	lWyW15ikL0DQJI79pLJcKUxK1J16DXsYC2KpkrzTEA1HPpOagI8dv5vs6WGmnIAe0eUDT5
	AovDqOaCgWhZ3k6NXSVfDZqIDvVCA7KA1B0pTibDfMr/m9Wp7SGlH2vp0U7qWfslgPovUq
	4gBbyfpZc+8s0D6S8iEYGJuHhElAyBcJMQkc5T7GIOdWfPrmATbW0ouO4LY0rw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886717;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=158ctbyblmg1g2gPI6kPg0x0fsfrmxswx8SF9oXQKQ4=;
	b=BefPb7E6RYA482wnawpwEi9pXjx/wyfaarwOWHFyPIkSjELCQfQNd68XsTLw3COvNv/hAr
	LUgzKXH0epHpyX+dTbTPPjrlKNtBBlFviD3+OHIvRjqSR1o/EfDaTLSP60mbp6WprC4Qui
	HGkmfZBFO7xoy5niZIj0tHSBIL9Cc/8LZCE1lfERLsmFdxubgbwGJdkZXg4MXlKk/o6Rrr
	TIcViGjXE96xk92vApvPeR0YLzx3mR+PYHZXBjxnBhW3rhwyh7SAhGY63TF/tZ4yc50EFH
	XBDJF0PH6PKlfSCRJKV2MXCwA38FeiSJ84To2gNN8T+SM7vrPF5ZbzBjMEft3g==
Message-ID: <fd2880a1-c225-45b5-8a39-296b163c2d54@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] ARM: dts: imx6: phycore: Fix pin settings for ADIN1300
 PHY
To: "Florijan Plohl" <florijan.plohl@norik.com>
In-Reply-To: <20261001104309.2616488-1-florijan.plohl@norik.com>
References: <20261001104309.2616488-1-florijan.plohl@norik.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 01 Oct 2026 20:31:56 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_133204_094697_3AFBA7C9 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-10-01 12:43, Florijan Plohl wrote: > From: Stefan
   Riedmueller <s.riedmueller@phytec.de> > > Change drive strength: > - TXC 57
    Ohm > - TD0-3 76 Ohm > - TX_CTL 76 Ohm > > Remove pull ups from fo [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
Cc: barebox@lists.infradead.org, upstream@lists.phytec.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-54.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DKIM_MIXED(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:florijan.plohl@norik.com,m:barebox@lists.infradead.org,m:upstream@lists.phytec.de,s:lore@pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.58:email];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E3F03201F0C
X-Stat-Signature: m3ch4cg46qwz1cq41jbncqozryctsh6a

On 2026-10-01 12:43, Florijan Plohl wrote:
> From: Stefan Riedmueller <s.riedmueller@phytec.de>
>=20
> Change drive strength:
>  - TXC 		57 Ohm
>  - TD0-3	76 Ohm
>  - TX_CTL	76 Ohm
>=20
> Remove pull ups from following pins so the won't interfere with strap
> pin latching of the PHY:
>  - ENET_TX_CLK
>  - RXC
>  - RD0-3
>  - RX_CTL
>=20
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> Signed-off-by: Florijan Plohl <florijan.plohl@norik.com>
> ---
>  arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 24 ++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>=20
> diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/=
imx6qdl-phytec-phycore-som.dtsi
> index 60f7e2c14b..7199c416c8 100644
> --- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> +++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> @@ -79,6 +79,30 @@ pmic@58 {
>  	};
>  };
> =20
> +&iomuxc {
> +	pinctrl_enet: enetgrp {
> +		fsl,pins =3D <
> +			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
> +			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
> +			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b020
> +			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b018
> +			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b018
> +			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b018
> +			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b018
> +			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b018
> +			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x180b0
> +			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x180b0
> +			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x180b0
> +			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x180b0
> +			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x180b0
> +			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x180b0
> +			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x180b0
> +			MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN	0x1b0b0
> +			MX6QDL_PAD_SD2_DAT1__GPIO1_IO14		0x1b0b0
> +		>;
> +	};
> +};

Fine with me, so I applied it, but have you considered sending it for
kernel inclusion as well? Otherwise the values will be reverted back
under Linux when you don't start with the barebox device tree.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



