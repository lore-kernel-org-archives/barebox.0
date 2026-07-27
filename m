Delivery-date: Mon, 27 Jul 2026 15:33:37 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1woLSa-003ReD-1P
	for lore@lore.pengutronix.de;
	Mon, 27 Jul 2026 15:33:37 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B8E7920192C
	for <lore@pengutronix.de>; Mon, 27 Jul 2026 15:33:32 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Qu3jf9Rc;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=oWZzedDGQNL0Cq1tACmYd+byNRYbW/azrqHQipmd2sE=; b=Qu3jf9RchpWdlHuklfyTXZs/YN
	JyC/mXlFSY8InUYyKrPhUw1mDNHxCKWOWvVrLfjydp5o+4at43BNwrUJ171S2/40iJMHz5fhzPtV9
	WU+KrlUchAU1LY1qqbLzN+m9O+T9hD3oP3FV8Rt3TCJZ2AQy2iIjUrDzeitgWf7Ar49IlToRl8/jE
	weaqTV2uRzY+xfbjy3F/xO8yIzpF5qGnmg34oIXDdK03+AvxSvDzG553hDMrjGC16qGu2Xg91yKQj
	0uaIuFvjSd9vxT26BvMfbXHDxEeREcxQlYIz4YPFhkGibYz6inJX2M+LXDuYAQH1DK4RiPTkmQ2Lv
	FzWaJaDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woLRE-00000002rkS-2YpL;
	Mon, 27 Jul 2026 13:32:12 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woLRC-00000002rjJ-0QfJ
	for barebox@lists.infradead.org;
	Mon, 27 Jul 2026 13:32:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1F8F8202876;
	Mon, 27 Jul 2026 15:32:04 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1woLR6-001YrQ-03;
	Mon, 27 Jul 2026 15:32:04 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1woLR5-00000007IaW-3m28;
	Mon, 27 Jul 2026 15:32:03 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 03/19] ARM: dts: add barebox device tree for Netgear
 RN102
To: "Luca Lauro via B4 Relay" <devnull+famlauro93l.gmail.com@kernel.org>
In-Reply-To: <20260723-rn102-rn104-series-v1-3-7698d25df866@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Jul 2026 13:32:02 +0000
Message-Id: <E1woLR5-00000007IaW-3m28@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_063210_297670_6A2FE500 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-07-23 15:57, Luca Lauro via B4 Relay wrote: > From:
    Luca Lauro <famlauro93l@gmail.com> > > --- > arch/arm/dts/Makefile | 1 +
   > arch/arm/dts/armada-370-rn102-bb.dts | 13 +++++++++++++ > 2 files [...] 
 
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
X-Rspamd-Queue-Id: B8E7920192C
X-Rspamd-Server: mx1
X-Stat-Signature: s6f5agfiixjr1563ur3w7j3pr9dqpihk

On 2026-07-23 15:57, Luca Lauro via B4 Relay wrote:
> From: Luca Lauro <famlauro93l@gmail.com>
>=20
> ---
>  arch/arm/dts/Makefile                |  1 +
>  arch/arm/dts/armada-370-rn102-bb.dts | 13 +++++++++++++
>  2 files changed, 14 insertions(+)
>=20
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index a84e09e388..5d1b21b615 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -51,6 +51,7 @@ lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) +=3D armada-xp-=
gp-bb.dtb.o
>  lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_DB) +=3D armada-xp-db-bb.dtb.o
>  lwl-$(CONFIG_MACH_MX28EVK) +=3D imx28-evk.dtb.o
>  lwl-$(CONFIG_MACH_MYIRTECH_X335X) +=3D am335x-myirtech-myd.dtb.o am335x-=
myirtech-myd-mlo.dtb.o
> +lwl-$(CONFIG_MACH_NETGEAR_RN102) +=3D armada-370-rn102-bb.dtb.o
>  lwl-$(CONFIG_MACH_NETGEAR_RN104) +=3D armada-370-rn104-bb.dtb.o
>  lwl-$(CONFIG_MACH_NETGEAR_RN2120) +=3D armada-xp-rn2120-bb.dtb.o
>  lwl-$(CONFIG_MACH_NITROGEN6) +=3D imx6q-nitrogen6x.dtb.o imx6dl-nitrogen=
6x.dtb.o imx6qp-nitrogen6_max.dtb.o
> diff --git a/arch/arm/dts/armada-370-rn102-bb.dts b/arch/arm/dts/armada-3=
70-rn102-bb.dts
> new file mode 100644
> index 0000000000..0ade2cdd4e
> --- /dev/null
> +++ b/arch/arm/dts/armada-370-rn102-bb.dts
> @@ -0,0 +1,13 @@
> +/*
> + * Barebox specific DT overlay for Netgear ReadyNAS 102
> + */
> +
> +#include "arm/marvell/armada-370-netgear-rn102.dts"
> +
> +/ {
> +	barebox,disable-deep-probe;

Why? Would be worth fixing this issue. Might be because you use
different initcall levels in your board code.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


