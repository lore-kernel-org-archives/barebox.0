Delivery-date: Fri, 25 Mar 2022 10:39:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nXgPp-005U5n-Uf
	for lore@lore.pengutronix.de; Fri, 25 Mar 2022 10:39:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nXgPs-0008IE-0I
	for lore@pengutronix.de; Fri, 25 Mar 2022 10:39:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5kJMmqwGFLW5zSyYQfNx6b9H9m7Hakng/1Xrt05wNtc=; b=Ywl8cJX1VgggXjFehy4dthyqk6
	ttfo1ZXHgQYnMlH/wPkS/pVWhbJsbIleMm6hUyUQLUo2gO9JW1Yav8H8gZ7IJXTUp6M40pqf9+Wml
	gN2wuONJkrat+Eyb2yl+gJb49qKnIjsc1zgNQ8gHsStjJUiT1ZGvmUatohMIykPbApA5IXYMvgGws
	zN0Yu/BfD8KApbfVsa5MYs/ibPVrwP4HFTlr7uf1XxpqPRYcBYpfXU8uOFUTITrOMv9rSxZrDum8U
	n+MBXISgkHR63mdoQanuORAw+8mpklfP2EKpsMiyLonQB5PCU6/JjoqmE7CkDX3KTxpzVd+UL/i6i
	wbMTZqJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXgO9-001Xz2-LB; Fri, 25 Mar 2022 09:37:45 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXgO4-001Xxz-Ag
 for barebox@lists.infradead.org; Fri, 25 Mar 2022 09:37:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1648201051;
 bh=sSZ1Jpi5NjkFXqLRiHzs1I+V8ny1GwibN6FfWA6nxaY=;
 h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
 b=Al/993BTj5gCRyN5cGKMiK4J9dw2cTi7a1SSwa+DySmnsh+JfBkbaTkSaRDny5c07
 ClspWt4hhSQlRAWlrWvdJfZUlcVxofRzDok2yElSTBjlxewka6agoHTN0e5w9gKk0+
 2+wrUDL83HmJWducCMyV/RSLmdZ71oplEeH3v09o=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.86.95] ([95.91.192.147]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N9Mtg-1oA9vC3EBg-015GXm; Fri, 25
 Mar 2022 10:37:30 +0100
Message-ID: <e7ed1d0b-fb49-1151-e0f1-b5a88a85d1b9@rempel-privat.de>
Date: Fri, 25 Mar 2022 10:37:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20220321092606.1459834-1-o.rempel@pengutronix.de>
 <20220321092606.1459834-4-o.rempel@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
In-Reply-To: <20220321092606.1459834-4-o.rempel@pengutronix.de>
X-Provags-ID: V03:K1:ZH/vptehyVLQo6K5xl5qNXLaivWhh2g4deiWbQ95TA7xlrIIWdL
 1fVbTrvJMof5C+MigY0iQGIDCKP6EpgInUc91xE1T+3/xSKOe7PyFphFNHMKurLlJ5KWEEr
 XH/9ozBV09nESV9W9mjyyVQvbNrLcDtbkNqeMlYr2ThcxsVFDRJLxYtxbQZP98zDV9M00EM
 9LS3ev0SrmVW6GPzKZE5g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:3pzbqkEgKaE=:z4eYVRPjad2hM3F4Y+TAKH
 NRhgIdUM/MahlyrbfAaqZg7mizITaZ8WBLYuaGf55X1EQgq2M0IWz3iaDTutVsUbo4C+iW7pJ
 Hh1fSkd6fOJ420z1syz3aMO0HShY0YrgQ4HqXu8CN+7UYyLRuroN8ZxXKP8yMcjAN4h9kZlVv
 48hTSszy/IYZiFKq0S9SyWcG7qvBTPOEZX7UXSUpwCJRSi00Jgg2YuxXnEW17kBNori5HyvPN
 nx9jmmYHfe5Wu/E5Ipk0YNOW7vNIuzGImWSZMecugJJZ3Zfkm0p2XoBVzhmGoO9sPB+FlFRJY
 qcQWFVQC9mBKHzeX35Vvj9pwDGyyrVZQa4A6HVtGFzipX6YiD9NwYnA5SD1bp1K7IuIef6yQ5
 kXa/hK8kw+zwjLX1Z6ygwqeDpzJ62o3sVeqBbGOqJOr0qXA09VwKrgmhGlSr25YbQM1DUbyaZ
 I0+gcrbTw4VTZtLdxSfvczk0mSG2wkago+bTnl5e1T/3UHl6Z6/j7bx/g3uhwag5UEdZ9wfUi
 uynUUohJ4c0+c1u9auIFc/PCeKzzCT3ej8qNyViwzys+M2HPSxUbquBMP9SL2ty4CTcZQWBbs
 Ybg/QA2mrwX6hrRVzynJQYnO4NZklOk4x3e3KO0pYx7cjO4s8U2N6wLIJjzLduDD2p05idRAr
 jf0OqIOKUMNzHuMfehZ4sMEyTKtP69Z0SkFPXWv2GpuHyxCGtiKv3pgQXjbsLTCu0Cd5/YXpo
 0zGZkyTDPkVYIn8g9fcZz3Edjd0/tNHZWlyGTBwCnhBbBpwO5glxs4TTdfVSq848obG8Zd3dG
 +2Wla/tClwlWAcljuSnJKxAfQyhwSWon3mlo1DDzz/4JrcCh8Y8orNAihVaVDbXvMowr5c7Zl
 N03KqqWVl7PWvmZJOE+ntMAHm8RDBITgWhGIQh2A/bXB/s7H6Szd0ObrRAMtIfMqP6sfyJUjh
 53XQqAdPxrnyOmqHNOT/kbrcvIykjmzcbgJUk3NABmVgzTY7yPnCN0CKgx+Vrn9/Scjh1eEGv
 ERzvQ4jXsBpi97gaYvzoYCVnyNwvhpkoCL+TGJKCF12dCm/TppW0+nT0HJM4vyK1sW2aYm72h
 pgMlpy3rGG6XZc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_023740_753929_AD68C796 
X-CRM114-Status: GOOD (  16.91  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 3/9] net: add DSA framework to support basic switch
 functionality
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am 21.03.22 um 10:26 schrieb Oleksij Rempel:
> Add DSA based port multiplexing functionality for barebox. With this
> framework we will be able to use different ports of as switch
> separately.
>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>   drivers/net/Kconfig  |   3 +
>   drivers/net/Makefile |   1 +
>   drivers/net/dsa.c    | 385 +++++++++++++++++++++++++++++++++++++++++++
>   include/dsa.h        |  94 +++++++++++
>   4 files changed, 483 insertions(+)
>   create mode 100644 drivers/net/dsa.c
>   create mode 100644 include/dsa.h
>
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index b583299a44..419f8c515d 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -17,6 +17,9 @@ config HAS_MACB
>   config PHYLIB
>   	bool
>
> +config DSA
> +	bool
> +
>   menu "Network drivers"
>   	depends on NET
>
> diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> index 563dfdfd9e..ef3513a6b0 100644
> --- a/drivers/net/Makefile
> +++ b/drivers/net/Makefile
> @@ -1,4 +1,5 @@
>   # SPDX-License-Identifier: GPL-2.0-only
> +obj-$(CONFIG_DSA)			+= dsa.o
>   obj-$(CONFIG_PHYLIB)			+= phy/
>   obj-$(CONFIG_NET_USB)			+= usb/
>
> diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
> new file mode 100644
> index 0000000000..a9e3563b9b
> --- /dev/null
> +++ b/drivers/net/dsa.c
> @@ -0,0 +1,385 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <common.h>
> +#include <dma.h>
> +#include <dsa.h>
> +#include <of_net.h>
> +
> +static int dsa_port_probe(struct eth_device *edev)
> +{
> +	struct dsa_port *dp = edev->priv;
> +	struct dsa_switch *ds = dp->ds;
> +	const struct dsa_ops *ops = ds->ops;
> +	phy_interface_t interface;
> +	int ret;
> +
> +	interface = of_get_phy_mode(dp->dev.device_node);
> +	ret = phy_device_connect(edev, NULL, 0, NULL, 0, interface);
> +	if (ret)
> +		return ret;
> +
> +	if (ops->port_probe) {
> +		ret = ops->port_probe(dp, dp->index, dp->edev.phydev);
> +		if (ret)
> +			return ret;
> +	}

The probe part should be reworked to enable CLK for RMII PHYs early.

--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

