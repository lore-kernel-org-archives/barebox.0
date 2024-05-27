Delivery-date: Mon, 27 May 2024 14:28:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBZSq-000gA3-1m
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 14:28:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBZSp-000309-Tx
	for lore@pengutronix.de; Mon, 27 May 2024 14:28:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:
	Subject:Cc:To:From:Message-Id:Date:Content-Type:Content-Transfer-Encoding:
	Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XJVVyLhaTQklOsY3mtlGPkuYMDvX3DAlcawSzjZCndk=; b=L8qmkx9ojNUEM8po5qgG2KlGn5
	ppyqaD/d47MVGWIz79wc7KYdRZLXsAuhzlB+IghROoF3HPDYJ77vGDs9zKc8JSB85GAv4pVaSQm24
	nVUpq+ZMq1uIiVx0tEo7PMXtj03zqXsnV5NtISMbRDKqr4Py0wWEZp6hUWhjTUpUgufdVmy/QB9rw
	PEj6jNHn4ntDPJv47R+9M2oU6Obd5rjGaEwEa8VekW706guUQXH69hpwWpoQnuCDGPJvlnzpJ8DzR
	xzXzLtDl4GfI+j1yriZohphg+CEOiPVtZgeOEepw5YaduzwydDWnzPhP1GNh6MwEB1A2SUNynxrQD
	+d06ZQjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBZSA-0000000EsXw-2XRD;
	Mon, 27 May 2024 12:27:50 +0000
Received: from xvm-107-148.dc0.ghst.net ([46.226.107.148] helo=zdiv.net)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBZS7-0000000EsWL-18gb
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 12:27:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=23;
	t=1716812848;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XJVVyLhaTQklOsY3mtlGPkuYMDvX3DAlcawSzjZCndk=;
	b=IHGEv5T0rQl7KA+qqnL0cm7wEPNLDgeBY/C7SB9xp8L9FL+xr3J/4GFOgs1zLmQUO16o/E
	zMMxn48XzKq+7jvXtnR36nY5j+RlZj5Tqkc6kKWAYOsDjrbYWC3pKox22kXsnOLkflwnpJ
	fnnBYZHt9xihGf5A6j3RiKBssxbhVB+rnUESVxZylJCEBGnXrlU8BZZ6wYq4rwx1rtLXna
	zAEJYbZMtuaoHQ3DBI+Dw2YpmAnM01Sn3crEhGLgOCJgxxc2YPvtHLU4LjMircbq0wGJVA
	3NnG9m5nv8EHB+1AnaVyzSWXQlMJevP/tj56h44/AOXqef+ZbWHcCtVmvZssVw==
Received: from localhost (91-160-75-97.subs.proxad.net [91.160.75.97])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 9cbce1e6 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Mon, 27 May 2024 12:27:28 +0000 (UTC)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 27 May 2024 14:27:28 +0200
Message-Id: <D1KFD2L4BTS3.1U2Q6YUGTPH8W@zdiv.net>
From: "Jules Maselbas" <jmaselbas@zdiv.net>
To: "Sascha Hauer" <s.hauer@pengutronix.de>, "Barebox List"
 <barebox@lists.infradead.org>
Cc: "jianqiang wang" <wjq.sec@gmail.com>
X-Mailer: aerc 0.17.0
References: <20240527102723.3504270-1-s.hauer@pengutronix.de>
 <20240527102723.3504270-6-s.hauer@pengutronix.de>
In-Reply-To: <20240527102723.3504270-6-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_052747_617008_8A04B873 
X-CRM114-Status: GOOD (  14.00  )
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
Subject: Re: [PATCH v2 5/7] net: smc911x: do not read past the receive
 buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon May 27, 2024 at 12:27 PM CEST, Sascha Hauer wrote:
> The hardware may report a packet longer than our receive buffer. Instead
> of reading past the read buffer, discard too long packets.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/net/smc911x.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
> index 767d51761b..4b2bd79392 100644
> --- a/drivers/net/smc911x.c
> +++ b/drivers/net/smc911x.c
> @@ -460,13 +460,18 @@ static int smc911x_eth_rx(struct eth_device *edev)
>  		smc911x_reg_write(priv, RX_CFG, 0);
> =20
>  		tmplen =3D (pktlen + 2 + 3) / 4;
> -		while(tmplen--)
> -			*data++ =3D smc911x_reg_read(priv, RX_DATA_FIFO);
> +		if (tmplen <=3D PKTSIZE / sizeof(u32)) {
> +			while (tmplen--)
> +				*data++ =3D smc911x_reg_read(priv, RX_DATA_FIFO);
> +		} else {
> +			while (tmplen--)
> +				smc911x_reg_read(priv, RX_DATA_FIFO);
> +		}
> =20
>  		if(status & RX_STS_ES)
>  			dev_err(&edev->dev, "dropped bad packet. Status: 0x%08x\n",
>  				status);
> -		else
> +		else if (tmplen <=3D PKTSIZE / sizeof(u32))
tmplen here is zero, because it is used as a loop counter.

>  			net_receive(edev, priv->rx_buf, pktlen);
>  	}
> =20



