Delivery-date: Wed, 02 Sep 2026 10:54:40 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1gjw-009wyg-0B
	for lore@lore.pengutronix.de;
	Wed, 02 Sep 2026 10:54:40 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8C24D201ED7
	for <lore@pengutronix.de>; Wed, 02 Sep 2026 10:54:40 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ddF3HZaA;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HNleJUEvNxnVypNeDCHayG6XdDuOM82E/ewUswUFtso=; b=ddF3HZaA5pPmNBhauG+ikyYubQ
	X7WKH6XVEJy9guzRXEeOSNbIuoVGs0tjr97fqg84c5eERXhBSbfSIcCBomKPdIl2iBwuwWS1O67Vn
	gxbbVf42XBMGr64TQmOLTXU8Ykz4rn9IdFxnbFMtNqn5x8d5LbHr2EnsmFBvZHA0sTuvMFT0h3Acg
	zCZ+/XMR22Em+4mwVyuoFuOStYkPUI2TCcmRTIurmfusA8T8r8LlsrAFlL/BD3dkItNzftGvbR8FT
	LaREqHDsZ278vpjQjqju/WNPeNeKG/DKpd1m3hmwgPxCsl5fgw7GzUilUCheh1EgH5KcpzfLauyb8
	5XhFlg9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1giq-0000000E9aa-0Cnp;
	Wed, 02 Sep 2026 08:53:32 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gim-0000000E9a0-0lk7
	for barebox@lists.infradead.org;
	Wed, 02 Sep 2026 08:53:30 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2A52420177F;
	Wed, 02 Sep 2026 10:53:26 +0200 (CEST)
Message-ID: <1ac8589a-05d1-45b5-9512-b8d28e206536@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] defaultenv: don't pass environment path to zero env
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <27d45798-6876-4e70-b2e0-9ddcf3f9a732@pengutronix.de>
References: <20260901122834.3004512-1-a.fatoum@pengutronix.de>
 <178833859741.3676557.11754066543148243970.b4-ty@pengutronix.de>
 <27d45798-6876-4e70-b2e0-9ddcf3f9a732@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 02 Sep 2026 08:53:25 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_015328_369556_876DAAB4 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-09-02 10:45, Ahmad Fatoum wrote: > Hello Sascha, >
    > On 9/2/26 10:43 AM, Sascha Hauer wrote: > > > > On Tue, 01 Sep 2026 14:28:31
    +0200, Ahmad Fatoum wrote: > >> bareboxenv -z sets ENVFS_FLAGS [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: barebox@lists.infradead.org, Fabian
 Pflug <f.pflug@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Queue-Id: 8C24D201ED7
X-Spamd-Result: default: False [-55.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 6cnsz5wnai5gzsdk531z8y91on4zz4e7
X-Rspamd-Server: mx1

On 2026-09-02 10:45, Ahmad Fatoum wrote:
> Hello Sascha,
>=20
> On 9/2/26 10:43 AM, Sascha Hauer wrote:
> >=20
> > On Tue, 01 Sep 2026 14:28:31 +0200, Ahmad Fatoum wrote:
> >> bareboxenv -z sets ENVFS_FLAGS_FORCE_BUILT_IN, which makes envfs_save()
> >> emit a bare header and never look at its directory argument. Passing
> >> CONFIG_DEFAULT_ENVIRONMENT_PATH there was pointless, but harmless until
> >> the Kconfig sync made auto.conf no longer quote string options:
> >> The result is that the quotes became part of the value.
> >>
> >> This is triggered by OpenEmbedded's barebox.bbclass for example, which
> >> overrides the option on the make command line in the old, quoted form:
> >>
> >> [...]
> >=20
> > Applied, thanks!
> >=20
> > [1/1] defaultenv: don't pass environment path to zero env
> >       https://git.pengutronix.de/cgit/barebox/commit/?id=3Dbe574e455b3a=
 (link may not be stable)
>=20
> Please also backport to master.

Applied to master in the first place already.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



