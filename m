Delivery-date: Thu, 20 Aug 2026 09:18:42 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwx2v-0059Hj-15
	for lore@lore.pengutronix.de;
	Thu, 20 Aug 2026 09:18:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E3BBE201B9A
	for <lore@pengutronix.de>; Thu, 20 Aug 2026 09:18:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jegMhl8W;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qgVnfin0nESPbmjCYaeId3nukTLy85lcy/F8CXsND+Q=; b=jegMhl8WbCM7GNKEddXdmz3lmb
	gbXNHtHSBNK7be3XVXVOQKi+ZspEpDNf2fh98SXpMqDNKBPGWdip3HaT9gqyhLTsPDIjrs1RZIHY/
	riZPnhu6PjGk32VYSjoylGfwG1U8Pe7RS8ImuAle0KxgXMHoE+D8xOKzO9oyu15n53e2DuW1aXp68
	k+vXV2VuQ2Rct1+uf0BqrRN3LsU6DT0oXN6fWa2LXyfcrwNiBXaoJudaF/Iz4cNUKB4uQ9QPkdJnz
	Rcy0c8nK5iM5F9CyKZjBmrKt05cw1VMDaDHcS7F+smGSEmXRemhn5JHfHHcAMwp1OwE5+19MM8fTn
	PqScHxJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwx2c-0000000B1lK-2qMU;
	Thu, 20 Aug 2026 07:18:22 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwx2Z-0000000B1ku-2OnU
	for barebox@lists.infradead.org;
	Thu, 20 Aug 2026 07:18:21 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8BF8920190E;
	Thu, 20 Aug 2026 09:18:17 +0200 (CEST)
Message-ID: <f927f411-61f6-4556-946c-4a34a47e2f6e@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 0/2] PBL: constructor fixes
To: "Stefan Kerkmann" <s.kerkmann@pengutronix.de>
In-Reply-To: <dbabb0d8-03a9-452a-b5df-a38cf389b180@pengutronix.de>
References: <20260819-next-v1-0-c1a1a8b44d02@pengutronix.de>
 <f5d7e406-0e95-4da0-a0e2-208a4bddfdc4@pengutronix.de>
 <0c26bfcc-deb4-400c-aa46-e20f839d4194@pengutronix.de>
 <dbabb0d8-03a9-452a-b5df-a38cf389b180@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 20 Aug 2026 07:18:17 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_001819_767151_7E295AD8 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-20 09:14, Stefan Kerkmann wrote: > Hi, > > On 8/19/26
    17:01, Sascha Hauer wrote: > > On 2026-08-19 16:16, Ahmad Fatoum wrote: >
    >> Hi, > >> > >> On 8/19/26 4:12 PM, Stefan Kerkmann wrote: > [...] 
 
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJBUkVCT1g=?= <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: ghp4rwatrkj5pzsj4tkacyt68iwymbif
X-Spamd-Result: default: False [-3.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	CC_EXCESS_BASE64(1.50)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
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
X-Rspamd-Queue-Id: E3BBE201B9A

On 2026-08-20 09:14, Stefan Kerkmann wrote:
> Hi,
>=20
> On 8/19/26 17:01, Sascha Hauer wrote:
> > On 2026-08-19 16:16, Ahmad Fatoum wrote:
> >> Hi,
> >>
> >> On 8/19/26 4:12 PM, Stefan Kerkmann wrote:
> >>> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> >>> ---
> >>> Stefan Kerkmann (2):
> >>>       ARM/ARM64/RISC-V: pbl: guard constructor support
> >>>       ARM64: setup_c: abi safe link register storage
> >>
> >> if these are applied after what's in next, we would have intermittent
> >> breakage when doing a bisect right?
> >>
> >> I would suggest either turning these into fixups or just resend the
> >> whole series.
> >=20
> > I just squashed them into the original commit. But next time, yes, you
> > can send --fixup patches for patches in next.
> >=20
>=20
> Thanks, I missed the bisectability requirement for this series. For the s=
etup_c
> patch I actually send an amend patch to include it in the original series=
 with:
>=20
> git send-email HEAD^ --to=3D"Sascha Hauer <s.hauer@pengutronix.de>" --to=
=3D"\"open
> list:BAREBOX\" <barebox@lists.infradead.org>" --cc=3D"Stefan Kerkmann
> <s.kerkmann@pengutronix.de>"
> --in-reply-to=3D"<20260817-feature-pbl-get-time-ns-v3-2-9874c1438855@peng=
utronix.de>"
>=20
> But it maybe wasn't picked up by b4 at the time the original merge happen=
ed?

It picked it up.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



