Delivery-date: Fri, 02 Oct 2026 12:53:09 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCat3-008oON-2x
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 12:53:09 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 76CEF201D65
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 12:53:09 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="TmPDF9/C";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="dXo0/xrW";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790938389; a=rsa-sha256;
	cv=pass;
	b=N2irF4+ktuaLX7SSy50lpniAiQDEt/G0KqRrjyA0JirNcbRygrZAb+zXix35fyoS4r9KUt
	0Q/737MJ1QvnCoy5StqFarzP+5g6jvEf8YZ5vh+OaRl1hKFACZqHbsvXTJXeC5F8Cyf4bf
	h4SNW+hZjvo6cAh6FNoObI9pkaAIkDMrhSjeCcLxKZvOjBzhF467ofXDNTCU26N7beKaQO
	WFgBEyRAbptGc3PtBbmaQP8AJ5gvkwODAWGgqedNbQguKXKl2Zaj8jAwh4/dUqu0MrOUnx
	SQHMzkPTuZJ+8dnFqY6apExtzM27NTk82XXyryJWTOCzC7Nxb6L84C9csDreIg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="TmPDF9/C";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="dXo0/xrW";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790938389;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=g1EN/cmJf1zeLeYZa1sp0aUE+O7y3XeKMwvinWbxUfo=;
	b=DuiqWhRvriPGrvl7tet7N01OvH6eja1hVeNj0h1l4nGunKKtAnsD3Vlxr3HXXOSOqIMJss
	Tzt9oPAhNgNrVDPye385qSK4pDnbW90CR1eXH3e1LupaSgfNXD2Pz4RIJ9u+9Nvmnihxxh
	Hf/NfPMYwxkCnch40wotkJsTqnKEynluIVYPZZJrk9gIabRR3UDdSjn9Hi/p493v25JbeN
	g2MpOUjTr1akiqwgYfxXbJDEr9DNejzgGZmfOe5LwPsWnf1Uohy7HfCMdzk+tjroKui7q2
	DVJQ41Gs6A34Now5VOe96kp1PbU0FiDa8awLesMwOknqpt3uKCUZU2+UGQReEw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g1EN/cmJf1zeLeYZa1sp0aUE+O7y3XeKMwvinWbxUfo=; b=TmPDF9/C0UnKEH67arNwG80AXQ
	NXvmZq8zRVaNT5qjhs8Mg072QVOX1bBjSoAUe4EOX/wGl24afxghat8vIzkgZ5eH6o+6C+8gjIFG2
	ninqRKlplluXAQdM8qxbKUlSE7WdU/3X8mPgvj90tdWPBESckqTOJZbSiduV6nEl15PDlL1kfLVlv
	jNI6uIV4QqfX0XyASMorvKn4C7cx2/ZJRa//LAwsg89bZUUFxxiwInOBv4BJ0z7lZZ7BA56xutpl1
	p2H9QDpp0fLL/hqEizOsyb+Yol7f4Byg9okfeUQcNCuIOwqwxcU1JFeBj3xZPoJaPDohQlYJq2TQn
	Z/RHGx/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCarc-0000000BNdg-3dHn;
	Fri, 02 Oct 2026 10:51:40 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCarX-0000000BNcN-2xce
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 10:51:39 +0000
Received: from [IPv6:::1] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: lst@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7743E201E6D;
	Fri, 02 Oct 2026 12:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790938291;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=g1EN/cmJf1zeLeYZa1sp0aUE+O7y3XeKMwvinWbxUfo=;
	b=dXo0/xrWNwyfailLHjurwJcZ2ahs0EbtIuScBfTj87PLzyLpfKvggau0EdwUWxONTRDfSA
	hN4kZOxw/+KzSbJ8gYoB6//Iu6wA/jwWKmTGN205nHsTFM99COyjnDJnFVCbNCbWOFoYuD
	OAFoEOm/hpJRCPGOfRn1kHznOfA40F5a4hR+XyU8Rq0rR0Sd2yS+/ydjw9BEXhr4jhIR8E
	sl40q7NEFJSfxNVKW4QQLc47hCsRaPCHn5NIw1ygbaSCqagOqC5tpwa0T2dk3tzAJH0P10
	pZaYiuE27u8k4LrmwpzF94shP0zgDAdI05u0IPur+rpQc7sRVVLs4+5oYBKhtQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790938291; a=rsa-sha256;
	cv=none;
	b=STK5BAyIGKXhgM0EmzGhy0E4eqm7kigmzCrc15pmfOMZ/mjyMt6dd4V++cCCPhvOVmwvkQ
	usxqaE189EU89CUuU1PSj54HeZ3c7PSIdelYK3R8+tMCto4opsOBeIoqLHzIyfXWa43MGI
	Nv33mQjOHbWJqPSD2laRX9xYHbeR1maq+5RJTd2zBcOr8Vh2CpHJw2dTtbnUA/X+/H9bH7
	wU4tMdUnvtrw9uYgctW+mmqUMinCGo9PATJUmW9YsjlpUaL27zFZZfxoxk4mGSlbiBJ9Ix
	xpA2VZUt12zdnrPXRhnsDvBmpVl+hWp3/zbikJOcA60A/2yWKjUeUz3yFmPxcA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=lst@pengutronix.de smtp.mailfrom=l.stach@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790938291;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=g1EN/cmJf1zeLeYZa1sp0aUE+O7y3XeKMwvinWbxUfo=;
	b=bkLbxf+aIWS3UZTsiZC6ayQqUykxhGwjz/lITehy77giKlpDQ+vLRRpql7Ndqr6apa9huP
	hwaZsXN3TrFZbDX23quV+AmkSshoFe3s3UuHpxKP5htndR947PygZGvJy59nmIZClhV1O8
	JVIFCxN3E54zBsa3IYeFgSkOpUJOjSkMbs/3psDudzRZ8Zc2+m6n5iItow7zbPECPLF+11
	hwf8aABvU1XGpFEoX6LAJ/V9BSLc4E5KSyaHrhhv/iFoIXPFzwRd1dbSC85uH+oiPB5Dl/
	atMahfIPVg4thwVqRqHjoB5LQEBCWvzuGmaFZDLdJD6eypjUeVYfRPLA72Ow6Q==
