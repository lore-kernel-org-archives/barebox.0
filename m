Delivery-date: Mon, 27 Jul 2026 16:14:12 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1woM5r-003SVW-1T
	for lore@lore.pengutronix.de;
	Mon, 27 Jul 2026 16:14:12 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 707BB202228
	for <lore@pengutronix.de>; Mon, 27 Jul 2026 16:14:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MsOz2S2y;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=WeU6Lylw3dhWofZ9wmAoJDZn9V6git4Db69533i1Q8o=; b=MsOz2S2yvreEJxaeBx90UQOU0y
	dN1DMxuD4l8ZzV67AxANxLoIDssZfqY9T3COYUMM+OHWQiAczBtZIxjqUq4gPnatDalHcS/7Rtoqu
	F6lJCQsnE2pKJHps9Zk9kd6FeK+DPFKONh5rE21HfauhNe8d+I0S3kH1QtGwrvTv3adQSFBxfxpms
	u7uXrOCC4KBRDQhI7x40vCC7ldIgUUve7q6lDzC8H3cTVZB6XyDTtaTcaaQooj204wKAhiyxisNkv
	NhsbGej4QmUDgWavpGTVn42lyMsbpJ5XOlWbOAHUBCs3x7YTx7JAmFNpDQPkxL+301Gv79vBh/t7B
	bIpVFWFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woM4Q-00000002wt9-3cME;
	Mon, 27 Jul 2026 14:12:42 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woM4N-00000002wrW-1GhH
	for barebox@lists.infradead.org;
	Mon, 27 Jul 2026 14:12:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6F90D20226F;
	Mon, 27 Jul 2026 16:12:33 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1woM4H-001ZHW-1C;
	Mon, 27 Jul 2026 16:12:33 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1woM4H-00000007Iwz-188Y;
	Mon, 27 Jul 2026 16:12:33 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 17/19] usb: ehci: minor fixes for Marvell compatibility
