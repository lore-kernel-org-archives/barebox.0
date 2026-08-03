Delivery-date: Mon, 03 Aug 2026 23:54:34 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wr0cD-0060RU-1Z
	for lore@lore.pengutronix.de;
	Mon, 03 Aug 2026 23:54:34 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BE3652002FE
	for <lore@pengutronix.de>; Mon, 03 Aug 2026 23:54:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="F+X/llJa";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=fxNb2NuSWmRmJxJs8dbThRERg5TCk52cW6gY8eXQb44=; b=F+X/llJa9i00dLHEK+4PLI6sXW
	gWT86CYHWSiDKNy56ROWxspor1CNPzuaedWVpxivchXwRduHToFAp2QKnPz4TQ4YnRYvwJd9FwtHT
	XLwHdE4tfuXnwoMZVSlQKt/rScOMJR6YFdVAlDyKtapx5tIBvm8SFnCVm8bbNJOf4M5nSOokxmlAh
	po4AwprjliAMFfjPCHGfgczg0MreEewa8LBPX1MN3+I4CtLouhjk1Csxd9ZaNGbtlyJ/dwomkBvkG
	blWkmXLoYSaSSjjjSZLFT2CJDNZ7x0219GiqoasY3yRz5lNlH2WapwXzlUzTiKtodG+sZ9Zx8hiXg
	i1ugaHjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr0ai-00000000YeI-2F3v;
	Mon, 03 Aug 2026 21:53:00 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr0ae-00000000Ydj-3NPv
	for barebox@lists.infradead.org;
	Mon, 03 Aug 2026 21:52:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9CDB62002FE;
	Mon, 03 Aug 2026 23:52:50 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wr0aY-002lCV-1n;
	Mon, 03 Aug 2026 23:52:50 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wr0aY-00000007wHp-1vsL;
	Mon, 03 Aug 2026 23:52:50 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v3 13/15] ata: ahci: add FLUSH EXT and STANDBY IMMEDIATE
 support during shutdown
To: "Luca Lauro via B4 Relay" <devnull+famlauro93l.gmail.com@kernel.org>
In-Reply-To: <20260802-rn102-rn104-series-v3-13-f7685a279fb5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 03 Aug 2026 21:52:50 +0000
Message-Id: <E1wr0aY-00000007wHp-1vsL@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_145257_023844_D702F1E5 
X-CRM114-Status: GOOD (  23.99  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-02 15:16, Luca Lauro via B4 Relay wrote: > From:
    Luca Lauro <famlauro93l@gmail.com> > > Some AHCI controllers require ATA
   FLUSH EXT and STANDBY IMMEDIATE to be > issued before poweroff to e [...] 
 
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
X-Rspamd-Queue-Id: BE3652002FE
X-Stat-Signature: aaabgyb9nwchcicjoebhhdtfitr4s1xn

On 2026-08-02 15:16, Luca Lauro via B4 Relay wrote:
> From: Luca Lauro <famlauro93l@gmail.com>
>=20
> Some AHCI controllers require ATA FLUSH EXT and STANDBY IMMEDIATE to be
> issued before poweroff to ensure data integrity and proper device
> shutdown. This patch introduces ahci_port_shutdown(), which sends these
> commands using ahci_ata_nodata(), and integrates it into a new AHCI
> poweroff handler.
>=20
> Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
> ---
>  drivers/ata/ahci.c | 60 ++++++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  1 file changed, 60 insertions(+)
>=20
> diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
> index 2504f4d19a..a9a3f43f21 100644
> --- a/drivers/ata/ahci.c
> +++ b/drivers/ata/ahci.c
> @@ -48,6 +48,9 @@
>  #define ahci_debug(ahci, fmt, arg...) \
>  	dev_dbg(ahci->dev, fmt, ##arg)
> =20
> +#define ATA_CMD_FLUSH_EXT 0xEA
> +#define ATA_CMD_STANDBYNOW1 0xE0
> +
>  #ifndef PCI_VENDOR_ID_MARVELL_EXT
>  #define PCI_VENDOR_ID_MARVELL_EXT 0x1b4b
>  #endif
> @@ -680,6 +683,63 @@ static int ahci_probe(struct device *dev)
>  	return ret;
>  }
> =20
> +/* Issue FLUSH EXT + STANDBY IMMEDIATE */
> +static void ahci_port_shutdown(struct ahci_port *port)
> +{
> +	if (!port->cmd_tbl || !port->cmd_slot)
> +		return;
> +
> +	if (!ahci_link_ok(port, 0))
> +		return;
> +
> +	if (ahci_ata_nodata(port, ATA_CMD_FLUSH_EXT, 0))
> +		ahci_port_info(port, "FLUSH EXT failed\n");
> +
> +	if (ahci_ata_nodata(port, ATA_CMD_STANDBYNOW1, 0))
> +		ahci_port_info(port, "STANDBY IMMEDIATE failed\n");
> +}
> +
> +/* Full poweroff sequence */
> +static void ahci_poweroff(struct poweroff_handler *handler, unsigned lon=
g flags)
> +{
> +	struct ahci_device *ahci;
> +	int i, n_ports;
> +
> +	list_for_each_entry(ahci, &ahci_devices, list) {
> +
> +		if (!ahci->mmio_base)
> +			continue;
> +
> +		/* FLUSH + STANDBY on all active ports */
> +		n_ports =3D max_t(int, ahci->n_ports, fls(ahci->port_map));
> +
> +		for (i =3D 0; i < n_ports; i++) {
> +			struct ahci_port *port =3D &ahci->ports[i];
> +
> +			if (!(ahci->port_map & (1 << i)))
> +				continue;
> +
> +			ahci_port_shutdown(port);
> +		}
> +
> +		/* (optional) shutsown controller after commands
> +		* ahci_shutdown_host(ahci);
> +		*/
> +	}
> +}
> +
> +static struct poweroff_handler ahci_po_handler =3D {
> +	.poweroff =3D ahci_poweroff,
> +	.priority =3D 200,   /* higher than gpio-poweroff */
> +};
> +
> +static int ahci_register_poweroff(void)
> +{
> +	poweroff_handler_register(&ahci_po_handler);

A poweroff handler is the thing that actually powers off the system,
i.e. the gpio-poweroff handler toggles the GPIO that cuts the power to
the system.

You are looking for something to hook into poweroff_machine() and we
currently don't have anything for this.

We might want to call shutdown_barebox() before calling
poweroff_machine(). That way you could hook into the struct
driver->remove function. That would mean though that the ahci port
shutdown would also be called before starting Linux. If you do not want
that we could introduce some flag indicating the shutdown reason
(poweroff vs. start Linux)

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