Message-ID: <2a0aae870ca1f7949fc1a9492284313be610c4cc.camel@pengutronix.de>
Subject: Re: [PATCH] x86: efi: fix objcopy flags for barebox.efi
From: Lucas Stach <l.stach@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Date: Fri, 02 Oct 2026 12:51:30 +0200
In-Reply-To: <20260429080710.2497884-2-corentin.guillevic@smile.fr>
References: <20260429080710.2497884-2-corentin.guillevic@smile.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.60.2 (3.60.2-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_035136_186817_F8E1BDF2 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Sascha, can this patch please be added to the 2026.04 stable
    series? Missing this patch currently prevents a successful build of Barebox
    for the x86 platform in Yocto wrynose. Regards, Lucas 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[l.stach@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[l.stach@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 76CEF201D65
X-Stat-Signature: ypyo3wuwthiz7s35897frw9kq8t7rx44

Hi Sascha,

can this patch please be added to the 2026.04 stable series? Missing
this patch currently prevents a successful build of Barebox for the x86
platform in Yocto wrynose.

Regards,
Lucas

Am Mittwoch, dem 29.04.2026 um 10:07 +0200 schrieb
corentin.guillevic@smile.fr:
> From: Corentin Guillevic <corentin.guillevic@smile.fr>
>=20
> Since the 2.46 version of binutils, a stricter target checking has been a=
dded
> (see [1]) meaning that the --target=3Defi-app-x86_64 option no longer wor=
ks:
> a 'file format not recognized' error occurs.
>=20
> Replace the --target option, which defines both the input and output targ=
ets,
> with --output-target.
>=20
> [1] https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommit;h=3D5e830=
77d552ed6f81dbc092eb3ccf827a43de42c
>=20
> Signed-off-by: Corentin Guillevic <corentin.guillevic@smile.fr>
> ---
>  arch/x86/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 647d075f016..9456815fa8a 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -62,7 +62,7 @@ KBUILD_LDFLAGS :=3D --no-undefined
> =20
>  OBJCOPYFLAGS_barebox.efi =3D \
>  	-j .text -j .sdata -j .data -j .dynamic -j .dynsym -j .rel -j .rela \
> -	-j .reloc -j .bbenv.* -j .bblogo.* -j .barebox_imd --target=3D$(TARGET)
> +	-j .reloc -j .bbenv.* -j .bblogo.* -j .barebox_imd --output-target=3D$(=
TARGET)
> =20
>  barebox.efi: $(KBUILD_BINARY) FORCE
>  	$(call if_changed,objcopy)


