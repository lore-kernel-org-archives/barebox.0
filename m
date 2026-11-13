Delivery-date: Fri, 13 Nov 2026 10:52:55 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRnxn-00ANZ1-1Q
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 10:52:55 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5439C20128B
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 10:52:55 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VrnOcRhF;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=ITE+FrZ9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563575;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=6x6lOkQyW3tzqvVmZfHEgPQ/AdB0TXEBbbKi75V1+IE=;
	b=fE97beM9MvbRSmdQJtZzhBhk9YPbM34PEEJauL5AjFHRkjzxf5CwtzOlypi6BBQunNG8pO
	2k6lyk5oa7KruXfGfV1WPtSrWRVjr79TzLu4ItMwuuINelAJm+WosNZ0vfoAsvtw3oYEYB
	aNlm8+02IYt440X0S56LyE1p+8/39MB8sicz5U/1t8K93jBLCtmDI1CONf8h3wl9Z/Aifo
	HrDEaX6x0Ld9a874kYkyMz0G8LJLe4QumMY2XnZMTiOZReG1flnu8rivg2k6H11XPruS6U
	abmIIL15Ln9MqWvWfBwwsRHlZ3c1AwIZLZw2mpbpf9WZ2SbeEwz3Bke94Z0gKw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794563575; a=rsa-sha256;
	cv=fail;
	b=Uql+1DIbnQFriMt1qv8ci3qQKl+QQ9HLnjz9H+RT9qepdKFDZj7wfDxR3L2OHxIAYG7u8Y
	Dnr+zthRqmYV1z6KKzculTlJxgUEIw9DSKCo1jdQIerbVyKu4PR81UW23AJCpH/w0O2xvM
	qrnNgrWVcGF/B8g6dZiJ4bjMJ5zS8aRPlEBWWwKAMJVi26JPRmQBvczl9NiidzghkL0GrO
	6YDh7me2J7pBgEPNDLqhFH3A0252A+4ReXiqlizkwmfYFYYaExChm6KHtCc2fbpJV0Jn92
	16UyF+H6JuPKi7gg5iZcC6V7llQw8PWSA0qJab5+ERfVYPJjLezXMuqQUc/L1Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VrnOcRhF;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=ITE+FrZ9;
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
	bh=6x6lOkQyW3tzqvVmZfHEgPQ/AdB0TXEBbbKi75V1+IE=; b=VrnOcRhF6w1/A2n39DSdtLs5at
	nVvFoPCzvbh4oAFrD6LmAm3KnbBWZFDG8l7ZA97+r0mTrAY45kgh5Csw7/w60MuwsNF81/XzJHHZD
	bK4KlZWHIZ/kRsFDGVqabKAdwpiSb4x0T7ANG/HNEhtGCY/vY7YOZiHZQHq8I9XIphbvBswDGOTKI
	IQs8Aos8AUgcaWGh70y8ga79pFPVW9MGpCPo3UkG4rvOfhyzdcgQnzAxKmAaNCHqSakb8fgHU6f+f
	usnEBRimdmFwXGgReTZmryRjVq1BGZYLhiy5b0r2Hqtzxl057p1elMiWGmNqwzhug0hnhXTw17GpC
	AGfR4roQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRnu1-0000000CG2L-0tb2;
	Fri, 13 Nov 2026 09:49:01 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRntx-0000000CG1T-0uy0
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 09:48:59 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4FB5020581F;
	Fri, 13 Nov 2026 10:48:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563335;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6x6lOkQyW3tzqvVmZfHEgPQ/AdB0TXEBbbKi75V1+IE=;
	b=ITE+FrZ9/4TcEOoSZWiBn/SmZgW1gPtyQ6QxPgHG3ZXxyUa7x/yDgGMQM1Q6vBXrR26xAk
	8TUj5V7ImHk80kMFZ+Wno+HC8XkWkC5xpjELP8xZJs31teE8mwqdptD7N4RY5uTZdRxs7P
	flnMu4Nowtw/BBV1Cfng3gGs4oWE8JyzA9FQCEi6nCC6nvafDBNcnxsyo5jtHkMSSmQmO2
	ZsHEtI/GIALAjpmR1t0ihLMZl7ZjiqKgHPOgNiqwze6JA1NWSOlsltxFmUmaAOJnMR8SuH
	PjQ0jRKOuq1hfweXxl2KSHCRCM1bdqbf36Vafqf3T2og7HoXbZ1cRpDWEUynxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563335;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6x6lOkQyW3tzqvVmZfHEgPQ/AdB0TXEBbbKi75V1+IE=;
	b=Bpm26xh2xjP0hSMtqpqSsXzafAwrpLtxD/pp+uo2pvPFqgwdbr2VKH/BWJoqbY9FdbgnJf
	wwXAVAOXbVRMjakPv6EaNmrAjh6wvNjWXoE1CmRrn3/QYUVJrWoK0WdVndMj9Whqu3Vihi
	oZthOZld8BzfaqkXXNtIAc023GkRu7I3t3y1EL2R0xEkwZnp1pq7Os7A79OchJ2iGTYbGO
	LsVkE7XtYjUDBpXeCgGN18kN2xTiNOiw50CMOEov73P5bfSzefMDtaa0UjmaQTTT4aQXPt
	L7cdeQ1Uo3o75sJOl+vbu91cuezSMk7/bQNXyafCTe9W8j39uAeNt2O9Kl7alQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794563335; a=rsa-sha256;
	cv=none;
	b=fBhgIB71MnY5d6265ZlAATWEClzGKNhMpi7jQc/WnW1iOIWpiTGYgTVAQpeD9AIOX83Zpb
	w7T3FXex/pHvNCb4zwrwdf/cU+SjHcc8KiRaiouBQ9vpxQOT6XqyblRjyg4MBABcN+7Z+r
	3dYAwO5o4m8wuhvzPt0SVtaMmV1LK5DkbGpfeW+WZZr7lpDdMEKP2FdxfbDL9xwzet+xJ7
	HTPpuYDRLWHH0X/AYQmMAYHr3OnLEYV14dJPg9GocFW3rcbodWs9xEmv67Hc3Ks7ZGYdw0
	XERBGXJY4wG5VJUKswjNUeBO75P+FVKhWzzNGADpktjStOFFHsyhyc6s6iGmYQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Message-ID: <7b2bfabf-37f1-4990-a574-5d7625fbb65b@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 4/5] boot: implement devboot in C
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <0296ef44-3043-49f2-b5c4-959cbd4d72f0@pengutronix.de>
References: <20261030-devboot-v1-0-ab9dd3a92c66@pengutronix.de>
 <20261030-devboot-v1-4-ab9dd3a92c66@pengutronix.de>
 <0296ef44-3043-49f2-b5c4-959cbd4d72f0@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 13 Nov 2026 09:48:54 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_014857_995301_44646FCF 
