Delivery-date: Mon, 27 May 2024 10:59:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBWCr-000dyL-32
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 10:59:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBWCr-0003Qx-Ar
	for lore@pengutronix.de; Mon, 27 May 2024 10:59:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:
	Subject:Cc:To:From:Message-Id:Date:Content-Type:Content-Transfer-Encoding:
	Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S7hMjKkgdSGnSGhMRcXaidld8uJjKDIO5XBXiC3y2PQ=; b=3YGPj7MqUc058dlWdsMQFyzb/O
	jOZ853VCqIMZoX5ZeP7zh7hUJfY4K0shyWh8SlpptKYrK+HEGoZfo9B+lyuUaib4TuVJ8CfeD4wqm
	2I5zPt+AcP+RbpOamBKwhGS8pTz8fn94//hHtQUSJYNMDoT0sWoZTxxk4RpYLPAv9bmZTRG8dyHNr
	/uv0M5/Emr98OP8zCYDzDQepsMUviJnUsadFSqL0xkwFOtuptCQkoI+xKWRCztpz9CyX3Alb/ntYZ
	wctdP96KjzLmK7Fa0OwOZQSoTQC0Q7hkn2avT+D+TzB1jcFHQrkpwt3VXB8gb24rl0+oJPGMnyQv7
	/wIbDjsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWCB-0000000EKJd-3S2m;
	Mon, 27 May 2024 08:59:07 +0000
Received: from xvm-107-148.dc0.ghst.net ([46.226.107.148] helo=zdiv.net)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWC7-0000000EKIw-2Q0g
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 08:59:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=23;
	t=1716800335;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S7hMjKkgdSGnSGhMRcXaidld8uJjKDIO5XBXiC3y2PQ=;
	b=hGY3Iye61LyiK02qTHlH8jftNYKYLj6wiabKy3Yuvt9mSKejQWB0DB5As/aAsnhkXoUkRm
	KansTcnPBLvKewFwQlNahZTMM4ASOsgCZvayOZbP615+k8PrkR7BFIWqXgHEDqLy5yVeXS
	qOMbSYQVqzvphCn4pbmD9swh2Tdm790nJfqaE6jISTDpBMKBJ0MO73ZG5C3edEeCfOdp3z
	hUOW5I2DcsBghmSm8KS1EQXEyGEa8DeQXHmS90bhRqOde5WxE0BfMdIpQqExcgTYlKbtyX
	9tUbwH5seFU1+oz/91X7gJW4n0aLUN2n448MBPm1MaNi6wrFrADWoNMdUGkqAg==
Received: from localhost (91-160-75-97.subs.proxad.net [91.160.75.97])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 61e27c9f (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Mon, 27 May 2024 08:58:55 +0000 (UTC)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 27 May 2024 10:58:55 +0200
Message-Id: <D1KAXE1FR9NJ.XQQM6JG3M6F7@zdiv.net>
From: "Jules Maselbas" <jmaselbas@zdiv.net>
To: "Sascha Hauer" <s.hauer@pengutronix.de>, "Barebox List"
 <barebox@lists.infradead.org>
Cc: "jianqiang wang" <wjq.sec@gmail.com>
X-Mailer: aerc 0.17.0
References: <20240527072915.3229221-1-s.hauer@pengutronix.de>
 <20240527072915.3229221-2-s.hauer@pengutronix.de>
In-Reply-To: <20240527072915.3229221-2-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_015903_909899_715A0CB0 
X-CRM114-Status: GOOD (  15.93  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/5] net: cs8900: do not read past the receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

Just a quick remark:

On Mon May 27, 2024 at 9:29 AM CEST, Sascha Hauer wrote:
> the hardware may report a packet longer than our receive buffer. Instead
> of reading past the read buffer, discard too long packets.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/net/cs8900.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
> index afb0f3e26e..a96b574f95 100644
> --- a/drivers/net/cs8900.c
> +++ b/drivers/net/cs8900.c
> @@ -295,8 +295,13 @@ static int cs8900_recv(struct eth_device *dev)
>  	status =3D readw(priv->regs + CS8900_RTDATA0);
>  	len =3D readw(priv->regs + CS8900_RTDATA0);
> =20
> -	for (addr =3D (u16 *)priv->rx_buf, i =3D (len + 1) >> 1; i > 0; i--)
> -		*addr++ =3D readw(priv->regs + CS8900_RTDATA0);
> +	if (len <=3D PKTSIZE) {
> +		for (addr =3D (u16 *)priv->rx_buf, i =3D (len + 1) >> 1; i > 0; i--)
> +			*addr++ =3D readw(priv->regs + CS8900_RTDATA0);
> +	} else {
> +		for (addr =3D (u16 *)priv->rx_buf, i =3D (len + 1) >> 1; i > 0; i--)
> +			(void)readw(priv->regs + CS8900_RTDATA0);
So the packet is "discarded" here but the function doesn't returns with an =
error
and proceed to call net_received with the previous (if any) packet but with=
 the
new length ...

I am not sure if this is an issue or not.

> +	}
> =20
>  	net_receive(dev, priv->rx_buf, len);
> =20


best,
Jules


