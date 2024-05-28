Delivery-date: Tue, 28 May 2024 15:30:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBwud-000vhy-0C
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 15:30:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBwuc-0000U2-Ft
	for lore@pengutronix.de; Tue, 28 May 2024 15:30:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:
	From:Subject:Cc:Message-Id:Date:Content-Type:Content-Transfer-Encoding:
	Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wcvDwObo82zlgByqPJJjxkJCjCU9+XDjBnBKqet2h1M=; b=qljqcVaVf9/xc3gGvuw26FzUtr
	L2L354toqHiCMosphpQ6pb7AnAHgH6s5aEbDC00Nm/deXI/swbknX5rpNxULM0Rtf7kmNaQGOVHeX
	RFgdbcfqsYKa2BIq6XZM6cScYsV9jimBGIFImJnMlLCZyoMBezoiMep77Bse64hTLfChCp21kvSYA
	hNu9ReMpx1dIkOIpTBgo1Uc6lvcCVP+ZRnryPLrQoTJuO0WUmIOnAsv6+rtnuoJTh+3dXx03RObtn
	JOUJPWPs/vyxMII3OYI9EwDzJq0bFZjJvzaIpbO1W6HZIkZvMylmXo82iq205Amyf6OR420TZ0hXu
	KTkXW6Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBwtt-00000000nvI-1oeh;
	Tue, 28 May 2024 13:30:01 +0000
Received: from xvm-107-148.dc0.ghst.net ([46.226.107.148] helo=zdiv.net)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBwtn-00000000ntz-0nhX
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 13:29:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=23;
	t=1716902987;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wcvDwObo82zlgByqPJJjxkJCjCU9+XDjBnBKqet2h1M=;
	b=AzwAHKvu3pGMHovsBNiRObKSXDDPwhb6czAtashi7dIKSlJkuEHNskVr/1JrcN0T6PSbHh
	cva9XKtM1wEADMEQe0FVnCYEcm5BJdWUPB3QYbXPM1oo9iwES8kjzAJp1qko0r6lSn04oE
	CFBqxWA1YCKA3iIffNxAxBYzqj3IZCurGTsdVSZvKj2OxLVQI/VOOj1mWniTREFhyKbLNF
	8pEqweyWSeIKzQrRXN5R3cqR5ef6EMClQUqACSfSC7YTMEtk6cl4TkUJl6wP8Xn1H51qb0
	jwyoz3iL1/VEJuT7NXfeHunA/9v25LMj4CbjFb5WksX7+K9yD19FfABCDSkBrQ==
Received: from localhost (91-160-75-97.subs.proxad.net [91.160.75.97])
	by zdiv.net (OpenSMTPD) with ESMTPSA id d824f54e (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 28 May 2024 13:29:47 +0000 (UTC)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 28 May 2024 15:29:47 +0200
Message-Id: <D1LBBBUVTEKQ.21VMXYL98EK08@zdiv.net>
Cc: "jianqiang wang" <wjq.sec@gmail.com>
From: "Jules Maselbas" <jmaselbas@zdiv.net>
To: "Sascha Hauer" <s.hauer@pengutronix.de>, "Barebox List"
 <barebox@lists.infradead.org>
X-Mailer: aerc 0.17.0
References: <20240528085806.1172689-1-s.hauer@pengutronix.de>
 <20240528085806.1172689-8-s.hauer@pengutronix.de>
In-Reply-To: <20240528085806.1172689-8-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_062955_522801_B3BF6494 
X-CRM114-Status: GOOD (  14.10  )
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
Subject: Re: [PATCH v3 7/9] net: smc911x: do not read past the receive
 buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Tue May 28, 2024 at 10:58 AM CEST, Sascha Hauer wrote:
> The hardware may report a packet longer than our receive buffer. Instead
> of reading past the read buffer, discard too long packets.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/net/smc911x.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
> index 1fca58ab84..8a0fa5cc25 100644
> --- a/drivers/net/smc911x.c
> +++ b/drivers/net/smc911x.c
> @@ -460,14 +460,14 @@ static int smc911x_eth_rx(struct eth_device *edev)
>  		smc911x_reg_write(priv, RX_CFG, 0);
> =20
>  		tmplen =3D (pktlen + 3) / 4;
> -		while(tmplen--)
> -			*data++ =3D smc911x_reg_read(priv, RX_DATA_FIFO);
> -
> -		if(status & RX_STS_ES)
> -			dev_err(&edev->dev, "dropped bad packet. Status: 0x%08x\n",
> -				status);
> -		else
> -			net_receive(edev, priv->rx_buf, pktlen);
I don't see a call to net_receive anymore

> +
> +		if (pktlen > PKTSIZE || (status & RX_STS_ES)) {
> +			while (tmplen--)
> +				smc911x_reg_read(priv, RX_DATA_FIFO);
> +		} else {
> +			while (tmplen--)
> +				*data++ =3D smc911x_reg_read(priv, RX_DATA_FIFO);
> +		}
>  	}
> =20
>  	return 0;



