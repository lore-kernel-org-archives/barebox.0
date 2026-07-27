Delivery-date: Mon, 27 Jul 2026 16:10:56 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1woM2h-003SNq-1p
	for lore@lore.pengutronix.de;
	Mon, 27 Jul 2026 16:10:56 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D7810202057
	for <lore@pengutronix.de>; Mon, 27 Jul 2026 16:10:51 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0IVReq+i;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=UeiiuSFVbvMqu9bWhbVRdJOQYkBgMuk6k8K/bN0N96Y=; b=0IVReq+iYhn7G50Fze0shPxjre
	CEevn8TsBGv2C1svLywPgUgsATJFVO9519qnd6wB+CZjQjkq4j25iRQJvpa11QftPATMQfHnoZfaY
	Jdu6hfB89jl3sGSVM05UP97OheXXivgNzN4kAX/+KHi4Rzae3lbgBTuQbK/s6MImHZwWGjLnew68J
	epRYp32PVuUuLs4WMWXrBVnGtAz6ZEERNaanUHzJHvUSm9XADLMBjaUmxR3IVewzWWyvCBSwNq+x8
	5YOwZJ293/rfVeY3fRp6AarwnrIHmoRf5oUZlsolMeQqjKpFR6XL3r1P+kCdgWTtPQFN+tYSVznf4
	gbOLNBBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woM1F-00000002wPo-13l5;
	Mon, 27 Jul 2026 14:09:25 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woM1B-00000002wPG-3FKX
	for barebox@lists.infradead.org;
	Mon, 27 Jul 2026 14:09:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 89FF1202054;
	Mon, 27 Jul 2026 16:09:15 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1woM15-001ZH8-1X;
	Mon, 27 Jul 2026 16:09:15 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1woM15-00000007Iv4-1a92;
	Mon, 27 Jul 2026 16:09:15 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 16/19] usb: ehci: add Marvell EHCI host controller
 driver
To: "Luca Lauro via B4 Relay" <devnull+famlauro93l.gmail.com@kernel.org>
In-Reply-To: <20260723-rn102-rn104-series-v1-16-7698d25df866@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Jul 2026 14:09:13 +0000
Message-Id: <E1woM15-00000007Iv4-1a92@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_070921_968381_FF12A0A7 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-07-23 15:57, Luca Lauro via B4 Relay wrote: > From:
    Luca Lauro <famlauro93l@gmail.com> > > --- > drivers/usb/host/Kconfig | 7
    ++ > drivers/usb/host/Makefile | 13 +-- > drivers/usb/host/ehci-ma [...] 
 
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
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+famlauro93l.gmail.com@kernel.org,m:barebox@lists.infradead.org,m:famlauro93l@gmail.com,m:devnull@kernel.org,s:lore@pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
X-Rspamd-Queue-Id: D7810202057
X-Rspamd-Server: mx1
X-Stat-Signature: x9txyb9ne3qf3d69a67idsar3zifjhqc

On 2026-07-23 15:57, Luca Lauro via B4 Relay wrote:
> From: Luca Lauro <famlauro93l@gmail.com>
>=20
> ---
>  drivers/usb/host/Kconfig        |   7 ++
>  drivers/usb/host/Makefile       |  13 +--
>  drivers/usb/host/ehci-marvell.c | 229 ++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 243 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
> index 58f276cdb4..21bf876d69 100644
> --- a/drivers/usb/host/Kconfig
> +++ b/drivers/usb/host/Kconfig
> @@ -22,6 +22,13 @@ config USB_EHCI_ZYNQ
>  	help
>  	  Enable support for Zynq on-chip EHCI USB controller
> =20
> +config USB_EHCI_MARVELL
> +    bool "Marvell USB EHCI driver"
> +	depends on ARCH_MVEBU
> +	depends on USB_EHCI
> +    help
> +      Enable support for Marvell USB EHCI controller
> +
>  config USB_OHCI
>  	bool "OHCI driver"
>  	depends on !MMU && HAS_DMA
> diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
> index cbddfbe923..932581d691 100644
> --- a/drivers/usb/host/Makefile
> +++ b/drivers/usb/host/Makefile
> @@ -1,8 +1,9 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> -obj-$(CONFIG_USB_EHCI)		+=3D ehci-hcd.o
> -obj-$(CONFIG_USB_EHCI_OMAP)	+=3D ehci-omap.o
> +obj-$(CONFIG_USB_EHCI)			+=3D ehci-hcd.o
> +obj-$(CONFIG_USB_EHCI_OMAP)		+=3D ehci-omap.o
>  obj-$(CONFIG_USB_EHCI_ATMEL)	+=3D ehci-atmel.o
> -obj-$(CONFIG_USB_EHCI_ZYNQ)	+=3D ehci-zynq.o
> -obj-$(CONFIG_USB_OHCI)		+=3D ohci-hcd.o
> -obj-$(CONFIG_USB_OHCI_AT91)	+=3D ohci-at91.o
> -obj-$(CONFIG_USB_XHCI)		+=3D xhci.o xhci-mem.o xhci-ring.o
> +obj-$(CONFIG_USB_EHCI_ZYNQ)		+=3D ehci-zynq.o
> +obj-$(CONFIG_USB_EHCI_MARVELL) 	+=3D ehci-marvell.o
> +obj-$(CONFIG_USB_OHCI)			+=3D ohci-hcd.o
> +obj-$(CONFIG_USB_OHCI_AT91)		+=3D ohci-at91.o
> +obj-$(CONFIG_USB_XHCI)			+=3D xhci.o xhci-mem.o xhci-ring.o
> diff --git a/drivers/usb/host/ehci-marvell.c b/drivers/usb/host/ehci-marv=
ell.c
> new file mode 100644
> index 0000000000..8accfd697d
> --- /dev/null
> +++ b/drivers/usb/host/ehci-marvell.c
> @@ -0,0 +1,229 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Marvell Orion / Kirkwood / Armada EHCI host for barebox
> + *
> + * Porting basato su ehci-marvell.c di U-Boot moderno,
> + * adattato al modello ehci_register() di barebox.
> + */

Per favore usa l'inglese nel codice ;)

> +static int marvell_ehci_probe(struct device *dev)
> +{
> +    struct marvell_ehci *priv;
> +    struct resource *iores;
> +    struct ehci_data data;
> +    void __iomem *base;
> +    struct ehci_host *ehci;
> +
> +    priv =3D xzalloc(sizeof(*priv));
> +    priv->dev =3D dev;
> +    dev->priv =3D priv;
> +
> +    iores =3D dev_request_mem_resource(dev, 0);
> +    if (IS_ERR(iores))
> +        return PTR_ERR(iores);
> +
> +    base =3D IOMEM(iores->start);
> +    priv->base =3D base;
> +
> +    memset(&data, 0, sizeof(data));

Easier done with

        struct ehci_data data =3D {};

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


