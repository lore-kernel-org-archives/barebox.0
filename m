Delivery-date: Mon, 03 Aug 2026 23:57:27 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wr0f0-0060TW-1v
	for lore@lore.pengutronix.de;
	Mon, 03 Aug 2026 23:57:27 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EEF44200C03
	for <lore@pengutronix.de>; Mon, 03 Aug 2026 23:57:22 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BDlF5KMg;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=AqkvyvxOXskrTXY1qlLw5S6l3BvDh5Lh/58jX8RHNzE=; b=BDlF5KMgqIks69WWTbZDz0y9nb
	vboRc/vwARotpyAdXfVb4ZWUDoB7NJWFOmwj67Y79yTe/r4MB4BypEeo8ua8goKBbwJRGS9BGrZK8
	WL7/5YV8uxXuyRsvc1XhS8KDe2GC52YxKGd70wjy8JMhB3Mh76Gro7sIDuAf47FVZruvdWyENRjJd
	sUd/oojbwZ7kuaQ7tE6s1IskpjPw/EDYSBPuoDdrxaDAGgTtrCkrIcqnkP4q7kW6kLSf2K3Tx1S0O
	8p+HuWqoJHrTOaqFcAjjqzvsv28j8DmmYK5Y9CZ0vR1/IP4yPbJrT2r4iFHxvYW0+OIRK/fvl+dk5
	RQy4TgYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr0dj-00000000ZSY-2yME;
	Mon, 03 Aug 2026 21:56:07 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr0dg-00000000ZS4-1Xvu
	for barebox@lists.infradead.org;
	Mon, 03 Aug 2026 21:56:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 880AC2002FE;
	Mon, 03 Aug 2026 23:55:58 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wr0da-002lCj-1R;
	Mon, 03 Aug 2026 23:55:58 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wr0da-00000007wJ8-1ScK;
	Mon, 03 Aug 2026 23:55:58 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v3 14/15] ata: ahci: add shutdown helpers for AHCI
 controllers
To: "Luca Lauro via B4 Relay" <devnull+famlauro93l.gmail.com@kernel.org>
In-Reply-To: <20260802-rn102-rn104-series-v3-14-f7685a279fb5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 03 Aug 2026 21:55:58 +0000
Message-Id: <E1wr0da-00000007wJ8-1ScK@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_145604_557888_F6C36AEF 
X-CRM114-Status: GOOD (  21.93  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-02 15:16, Luca Lauro via B4 Relay wrote: > From:
    Luca Lauro <famlauro93l@gmail.com> > > Introduce helper functions to stop
    the DMA engine and FIS receive engine > before shutdown. These hel [...] 
 
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>, Luca Lauro <famlauro93l@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-3.01 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	CC_EXCESS_BASE64(1.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+famlauro93l.gmail.com@kernel.org,m:barebox@lists.infradead.org,m:famlauro93l@gmail.com,m:devnull@kernel.org,s:lore@pengutronix.de];
	DMARC_NA(0.00)[pengutronix.de];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_RCPT(0.00)[famlauro93l.gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: EEF44200C03
X-Stat-Signature: inyp6bn6te3wexgfiu86gychs18j7zom

On 2026-08-02 15:16, Luca Lauro via B4 Relay wrote:
> From: Luca Lauro <famlauro93l@gmail.com>
>=20
> Introduce helper functions to stop the DMA engine and FIS receive engine
> before shutdown. These helpers mirror the libata shutdown sequence and
> ensure that no AHCI activity is in progress when the system powers off.
>=20
> Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
> ---
>  drivers/ata/ahci.c | 60 ++++++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  1 file changed, 60 insertions(+)
>=20
> diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
> index a9a3f43f21..e9e73069c1 100644
> --- a/drivers/ata/ahci.c
> +++ b/drivers/ata/ahci.c
> @@ -21,6 +21,7 @@
>  #include <linux/sizes.h>
>  #include <linux/pci.h>
>  #include <clock.h>
> +#include <poweroff.h>
> =20
>  #include "ahci.h"
> =20
> @@ -683,6 +684,65 @@ static int ahci_probe(struct device *dev)
>  	return ret;
>  }
> =20
> +/* -------------------------------- */
> +/*		AHCI shutdown helpers		*/
> +/* -------------------------------- */
> +
> +/* Stop DMA engine (clear START, wait LIST_ON=3D0) */
> +static int ahci_stop_engine(struct ahci_port *port)
> +{
> +	u32 cmd;
> +
> +	cmd =3D ahci_port_read(port, PORT_CMD);
> +
> +	/* Already stopped? */
> +	if (!(cmd & (PORT_CMD_START | PORT_CMD_LIST_ON)))
> +		return 0;
> +
> +	/* Clear START */
> +	cmd &=3D ~PORT_CMD_START;
> +	ahci_port_write_f(port, PORT_CMD, cmd);
> +
> +	/* Wait for LIST_ON to clear */
> +	return wait_on_timeout(500 * MSECOND,
> +		!(ahci_port_read(port, PORT_CMD) & PORT_CMD_LIST_ON));
> +}
> +
> +/* Stop FIS receive engine (clear FIS_RX, wait FIS_ON=3D0) */
> +static int ahci_stop_fis_rx(struct ahci_port *port)
> +{
> +	u32 cmd;
> +
> +	cmd =3D ahci_port_read(port, PORT_CMD);
> +	cmd &=3D ~PORT_CMD_FIS_RX;
> +	ahci_port_write_f(port, PORT_CMD, cmd);
> +
> +	/* Wait for FIS_ON to clear */
> +	return wait_on_timeout(1000 * MSECOND,
> +		!(ahci_port_read(port, PORT_CMD) & PORT_CMD_FIS_ON));
> +}
> +
> +/* Stop all ports (libata_pci_shutdown_one equivalent) */
> +static void __maybe_unused ahci_shutdown_host(struct ahci_device *ahci)
> +{
> +	int i, n_ports;
> +
> +	n_ports =3D max_t(int, ahci->n_ports, fls(ahci->port_map));
> +
> +	for (i =3D 0; i < n_ports; i++) {
> +		struct ahci_port *port =3D &ahci->ports[i];
> +
> +		if (!(ahci->port_map & (1 << i)))
> +			continue;
> +
> +		/* Stop DMA engine */
> +		ahci_stop_engine(port);
> +
> +		/* Stop FIS receive engine */
> +		ahci_stop_fis_rx(port);
> +	}
> +}

This only adds unused code. If this is used in another patch, please
move it there.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


