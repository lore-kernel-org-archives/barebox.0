Delivery-date: Thu, 02 Jul 2026 10:19:35 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfCdz-00CCAI-2l
	for lore@lore.pengutronix.de;
	Thu, 02 Jul 2026 10:19:35 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id ADA25200379
	for <lore@pengutronix.de>; Thu, 02 Jul 2026 10:19:35 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sUN4IaKU;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=qHhcUYFrmQ1NhhrYtIcNtXqexqCfo6a+xxO9CrBYmd4=; b=sUN4IaKUW4sEOUo5Jnh2MOoafO
	0L1Qj9I0f2cDCaH3Pkb6anzvg9fjT9ixm7Z8Y5CFJIxUkm10mXVEJ6g/VbeNFF/rv/Ye6ugpvP4Td
	XDrO6NmKhLO7yPcDxM/yyyhFDc1xI1fFTgKTSy9z7s+ey+pYVHIDgg+NuK6uxI6aS4+x1L/siHbDX
	hKq4XZlUXDO12XZne6TaYOueDP5KWVREH23FMAn40saT7xLZxCbQP8ord+0Q/SHtYVDPdHkwYcmjX
	LGmC7sx6R25iCGz/rpEnTZymkMFtzrabpzCCaMHLlNdfQbIeTyr5mVOoKyoL1i3s6rY4HBaYI9YCj
	0xcEiFTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfCcw-00000003pjm-1kGC;
	Thu, 02 Jul 2026 08:18:30 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfCcs-00000003pj8-2o9G
	for barebox@lists.infradead.org;
	Thu, 02 Jul 2026 08:18:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E70A9200F84;
	Thu, 02 Jul 2026 10:18:24 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wfCcq-005iPZ-2m;
	Thu, 02 Jul 2026 10:18:24 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wfCcq-0000000DFCr-3DQn;
	Thu, 02 Jul 2026 10:18:24 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] input: gpio-keys: initialize the input value with the
 current gpioval
To: "Marco Felsch" <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
In-Reply-To: <20260625115149.4108394-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 08:18:24 +0000
Message-Id: <E1wfCcq-0000000DFCr-3DQn@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_011826_879550_5D8C7116 
X-CRM114-Status: GOOD (  22.20  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Marco, I just sent an alternative patch which avoids some
    code duplication. It's untested, maybe you could spin a test for your case.
    Sascha 
 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Queue-Id: ADA25200379
X-Spamd-Result: default: False [-4.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: c7jusugz58468wphiu8e85tyx5b7uztz
X-Rspamd-Server: mx1

Hi Marco,

I just sent an alternative patch which avoids some code duplication.
It's untested, maybe you could spin a test for your case.

Sascha

On 2026-06-25 13:51, Marco Felsch wrote:
> This is required for deep-probe systems which prove the "gpio-keys"
> device on demand. In such case the input value is not yet accessible
> once the probe finished. However, board code queries the input device
> value directly after the of.*ensure.*probed().
>=20
> Therefore provide a sane default by reading the gpio value during probe
> and init the input device value.
>=20
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/input/gpio_keys.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>=20
> diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
> index b52738f5ccb2..316ed73ddfd1 100644
> --- a/drivers/input/gpio_keys.c
> +++ b/drivers/input/gpio_keys.c
> @@ -143,6 +143,26 @@ static int gpio_keys_probe_dt(struct gpio_keys *gk, =
struct device *dev)
>  	return 0;
>  }
> =20
> +static int gpio_keys_set_initialval(struct gpio_keys *gk)
> +{
> +	struct gpio_key *gb;
> +	int i, pressed;
> +
> +	for (i =3D 0; i < gk->nbuttons; i++) {
> +
> +		gb =3D &gk->buttons[i];
> +		pressed =3D gpiod_get_value(gb->gpio);
> +
> +		if (pressed !=3D gb->previous_state) {
> +			gb->debounce_start =3D get_time_ns();
> +			input_report_key_event(&gk->input, gb->code, pressed);
> +			dev_dbg(gk->input.parent, "%s gpio #%d as %d\n",
> +				pressed ? "pressed" : "released", i, gb->code);
> +			gb->previous_state =3D pressed;
> +		}
> +	}
> +}
> +
>  static int __init gpio_keys_probe(struct device *dev)
>  {
>  	int ret;
> @@ -163,6 +183,8 @@ static int __init gpio_keys_probe(struct device *dev)
>  	if (ret)
>  		return ret;
> =20
> +	gpio_keys_set_initialval(gk);
> +
>  	ret =3D poller_async_register(&gk->poller, dev_name(dev));
>  	if (ret)
>  		return ret;
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


