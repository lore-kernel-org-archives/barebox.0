Delivery-date: Sun, 24 Dec 2023 10:28:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rHKmo-00Bzyb-0f
	for lore@lore.pengutronix.de;
	Sun, 24 Dec 2023 10:28:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rHKmn-0004uT-JW
	for lore@pengutronix.de; Sun, 24 Dec 2023 10:28:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z7rFm22vNTDPmSYEn+Qhbhb/h5dRX1pkV62wbyp3grY=; b=rmaPaQ1lrKqhABwISZZxz1T2QP
	aUJIqPrfh4+E72717KXmyRlTqFJ6+Ewu3GZKZepg5DfT80SEyWF1rjkNi7nc+SPSKQzaSADVETumV
	o0DU9Zl/kBGnHOlT9eKpXqJzhR5rG5kGnBmS+RgPnJEkjj4Cf9MXRjeIO2JF1ArgMwat+6f4+t1PF
	1gO3Ng5kH5HmfCoBEhQ3slsIvzXdQu3DJQx93tjpGZoXT9TQlIjocqWeJdVQMhUpPSfhBKXCCvrj6
	TRhn08vGMLTF8DvarfUvwxDGpdnfOTk4pYAXQFFhE02j1i1tIRFe+uOSXBrJswYh/7HNnYGgA8xd/
	DkM6YRPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHKlO-0096pj-06;
	Sun, 24 Dec 2023 09:27:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHKlK-0096pN-1x
	for barebox@lists.infradead.org;
	Sun, 24 Dec 2023 09:27:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rHKlG-0004os-Av; Sun, 24 Dec 2023 10:27:06 +0100
Message-ID: <65e626eb-dc07-41fb-8f51-a7f307e5e360@pengutronix.de>
Date: Sun, 24 Dec 2023 10:27:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: =?UTF-8?Q?Alvin_=C5=A0ipraga?= <alvin@pqrs.dk>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Vladimir Oltean <olteanv@gmail.com>,
 Luiz Angelo Daros de Luca <luizluca@gmail.com>,
 =?UTF-8?Q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>
References: <20231222-realtek-mdio-fix-v1-0-6bbf80d6a756@bang-olufsen.dk>
 <20231222-realtek-mdio-fix-v1-1-6bbf80d6a756@bang-olufsen.dk>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231222-realtek-mdio-fix-v1-1-6bbf80d6a756@bang-olufsen.dk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_012710_670321_F2008D74 
X-CRM114-Status: GOOD (  19.29  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/4] net: fec_imx: reverse registration order of mdiobus
 and edev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Alvin,

On 22.12.23 03:07, Alvin Šipraga wrote:
> From: Alvin Šipraga <alsi@bang-olufsen.dk>
> 
> This is necessary so that on systems with MDIO-connected Etheret
> switches, DSA can find the master edev during switch registration.
> Otherwise the switch setup will fail.

On the other hand, systems, where the PHY supplies a clock to the MAC
need the MDIO bus controller to be registered first, so the PHYs can
probe. In the special case of the FEC driver:

  - there's no struct eth_device::init function 
  - struct eth_device::get_ethaddr doesn't do hardware access


and operations in struct eth_device are only invoked when ->open is initially
called, which won't happen at driver probe time.

I thus think the change is ok, even if not generally applicable to all drivers.

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>


Thanks,
Ahmad

> 
> Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
> ---
>  drivers/net/fec_imx.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 203a2a8aa191..75a65962820b 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -895,18 +895,18 @@ static int fec_probe(struct device *dev)
>  	fec->miibus.priv = fec;
>  	fec->miibus.parent = dev;
>  
> -	ret = mdiobus_register(&fec->miibus);
> +	ret = eth_register(edev);
>  	if (ret)
>  		goto free_receive_packets;
>  
> -	ret = eth_register(edev);
> +	ret = mdiobus_register(&fec->miibus);
>  	if (ret)
> -		goto unregister_mdio;
> +		goto unregister_eth;
>  
>  	return 0;
>  
> -unregister_mdio:
> -	mdiobus_unregister(&fec->miibus);
> +unregister_eth:
> +	eth_unregister(edev);
>  free_receive_packets:
>  	fec_free_receive_packets(fec, FEC_RBD_NUM, FEC_MAX_PKT_SIZE);
>  free_xbd:
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



