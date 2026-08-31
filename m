Delivery-date: Mon, 31 Aug 2026 13:05:03 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x0zp1-009FRL-04
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 13:05:03 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9E989201ED1
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 13:05:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GaKx64J3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tgFmfsa+tMve2keTowr+D3JOX8qyPymVABqgVi308kY=; b=GaKx64J3fW0GdCf8ITtG8/SYMz
	6Chb33FkwYM2zOlV8xEjRz2tE4wwT+23w7U3KtXR49HKguawhrJkPQiIsd2x27WMEFFtobdPPsnEJ
	1NhqcyYadQZKw5LUBLlNxnF/eEbNnWIpXl6dqrp+VgJrcqGDP/lcIsi6+IGiO8KfOCUR8ePFyLAws
	lcaVYNaYEeEJRMnKcmtvYcWTIwDFoT7S5lkQvABYNVVkxneBFGSHmXTktyzpBbrL5RJa6fRa6Galw
	QuTXWNucNP1kme26lOF3b9Ge0rr4Isk3e52U6ThOb4yK4HS8X+qFSYzUYOW8RdFMJ8+V4w9fCNJvn
	FoCmwM7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0zoZ-000000099L2-3fCa;
	Mon, 31 Aug 2026 11:04:35 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0zoT-000000099Jl-2vwo
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 11:04:35 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2D792201922;
	Mon, 31 Aug 2026 13:04:27 +0200 (CEST)
Message-ID: <af5454bb-e9d0-4f75-af99-e0f95c4a1ecb@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] usb: storage: make disk cdev name configurable via
 Kconfig
To: chalianis1@gmail.com
In-Reply-To: <178793449978.1088451.1834449601249374666.b4-reply@b4>
References: <E1weXmP-00000008Ed1-0ycK@pty.whiteo.stw.pengutronix.de>
 <178783210670.649267.1211412247901753676.b4-reply@b4>
 <dbb6842d-2ab6-4aca-bd2f-22777c0d5f99@pengutronix.de>
 <178793449978.1088451.1834449601249374666.b4-reply@b4>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 31 Aug 2026 11:04:26 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_040430_891674_7E7FD1F5 
X-CRM114-Status: GOOD (  24.56  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-28 18:28, chalianis1 wrote: > On 2026-08-28 14:39
    +0000, Sascha Hauer wrote: > > On 2026-08-27 14:01, chalianis1 wrote: > >
    > On 2026-06-30 12:41 +0000, Sascha Hauer wrote: > > > > Hi, > > [...] 
 
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
Cc: chalianis1@gmail.com, barebox@lists.infradead.org, Anis
 Chali <anis.chali@ro-main.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Server: mx1
X-Stat-Signature: q6w48j5i41dw1jn8xyd1cq5nfq8x47we
X-Rspamd-Queue-Id: 9E989201ED1
X-Spamd-Result: default: False [-55.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:chalianis1@gmail.com,m:barebox@lists.infradead.org,m:anis.chali@ro-main.com,s:lore@pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FREEMAIL_CC(0.00)[gmail.com,lists.infradead.org,ro-main.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

On 2026-08-28 18:28, chalianis1 wrote:
> On 2026-08-28 14:39 +0000, Sascha Hauer wrote:
> > On 2026-08-27 14:01, chalianis1 wrote:
> > > On 2026-06-30 12:41 +0000, Sascha Hauer wrote:
> > > > Hi,
> > > >=20
> > > > On 2026-06-23 10:26, chalianis1 wrote:
> > > > > From: Anis Chali <anis.chali@ro-main.com>
> > > > >=20
> > > > > Add USBDISK_NAME string option to allow customizing the USB stora=
ge
> > > > > device name, defaulting to "disk" to preserve existing behaviour.
> > > >=20
> > > > I just sent a patch which registers USB storage devices with usbdis=
kx
> > > > which doesn't require compile time changes. I hope that suits your =
needs
> > > > as well.
> > > >=20
> > > > Sascha
> > > >
> > > Hi,
> > >=20
> > > In my side I am migrating to master so removed my patch for this and
> > > I noticed that alias is not mounted to be used as /mnt/usbdiskX, I am
> > > just asking to know if it the expected behaviour in which case I will
> > > for an other way to get it mounted as /mnt/usbdisk0
> >=20
> > But it still is automounted via /mnt/disk0, right? I just had a look
> > into it and yes, my patch doesn't add the automount for the aliases.
> Yes exact it is mounted as /mnt/diskX
> > I'll look into it next week. I hope we get away to just create a
> > symbolic link from the alias to the real cdev, i.e. from /mnt/usbdisk0 =
to
> > /mnt/disk0. That would have to be done in
> > cdev_create_default_automount().
> Thank you

See https://lore.barebox.org/barebox/20260831-usbdisk-aliases-v1-0-0a2e40a3=
5f3d@pengutronix.de/T/#t

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



