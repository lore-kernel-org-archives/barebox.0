Delivery-date: Mon, 24 Aug 2026 12:21:43 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyRoE-006fPz-0o
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 12:21:43 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D5E00201288
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 12:21:42 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=mPxpD26R;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hveZyESHiybKcxq4NdZDcvLFDZSQWJwI+n0fdYqZz8k=; b=mPxpD26RRdqh5/m76VKzKmPZdc
	4VzvBmkxvBVUsUioqFcdpbcdohaqlAOjBPl5kIvPfr6YE4E793JJL9UUPgOJ9eECFVxJnBI4OjWwT
	TtipIFbFk07Js8bTURse1hkpDDByjdtIVCSW675uHznHS3RFYfr2LVeSXv9x2UgFwAthEGKcJDMIm
	Cp5c6oWtDzS+e9f0pExlO8Mei5JfMlFlRt1GGgiTJncfyCLskeGBCfs+98MOJKatOg3CrAwkM+21o
	JjUeFqqRuI8CmXKbsk2ThWXi3w0GrxO6Pz1zpYvE9aVP7l/M8hglBFfUNmUANDFIjSUSE3zyK428T
	E0a7gzCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyRns-0000000GO2R-0zHG;
	Mon, 24 Aug 2026 10:21:20 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyRnn-0000000GO1x-2GzA
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 10:21:17 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9FC8D2006E0;
	Mon, 24 Aug 2026 12:21:13 +0200 (CEST)
Message-ID: <625cd013-6a0f-431b-858e-57a76bdfd7c0@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v2] spi: rockchip: restore bus_num alias lookup via
 dev->id
To: "Stephano Cetola" <stephano@cetola.net>
In-Reply-To: <20260822-send-spi-rockchip-busnum-v2-1-0f43376cb391@cetola.net>
References: <20260822-send-spi-rockchip-busnum-v2-1-0f43376cb391@cetola.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 24 Aug 2026 10:21:13 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_032115_740932_2B9CA030 
X-CRM114-Status: GOOD (  24.20  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Stephano, On 2026-08-22 08:31, Stephano Cetola wrote: >
    ctlr->bus_num = pdev->id was commented out when this driver was > ported
   from Linux. pdev doesn't exist in barebox's device model here, > only dev.
    The po [...] 
 
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: cm3eky1wy1sb1whg5cw8dzfitn67hgx1
X-Spamd-Result: default: False [-3.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	CC_EXCESS_BASE64(1.50)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS(0.00)[m:stephano@cetola.net,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: D5E00201288

Hi Stephano,

On 2026-08-22 08:31, Stephano Cetola wrote:
> ctlr->bus_num =3D pdev->id was commented out when this driver was
> ported from Linux. pdev doesn't exist in barebox's device model here,
> only dev. The port left this line unresolved instead of translating
> it. With bus_num left at its kzalloc default of 0,
> spi_register_controller() only runs the alias lookup when bus_num < 0,
> so it's skipped and every Rockchip SPI controller ends up on bus 0.
>=20
> Any board that enables two Rockchip SPI controllers at once hits this
> bug. Both end up on bus 0. Looking one up by bus number can then
> return the wrong controller.
>=20
> Fixes: 1efba64ba04 ("spi: add rockchip spi controller support")
> Signed-off-by: Stephano Cetola <stephano@cetola.net>
> ---
> We saw this on the MNT Pocket Reform (RK3588S). spi@feb20000 returns
> the PMIC controller instead of the intended gpio-spi RP2040 bus. The
> barebox spi command then does a write+read through the Rockchip SPI
> driver, which programmes the hardware in XFM_RO (RX-only) mode for
> the read phase. In that mode dummy TXDR writes don't generate clock
> pulses, the RX FIFO never fills, and rockchip_spi_pio's while(1) loop
> never exits.
> ---
> Changes in v2:
> - Updated commit message for clarity.
> - Link to v1: https://patch.msgid.link/20260822-send-spi-rockchip-busnum-=
v1-1-bf9c183786e4@cetola.net
>=20
> To: Sascha Hauer <s.hauer@pengutronix.de>
> To: "open list:BAREBOX" <barebox@lists.infradead.org>
> ---
>  drivers/spi/spi-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index 1e81e9393f..b9f43fa4d6 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -514,7 +514,7 @@ static int rockchip_spi_probe(struct device *dev)
>  		goto err_put_ctlr;
>  	}
> =20
> -//	ctlr->bus_num =3D pdev->id;
> +	ctlr->bus_num =3D dev->id;

This should be initialized to -1 explicitly, because that's what we want
to archieve. The =3D dev->id we have here is only needed for the case when
the device is registered from platform code and we no longer use that
with this device tree only driver.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



