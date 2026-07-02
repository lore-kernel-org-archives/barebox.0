Delivery-date: Thu, 02 Jul 2026 09:55:29 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfCGf-00CBco-0p
	for lore@lore.pengutronix.de;
	Thu, 02 Jul 2026 09:55:29 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1499B201223
	for <lore@pengutronix.de>; Thu, 02 Jul 2026 09:55:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KDSGCbSI;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=dQWfznLCcoRygW0mEfFVMSxHRJIlwMMjRVLjPAnR34c=; b=KDSGCbSIfNikfkEQZ/CWZdHCCL
	keeuAkitQRmb0JH2btt4kls0APoyAZGdl336+TOkKh/SiMSzmUs3oLPVUhMocgJLThPRGvcSVwyTt
	bjfaDJkCou/Oyuu6m3wZPRQJV6wL+EOL8gSv8j640nya3zY0Zoj/FZ+/O+RL8NGVRX6Z4DJg3tbNw
	zZBn6Ngxf8PkxkE8AYy8rL2GPE5CFcc1BvI7nRSFNZavPIerJsSPqOj2Ocuc9rjJz7SqMmOmpMI6X
	EnNOp4NSv+pdVNhf89LZcF2Bs8XKt4bkwJlnV2gK2RWcGnah9MGxaaZWiCj2VrepwYfmQ7lmZbnB8
	yxmhUX6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfCFc-00000003mb1-1sAL;
	Thu, 02 Jul 2026 07:54:24 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfCFZ-00000003mZl-1SV0
	for barebox@lists.infradead.org;
	Thu, 02 Jul 2026 07:54:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 31B7020111C;
	Thu, 02 Jul 2026 09:54:18 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wfCFW-005i6n-0N;
	Thu, 02 Jul 2026 09:54:18 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wfCFW-0000000DErn-04lH;
	Thu, 02 Jul 2026 09:54:18 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v1 7/7] mci: imx-esdhc: support DMA in the i.MX8M PBL
 eMMC loader
To: "SCHNEIDER Johannes" <johannes.schneider@leica-geosystems.com>
In-Reply-To: <AM0PR06MB414843CC66B8E2F25AF4D460BCF72@AM0PR06MB4148.eurprd06.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 07:54:17 +0000
Message-Id: <E1wfCFW-0000000DErn-04lH@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_005421_541355_A9277523 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-06-30 09:22, SCHNEIDER Johannes wrote: > Hoi Sascha,
    > > > > On 2026-06-27 19:43, Johannes Schneider wrote: > > > The PBL eMMC
    loader was hardwired to PIO via esdhc_use_pio_mode(): IN_PBL > > [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Queue-Id: 1499B201223
X-Spamd-Result: default: False [-4.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:johannes.schneider@leica-geosystems.com,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: zi6kuhgxpm7nzob5xn39d3aja3ftzhqg
X-Rspamd-Server: mx1

On 2026-06-30 09:22, SCHNEIDER Johannes wrote:
> Hoi Sascha,
>=20
>=20
> > On 2026-06-27 19:43, Johannes Schneider wrote:
> > > The PBL eMMC loader was hardwired to PIO via esdhc_use_pio_mode(): IN=
_PBL
> > > forced PIO unconditionally. PIO is slow -- on an i.MX8MM board loadin=
g the
> > > ~1.6 MB next stage took ~559 ms; SDMA/ADMA2 do it in ~21 ms.
> >
> > For proper DMA support you'll need memory synchronization in form of dm=
a_map_*
> > or dma_sync_* helpers which we do not have in PBL. Without them it won't
> > work with MMU enabled.
>=20
> Noted. So since the MMU is still left as it is =3D off were still good wt=
ih the
> current sdma/adma implementation. But maybe worth a comment in the code/c=
ommit?
>=20
> > Have you tried enabling the MMU in the mean time? This
> > should give you decent performance even with PIO.
> >
> > Sascha
> >
>=20
> Thanks for the hint/idea!
> I've let the AI draft a PIO+MMU-on change and ran a round of measurements,
> (Caveat: sample size is one) there is some gain - but we get more with SD=
MA or ADMA
> And interestingly "the same" with the later two.:
>=20
>  Phase                  PIO   PIO+MMU   SDMA   ADMA2
> --------------------------------------------------------------------
>  BootROM                  1       1       1        2
>  PBL-init                 3       3       3        3
>  DDR-training           265     265     262      269
>  PBL-load (total)       884     413     257      258
>    PBL-pre-load         165     170     166      167
>    load_bl33            713     241      86       85
>    PBL-post-load          5       1       5        5
>  BL31-early             114     114     114      114
>  BL31-platform           16      15      15       15
>  BL31-runtime            98      98      98       98
> --------------------------------------------------------------------
>  time-to-barebox       1393     921     763      770
>=20
>=20
> If you want i can brush up that PIO+MMU code and send it out too.

Let's concentrate on the MMU stuff first as that's something you want to
have anyway for faster sha256 support.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