To: "Luca Lauro via B4 Relay" <devnull+famlauro93l.gmail.com@kernel.org>
In-Reply-To: <20260723-rn102-rn104-series-v1-17-7698d25df866@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Jul 2026 14:12:33 +0000
Message-Id: <E1woM4H-00000007Iwz-188Y@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_071239_491871_1219A68D 
X-CRM114-Status: GOOD (  22.36  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-07-23 15:57, Luca Lauro via B4 Relay wrote: > From:
    Luca Lauro <famlauro93l@gmail.com> > > --- > drivers/usb/host/ehci-hcd.c
   | 22 +++++++++++ > 1 file changed, 11 insertions(+), 11 [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>, Luca Lauro <famlauro93l@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-2.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	CC_EXCESS_BASE64(1.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+famlauro93l.gmail.com@kernel.org,m:barebox@lists.infradead.org,m:famlauro93l@gmail.com,m:devnull@kernel.org,s:lore@pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[famlauro93l.gmail.com];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 707BB202228
X-Rspamd-Server: mx1
X-Stat-Signature: x9535nt3j4xa7pcdo4jhm16i4z1h8sx8

On 2026-07-23 15:57, Luca Lauro via B4 Relay wrote:
> From: Luca Lauro <famlauro93l@gmail.com>
>=20
> ---
>  drivers/usb/host/ehci-hcd.c | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index 51b9e52a4f..b72436b312 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> @@ -857,8 +857,6 @@ static int ehci_init(struct usb_host *host)
>  	struct QH *periodic;
>  	int i;
> =20
> -	ehci_halt(ehci);
> -
>  	/* EHCI spec section 4.1 */
>  	if (ehci_reset(ehci) !=3D 0)
>  		return -1;
> @@ -870,16 +868,16 @@ static int ehci_init(struct usb_host *host)
>  	}
> =20
>  	ehci->qh_list[0].qh_link =3D cpu_to_hc32(ehci_qh_dma(ehci, &ehci->qh_li=
st[1]) |
> -					       QH_LINK_TYPE_QH);
> +									QH_LINK_TYPE_QH);

Please drop the whitespace-only changes in this patch.

>From what is left: It deserves a better description why the changes are
necessary. We can always read *what* is being done from the patch, but
the most important thing for future readers is *why* it has been done.

Sascha

>  	ehci->qh_list[0].qh_endpt1 =3D cpu_to_hc32(QH_ENDPT1_H(1) |
> -						 QH_ENDPT1_EPS(USB_SPEED_HIGH));
> +									QH_ENDPT1_EPS(USB_SPEED_HIGH));
>  	ehci->qh_list[0].qh_curtd =3D cpu_to_hc32(QT_NEXT_TERMINATE);
>  	ehci->qh_list[0].qt_next =3D cpu_to_hc32(QT_NEXT_TERMINATE);
>  	ehci->qh_list[0].qt_altnext =3D cpu_to_hc32(QT_NEXT_TERMINATE);
>  	ehci->qh_list[0].qt_token =3D cpu_to_hc32(QT_TOKEN_STATUS_HALTED);
> =20
>  	ehci->qh_list[1].qh_link =3D cpu_to_hc32(ehci_qh_dma(ehci,
> -							   &ehci->qh_list[0]) |
> +									&ehci->qh_list[0]) |
>  					       QH_LINK_TYPE_QH);
>  	ehci->qh_list[1].qt_altnext =3D cpu_to_hc32(QT_NEXT_TERMINATE);
> =20
> @@ -897,6 +895,8 @@ static int ehci_init(struct usb_host *host)
>  	periodic->qt_next =3D cpu_to_hc32(QT_NEXT_TERMINATE);
>  	periodic->qt_altnext =3D cpu_to_hc32(QT_NEXT_TERMINATE);
> =20
> +	ehci->periodic_queue_dma =3D ehci_qh_dma(ehci, periodic);
> +
>  	/*
>  	 * Step 2: Setup frame-list: Every microframe, USB tries the same list.
>  	 *         In particular, device specifications on polling frequency
> @@ -906,23 +906,23 @@ static int ehci_init(struct usb_host *host)
>  	 *         Split Transactions will be spread across microframes using
>  	 *         S-mask and C-mask.
>  	 */
> -	if (ehci->periodic_list =3D=3D NULL)
> +	if (ehci->periodic_list =3D=3D NULL) {
> +		ehci->periodic_list =3D dma_alloc_coherent(DMA_DEVICE_BROKEN, 1024 * 4,
> +								&ehci->periodic_list_dma);
>  		/*
>  		 * FIXME: this memory chunk have to be 4k aligned AND
>  		 * reside in coherent memory. Current implementation of
>  		 * dma_alloc_coherent() allocates PAGE_SIZE aligned memory chunks.
>  		 * PAGE_SIZE less then 4k will break this code.
>  		 */
> -		ehci->periodic_list =3D dma_alloc_coherent(DMA_DEVICE_BROKEN, 1024 * 4,
> -						&ehci->periodic_list_dma);
>  	for (i =3D 0; i < 1024; i++) {
> -		ehci->periodic_list[i] =3D cpu_to_hc32((unsigned long)ehci->periodic_q=
ueue_dma
> -						| QH_LINK_TYPE_QH);
> +		ehci->periodic_list[i] =3D cpu_to_hc32(ehci->periodic_queue_dma
> +									| QH_LINK_TYPE_QH);
>  	}
> =20
>  	/* Set periodic list base address */
>  	ehci_writel(&ehci->hcor->or_periodiclistbase,
> -		    (uint32_t)ehci->periodic_list_dma);
> +		    ehci->periodic_list_dma);
> =20
>  	reg =3D ehci_readl(&ehci->hccr->cr_hcsparams);
>  	descriptor.hub.bNbrPorts =3D HCS_N_PORTS(reg);
>=20
> --=20
> 2.47.3
>=20
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


