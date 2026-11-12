Delivery-date: Thu, 12 Nov 2026 14:09:21 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRUYK-00A4bu-2u
	for lore@lore.pengutronix.de;
	Thu, 12 Nov 2026 14:09:21 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B09C120220C
	for <lore@pengutronix.de>; Thu, 12 Nov 2026 14:09:16 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=V0DLgCJC;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Q+w7XJ+p;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794488957;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=jcoj1gXfgluLvVqEvcUdwK4bGzGieEXcA5VEzYVDF6E=;
	b=WB4aAkksH7wF17b5ABXJahbme4sk9rqOoyaMTN2WYGD3sndnjtfY4isntWefgmoXqCQEec
	WKSWNlz6Vj3Tsy7UhyWNRK2SoWHP6tKFT4cO3yMrH9JYtzXfOtP2deNflpK/Jett1tll8N
	xiRqsQBv8XNPto4axiE0dlJvgQ6xoEPmZlN32q5/jsKHR+I7HbdAwxCappxdhDOhpSY8K3
	engSPanGPALlMlK9nBiYSQwa69HvL8gd6iPU/d6xJDANI4nSKhJieWSVkm1dwc9BySw4/m
	9CjqssSHHxobpDXDT0HhLJWK3m6usrBd+t7tzOQ2GgJIwD/f7wuOi9f6JYX4mA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794488957; a=rsa-sha256;
	cv=fail;
	b=QD6Lz3wZpAJgFvd/M9afExlgl+TV5fTI29PaSy8eUZR+dzf3smz00we9cv/a7XboxFMkAZ
	JqU36aaTMIhH4qYWez6vn8aV90r592/vxZch/K7Rgo/mWectmhsTzaJSyb8QG3RDZQsWFv
	AiNd0ImhmuG0xnjNfRMlkYD+h1VlJLXP3K1R5E/sy9Ew7BCtMWkM56gcSWVFlhvfLaQVMm
	644Ou6y24BrEOzRvVRw/i5LlTPbN1XQKfAYo6cgE92Bv0auiSG913+ZXIJLIXiUSyBml73
	PYxkA1jrmCqAq99SLXEhG3OYjZdpX6W/dMACDuZPisPzMu/FagHmYc9SqFvlmQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=V0DLgCJC;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Q+w7XJ+p;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jcoj1gXfgluLvVqEvcUdwK4bGzGieEXcA5VEzYVDF6E=; b=V0DLgCJCumqoky16KgjaPjy+cQ
	+35r5dPLzVyEUlfCzP+kIoPObbA9zgRCAcEM76qWTN5nvPjp2fZkRdwY25fi/zqqOQinRth1jmP/n
	ZCiFYHy6rVfDw7vL5YQc1xqWkplmNPlorJBnPEHvF9PuBhH+w8H1I3K5VKHxyO2Un+koB4XrIuhY8
	ERHjQ9lz2IQuRgBsqlQrhx3xaGWVNkvZnV+sXKZ8F/sTGmY0+itj5k/5sgqDLFoeRu/z0P0gwYS89
	xoVoaCCGvpQbEOb2boAvUCgjKKrhu5OjGE5f4C0hDSVF2sqj21TrOV4/o3J1JtAXwRKU47AT4BwUY
	n7B6zsrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRUX3-00000009yA5-0fGV;
	Thu, 12 Nov 2026 13:08:01 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRUWz-00000009y8y-1scy
	for barebox@lists.infradead.org;
	Thu, 12 Nov 2026 13:07:59 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C03E920067C;
	Thu, 12 Nov 2026 14:07:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794488869;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jcoj1gXfgluLvVqEvcUdwK4bGzGieEXcA5VEzYVDF6E=;
	b=Q+w7XJ+pRpgKvl46AbM8lglRiv3Ts2dOm9IPdtWzbbjP/ZQr3nZWg7xLnKZjjz0/huC2SK
	dcjHSAHSb+lznOuwYNKuh4XkvO0bAECXBHrqQWRfGZ+heXsP7Nues+gOvl2Yxl1Z5yrwo0
	Pzqp4LIL1/Nb+eqQ8UyGVf4PnRyiNY/bC3fLc2aRL9QbcZuCHEu6geDBR7K/vTghOL3Lv9
	6jMv07+PM38CRRNUawxXpM37XoCVd9HupMJXwt1yRXNKuBEjiAY+AMztq6KUuDhlvh5/AX
	5Sl3N86CMAD1mVAMWt9TTyKljkMak9lXv/ybWSfRv8897EnVYVPtLBc6TQ7QgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794488869;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jcoj1gXfgluLvVqEvcUdwK4bGzGieEXcA5VEzYVDF6E=;
	b=eyCSI1K0xAc5mOVwt/pc5PqmNyui90tR5zjaybuImuEsN8qNr+PpPc4rHsU0IfhBGwP/M2
	scvwePWxcmT/NWBLxkh+jZ9jrXnL9HPEY1uIH8hVWfgGqiQqtUBhdyFuF6SLyDGDvvncuF
	R0/PgGWI72ej2cbRQCENCclHpBI4BTzGha5aTTqP384Lwr945Uo1GTdGo/6MFpbgRHfcIT
	zAdG1BtYN21nFFeYyzhMrrZEDI50Q6x1juXKoXqCOGG1x0iWZFDOE2kysGJ5EbTTbr9gDw
	c5Leuae1heHNOH7lY+MaE5eAeWGkRRd0JvpvUOpKOZS00fzXbaRmjwdtRPFx2w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794488869; a=rsa-sha256;
	cv=none;
	b=alcz2CLxtB11eRVB69JkOOoiWB3INTwrnHxIOHgxwzXUMfnWGYL8U6RJMArw5M/WwmDFaM
	+mOqGlo/eI7C9x/Cf5R8pu/SuJorLumSL5aLLrC/w7PtFIQm+SiHCqUHfalt8IYrfPTzzD
	l62mpExYVOB77B9JRaprdS8CLCnLjTAhekBaG0VSoKC1lOiagBca1C9RkfVql1G+oQqb7/
	TT1wH7s3q3apAYsez4zzSPuab3AIS26oj+a9wQTghKTSyLPxCQRcfwvqqHeoDVm40tpH6T
	ZhxkTNMXd1UBaKdGXHO87m25vSlAaaeKDcDgHOosrT2CK0C8LqUXlB6uaCpShw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Message-ID: <66529dc7-f965-4202-a2d3-c67e561ebedd@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 08/10] boot: drop the dyn infix from the bootentries
 bootargs variable
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <732b6ad0-6446-46a4-9135-bb70d9657152@pengutronix.de>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
 <20261030-boot-globalvar-stack-v1-8-a03803e1100c@pengutronix.de>
 <732b6ad0-6446-46a4-9135-bb70d9657152@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 12 Nov 2026 13:07:49 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_050757_647309_7EF717C7 
