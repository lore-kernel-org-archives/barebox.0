Delivery-date: Wed, 23 Sep 2026 08:27:01 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9GRZ-005KvM-0S
	for lore@lore.pengutronix.de;
	Wed, 23 Sep 2026 08:27:01 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9C4B4201FF6
	for <lore@pengutronix.de>; Wed, 23 Sep 2026 08:27:00 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="E1s/HJ4F";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=HX0T0cvZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144820;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=MR2xc4Qj2bVBOiCH8tWy8Q18DY0MvLG8EmcgFC0YSdQ=;
	b=VQVGiwfv56a4p9Ty0UTYSTxSm4/5o3zUgWD5av4Uu1xQkFNvYaiypIxbr1cyAfBonI/VUp
	DI80mXuLuuEdQ/ZzwmhOWCJLaTTSOlavhgM8bdTmvTA3kIWTrlndTv+AZJGrfZY1jGErq/
	20KicqKgOCpbeAFZjl47p7ATMHhn3yoJUdYnUQHPg9getUj4FkhcIwLuVPXdQkibUWgwWH
	ZnqLsW33TOUf0eUV9z2Q+kqgYi7uwA5137p/p8jOX5HNTA11SkNR7XWoWac/f8V1Iw4P7+
	zbfCKRapjiGdA9EA08Atz0iCaGBtGcpu7/h09GZvpbYvkWfgihI9jPP+xKZDtA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790144820; a=rsa-sha256;
	cv=pass;
	b=OXbsidxkcIqSNy2B309qlXpVGcYhCJxy87ipmcut5pDnq2aQ+NX8goHMG7g9+zdUxDncN2
	IR7xaSHy3TzcldlJ9G/8WjpCFFaFUVZsC4ZZa522MKBE2r5s4lFftyEQLAgwGBWmx05+2N
	JixGqdLymP1Lx1a3hvWKZdiNkA5q/SD7Dd5dX7aIRyXkM2fYq2fRtQAnLLq4t0BHqsH2Ea
	rRrBpHcBqzzIUSMsb5khACertTsGxBoVMRnB/UyLnewVRpZdVgA90aQx0lTXv8RaZ66m9n
	Vu/TwRf6T9fNqZ/gXp+mIVKvUhzdWIxq6zk+0MFrBEn1/bFZBKT9LEu2+jie/A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="E1s/HJ4F";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=HX0T0cvZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Cc:To:Subject:
	From:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MR2xc4Qj2bVBOiCH8tWy8Q18DY0MvLG8EmcgFC0YSdQ=; b=E1s/HJ4FrjVIAe
	eaU4kc+fV2KwXKz8k84wWzXWqWYMVtGHq2E9AB2ip2iTaIAsEtRSQy9doHDIv+SAtpVLd5Y8fjEmP
	s5C2wu5TwP2MQHTRdhTr+HqXQ832bsXGuuuUT3IWF88sv7j0tB8+sywYHhuSK+Ti68Jy/wZf+Z2iE
	r132XDZOcsvjot/a34i4/vQjuQZDkoYFIRbHHFlAk4S5JBPYeSN77Ubzg8fwMcvyX4qZZ8M6XqPJe
	+KkhruKeodbapZYy6wsikV+6lvLPPqG8VRd2wzN14AeS4EHq8a8zHIPRdwRwxIE2d9BVVFHY1wUx8
	DLFjQqfMrFIV83VXL0gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GQP-00000007GdP-3qtN;
	Wed, 23 Sep 2026 06:25:49 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GQL-00000007Gcz-48BE
	for barebox@lists.infradead.org;
	Wed, 23 Sep 2026 06:25:48 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 083C620075E;
	Wed, 23 Sep 2026 08:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144744;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MR2xc4Qj2bVBOiCH8tWy8Q18DY0MvLG8EmcgFC0YSdQ=;
	b=HX0T0cvZEjn6J6bUQlfZ1JGB+wJoreYkPEfkanUDk3GFjrj+rwh5AcFcQsh+HPDsemepLE
	h338c7fQvxJafrErurSPxUwUnJcw5NxGZEv0AfIagcwBPENbgF7XaD2HOjJaPq74OjRbE6
	Nv7GAP3b6S2dfSa0D0jVIC+pPUnhZ+74h8AHSoWQvLvhTOI2vmJy/OmJnbOVngRlzp+11p
	o1nxE1i3C4XerW+/4bjirCrrfxIZzkKvLjNS0ZcB/SdMD4nWaFLOJsJjc1DWaGZrLgxXAv
	jR6rTBshi+fAUTUZotp2plJEBHpOGlZ0gexDUvyk9OUDYksnGib0Zyd4DVuWkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144744;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MR2xc4Qj2bVBOiCH8tWy8Q18DY0MvLG8EmcgFC0YSdQ=;
	b=EkT7WiPOTDJk7IXTjIPiYMySNnDyhZKHiKD739N3ze1FGeZ5S8FSpErn5ojXsG1HBQWCgx
	lpblnWH8K/izMN9+MbQOPxxUjn3oZFCN18nbz6SDeW8NcmfywRJw4JIfZh4VfyKYIIwEn0
	/434KbT91zoKp9mGKm5GKKIQvYpb1eFsixvVxOguzRCQLv+UzVK1YXkg0l8hTeaKMUWm2h
	ENeRJOTrhNJHStZ601LTJ9NL05ZTkyvh4Tya1UtIFjrGp3VxqyMNIzOgthrBik+gs6DXRi
	0Tu31myhuCC38SGkeV4dZ8Exdqb3bAbM8WDksnFHRunBMn1rJ9dPiU2vtrwgDQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790144744; a=rsa-sha256;
	cv=none;
	b=BwLhyT7IFYFuy06ZsWFrSxswcB0GsGgFTk515DFTng6NfP+YiSdth002yAAi0VZuoBt8/T
	4EGfkwNZYpMIGO+nqIiY3Xpos+ZWFCKkVv+uvD2epxixtukY2kuIEp8xF/1QcdK6IgHjJa
	Sf4KfBHpKnbwy5BiDoQ6U7OUyqARqerUt0opxLn8osaBDHH03AdfJrl3Mfyn6UuW5QMzMc
	Mcq9wu1CxxRHQ/7QIUVGF4G/mctcntG/Phc1EOtHYQ79L9obmHVyR5fua5XVJAe9e48BqL
	Cx8PTj0gcSGi5woRqCRWymy16NRkpJM1esmR3CP6a9xnv+q4nE1H/mg0VxA5Rg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Message-ID: <6551e95c-71cf-44df-a327-e5e24bdb3a76@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] semihosting: add semihosting_exit() and an smhexit
 command
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <20260921101948.1007488-1-a.fatoum@pengutronix.de>
References: <20260921101948.1007488-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 23 Sep 2026 06:25:43 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_232546_201615_51676A3B 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-09-21 12:18, Ahmad Fatoum wrote: > + > +static int
    do_smhexit(int argc, char *argv[]) > +{ > + bool extended_flag = true, shutdown_flag
    = true; > + int opt, status = 0; > + > + while ((opt = g [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-58.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 9C4B4201FF6
X-Stat-Signature: gcassmj8btxb3bf15yakdeqnod3319wz

On 2026-09-21 12:18, Ahmad Fatoum wrote:
> +
> +static int do_smhexit(int argc, char *argv[])
> +{
> +	bool extended_flag =3D true, shutdown_flag =3D true;
> +	int opt, status =3D 0;
> +
> +	while ((opt =3D getopt(argc, argv, "pf")) > 0) {
> +		switch (opt) {
> +		case 'p':
> +			extended_flag =3D false;
> +			break;
> +		case 'f':
> +			shutdown_flag =3D false;
> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	argc -=3D optind;
> +	argv +=3D optind;
> +
> +	if (argc > 1)
> +		return COMMAND_ERROR_USAGE;
> +
> +	if (argc =3D=3D 1 && kstrtoint(argv[0], 0, &status))
> +		return COMMAND_ERROR_USAGE;
> +
> +	if (shutdown_flag)
> +		shutdown_barebox();
> +
> +	console_flush();
> +	semihosting_exit(status, extended_flag);
> +
> +	/* Unreachable */

        unreachable();

> +	return 1;
> +}
> +
> +BAREBOX_CMD_HELP_START(smhexit)
> +BAREBOX_CMD_HELP_TEXT("Tell the debugger or emulator barebox runs under =
that the session")
> +BAREBOX_CMD_HELP_TEXT("is over and hand it STATUS (0 if none is given) a=
s the exit status.")
> +BAREBOX_CMD_HELP_TEXT("QEMU exits with it, so a boot driven from the out=
side can report")
> +BAREBOX_CMD_HELP_TEXT("its outcome without anything having to read the c=
onsole.")
> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("Options:")
> +BAREBOX_CMD_HELP_OPT("-p", "use the plain SYS_EXIT call for a host that =
has no")
> +BAREBOX_CMD_HELP_OPT("",   "SYS_EXIT_EXTENDED. On 32-bit, this loses STA=
TUS.")

-f option is not documented.

> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("Without a host listening the trap instruction is =
undefined and the")
> +BAREBOX_CMD_HELP_TEXT("machine stops instead.")
> +BAREBOX_CMD_HELP_END
> +

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



