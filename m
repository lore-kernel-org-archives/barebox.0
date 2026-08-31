Delivery-date: Mon, 31 Aug 2026 11:12:55 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x0y4U-009Drb-2U
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 11:12:55 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 26F92201EB9
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 11:12:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=XyjQmQ9q;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LEGBfAV+PReAlrVVKWagVcGqNjUQenDAe/l2+ytSTtg=; b=XyjQmQ9q9pnU/AyfTtZ9nGQX6P
	beRIWIFl86umlqNF/UDLyjjZvuEbT619OpHjptILGlOcC0nwVMifjwD9gY6LUT7OH+5ofSmslK7Wl
	dBXkkVS9Z5ABc0W4M6crmdZWbXLBeDhS5w23OUGgp/nNTB+Wx7nYKkDFzCsBziYIYyQ/H8o1G6mOk
	FkHASWd5YIf2pUG7Jnx+4XSyP0wkYX01BhIX7aIfqnCvTfqUzOpm7Pxhoy73tFKh3dI8MU3AbN3fk
	4j5zFMYMRl8Qow3qfJImocgOcRhvVUfsNVrwfwxXWPaT8/eKOBWWuzXrOivTt9LBBzaHeNLwJ/ZFA
	q8ATW9Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0y3F-00000008zJW-3z0E;
	Mon, 31 Aug 2026 09:11:37 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0y3C-00000008zID-1DqF
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 09:11:36 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 70AFB201EB9;
	Mon, 31 Aug 2026 11:11:32 +0200 (CEST)
Message-ID: <84c85354-aaab-4800-b193-49f28e4c363c@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [RFC next 0/2] dm: lvm: Initial Logical Volume Management
 support
To: "Tobias Waldekranz" <tobias@waldekranz.com>
In-Reply-To: <87ld9mofce.fsf@waldekranz.com>
References: <20260824183203.3759144-1-tobias@waldekranz.com>
 <d66fbfb2-135d-439b-b53e-97f7ea21459d@pengutronix.de>
 <87ld9mofce.fsf@waldekranz.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 31 Aug 2026 09:11:31 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_021134_475648_E08427CA 
X-CRM114-Status: GOOD (  23.73  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-31 10:37, Tobias Waldekranz wrote: > > Hi Sascha,
    > > Thanks for taking the time to look at this! > > On fre, aug 28, 2026
   at 14:10, "Sascha Hauer" <s.hauer@pengutronix.de> wrote: > > Hi To [...] 
 
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Server: mx1
X-Stat-Signature: mkxztxcbyw8qwjj68yb44i88di5nnbdr
X-Rspamd-Queue-Id: 26F92201EB9
X-Spamd-Result: default: False [-55.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:tobias@waldekranz.com,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

On 2026-08-31 10:37, Tobias Waldekranz wrote:
>=20
> Hi Sascha,
>=20
> Thanks for taking the time to look at this!
>=20
> On fre, aug 28, 2026 at 14:10, "Sascha Hauer" <s.hauer@pengutronix.de> wr=
ote:
> > Hi Tobias,
> >
> > On 2026-08-24 18:31, Tobias Waldekranz wrote:
> >> [...]
> >> If the overall structure is OK with the community and maintainers,
> >> then the biggest remaining issue is testing. I have been surprised to
> >> learn that the standard LVM tools will not operate on disk images
> >> (without loopback mounting). Nor does there seem to be any other tools
> >> out there that allows you to provision PVs/VGs/LVs without having them
> >> "live" and attached to the host system. If there are any suggestions
> >> here they would be very welcome!
> >
> > Would guestfish be an option? That allows you to call pvcreate/vgcreate
> > on disk images.
>=20
> Thank you, I had completely forgotten about that! I definitely think
> that it would solve the problem.
>=20
> You would be okay with bringing that dependency into the barebox-ci
> container then? Do we foresee any issues with access to /dev/kvm or
> things like that from inside there? I guess it would still work in TCG
> mode, but might be slow?

It should work generally, but yes, it will be slow. I guess as long as
we only use it to create physical volumes and volume groups it should be
fine, but we should refrain from making excess data accesses like
writing verifying big images through the software emulation.

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