X-CRM114-Status: GOOD (  25.91  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-11-12 09:02, Ahmad Fatoum wrote: > On 10/30/26 11:54,
    Sascha Hauer wrote: > > blspec and extlinux pass the options of a boot entry
    to the Kernel in > > global.linux.bootargs.dyn.bootentries. T [...] 
 
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-54.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_MIXED(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B09C120220C
X-Stat-Signature: f3ba8g8wpnju17r7omw491jp4khaukz8
X-Rspamd-Action: no action

On 2026-11-12 09:02, Ahmad Fatoum wrote:
> On 10/30/26 11:54, Sascha Hauer wrote:
> > blspec and extlinux pass the options of a boot entry to the Kernel in
> > global.linux.bootargs.dyn.bootentries. The dyn infix used to be
> > necessary for boot_entry() to clear the variable again after a boot
> > entry returned. Now that boot_entry() reverts all changes to
> > global.linux.bootargs.* anyway, it no longer carries any meaning, so
> > name the variable global.linux.bootargs.bootentries.
> >=20
> > As the variables are concatenated in lexicographical order, the boot
> > entry options may end up at a different position in the command line.
>=20
> I feel uneasy about this. I would rather leave the old name, even if the
> dyn. serves no purpose any longer just to avoid introducing subtle
> breakage where scripts are overriding something an argument from
> the blspec.
>=20
> Is that ok for you?

It's ok to drop this patch for now I guess. Anyway, the current order is
more like an accident rather than well defined.

With global.linux.bootargs.console=3Dconsole=3Dttymxc0,115200 currently the
console=3D argument would be overwritten by a bootspec entry, but
global.linux.bootargs.earlycon would not be overwritable.

So while we should not potentially break stuff for this rather cosmetic
change, we should look into it how to make this less random.

Sascha

>=20
> >=20
> > Assisted-by: Claude:claude-opus-5-5
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  common/blspec.c   | 2 +-
> >  common/extlinux.c | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/common/blspec.c b/common/blspec.c
> > index 0552e93b79..e2fa4956e9 100644
> > --- a/common/blspec.c
> > +++ b/common/blspec.c
> > @@ -128,7 +128,7 @@ static int blspec_boot(struct bootentry *be, int ve=
rbose, int dryrun)
> >  	if (initrd)
> >  		data.initrd_file =3D basprintf("%s/%s", abspath, initrd);
> > =20
> > -	globalvar_add_simple("linux.bootargs.dyn.bootentries", options);
> > +	globalvar_add_simple("linux.bootargs.bootentries", options);
> > =20
> >  	appendroot =3D blspec_entry_var_get(entry, "linux-appendroot");
> >  	if (appendroot) {
> > diff --git a/common/extlinux.c b/common/extlinux.c
> > index 1976fe09aa..f502bffc7d 100644
> > --- a/common/extlinux.c
> > +++ b/common/extlinux.c
> > @@ -68,7 +68,7 @@ static int extlinux_boot(struct bootentry *entry, int=
 verbose, int dryrun)
> >  	}
> > =20
> >  	if (e->append)
> > -		globalvar_add_simple("linux.bootargs.dyn.bootentries",
> > +		globalvar_add_simple("linux.bootargs.bootentries",
> >  				     e->append);
> > =20
> >  	pr_info("Booting extlinux label '%s'\n", e->label);
> >=20
>=20
>=20
> --=20
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