X-CRM114-Status: GOOD (  27.41  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-11-13 08:51, Ahmad Fatoum wrote: > Hi, > > On 10/30/26
    3:13 PM, Sascha Hauer wrote: > > devboot is a shell script that brings up
    the network, sources a per-user, > > per-board script from glob [...] 
 
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
	BAYES_HAM(-3.00)[99.99%];
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
X-Rspamd-Queue-Id: 5439C20128B
X-Stat-Signature: enizy4c4yeqg9yt34j958iruzoiseo4w
X-Rspamd-Action: no action

On 2026-11-13 08:51, Ahmad Fatoum wrote:
> Hi,
>=20
> On 10/30/26 3:13 PM, Sascha Hauer wrote:
> > devboot is a shell script that brings up the network, sources a per-use=
r,
> > per-board script from global.net.fetchdir and translates the variables =
it
> > sets into boot -o options. Being a script on top of the boot command, it
> > has a hard time integrating with it: The kernel command line fragments
> > the devboot script sets have to be put into the linux.bootargs.devboot.
> > namespace to be removed afterwards,
>=20
> That's resolved by your scoped/stashed/banked globalvar series now,
> isn't it?

Yes, resolved already, this doesn't count for the motivation of this
patch anymore.

>=20
> > and the devboot boot target needed
> > to boot with devboot by default takes only a single boot target and boot
> > options.
>=20
> So instead of:
>=20
> boot -D mmc1 mmc2
>=20
> one had to do
>=20
> boot devboot@mmc1 devboot@mmc2
>=20
> I don't consider that so bad.

It's not so much about the "boot -D mmc1 mmc2" vs. "boot devboot@mmc1
devboot@mmc2", but more that there are too many ways to archieve the
same thing:

- plain "boot" with global.boot.default=3D"devboot@mmc1"
- plain "devboot" with global.boot.default=3D"mmc1"
- plain "devboot" with global.boot.default=3D"devboot@mmc1"

The last line works, but sources the devboot script twice. There was no
way to do a devboot by default for the existing global.boot.default=3D"mmc1"
entry. A plain "devboot" without arguments work, but making it the
default required us to use the "boot" command along with altering
global.boot.default

I think using a flag (-D, global.boot.devboot) makes usage more
consistent.

> > @@ -163,6 +173,16 @@ static int do_boot(int argc, char *argv[])
> >  		next =3D next_word;
> >  	}
> > =20
> > +	/* like -o, devboot doesn't apply to entries booted from the menu */
> > +	if (do_devboot && !do_list && !do_menu) {
> > +		devboot =3D devboot_start(&overrides);
> > +		if (IS_ERR(devboot)) {
> > +			ret =3D PTR_ERR(devboot);
> > +			free(freep);
> > +			goto out_overrides;
> > +		}
> > +	}
>=20
> That sounds like a bug with the devboot implementation. If you don't
> want to fix it, I think this should have the command fail instead of
> silently ignoring -D.

Right. This should be fixed rather than copying the behaviour to the new
implementation.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



