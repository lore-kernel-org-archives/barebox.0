Delivery-date: Mon, 18 Dec 2023 07:54:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rF7WI-002TgZ-0M
	for lore@lore.pengutronix.de;
	Mon, 18 Dec 2023 07:54:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rF7WH-0002OL-GJ
	for lore@pengutronix.de; Mon, 18 Dec 2023 07:54:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EKOAejYR3DI0lPMmbVZLxdbc0P976NBb+TOuXHfaZ+M=; b=T5c/QuJXQqBalDUnNxjnl30avP
	T5bdNnWwv0PBwHiLXfEguZdY2/ABC4ECyZBYp78NBbGUHlM3worwn5WKP1esPXiq4pg3EQx3YaZDE
	vbAlO2Xv64LrXXMOdxDIFecniYMz6Mc1cS/GuOPku2UYNvcmFCfAG5rt0J5u1dBhj+Yzb+xC0nDUw
	UvPskdJbz54MVGdknxDYGsxpaz7yPdrJ+m8Salb+WSp6ht94y3kz8qlrClS6qDRsgihfZgw97zM0C
	mdSqlwipKfEHqVO+CEnrNf+FA9UhLYOEUc94mxEdWrEX7Umi5Plu9Kwn+pKUddIu7eVZDDJUuOcYQ
	x+HSLSXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rF7VG-009HFP-2W;
	Mon, 18 Dec 2023 06:53:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rF7VD-009HEG-2Y
	for barebox@lists.infradead.org;
	Mon, 18 Dec 2023 06:53:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rF7VC-00026g-FL; Mon, 18 Dec 2023 07:53:22 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rF7VB-00GdjD-PQ; Mon, 18 Dec 2023 07:53:21 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rF7VB-007XFd-NC; Mon, 18 Dec 2023 07:53:21 +0100
Date: Mon, 18 Dec 2023 07:53:21 +0100
To: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de,
	Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
Message-ID: <20231218065321.GR1318922@pengutronix.de>
References: <20231214163520.2232412-1-sebastien.bourdelin@rtone.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231214163520.2232412-1-sebastien.bourdelin@rtone.fr>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231217_225323_826453_130F5945 
X-CRM114-Status: GOOD (  20.21  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: rpi: add CM4S device id
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Dec 14, 2023 at 05:35:20PM +0100, Sebastien Bourdelin wrote:
> Introduce the device id for the raspberry CM4S accordingly to [1].
> 
>  [1]: https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#raspberry-pi-revision-codes
> 
> Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 4 ++++
>  include/mach/bcm283x/mbox.h               | 1 +
>  2 files changed, 5 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
> index c2b273c5c3..597e2d2d0e 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -650,6 +650,9 @@ static const struct rpi_machine_data rpi_4_ids[] = {
>  	}, {
>  		.hw_id = BCM2711_BOARD_REV_CM4,
>  		.init = rpi_eth_init,
> +	}, {
> +		.hw_id = BCM2711_BOARD_REV_CM4_S,
> +		.init = rpi_eth_init,
>  	}, {
>  		.hw_id = U8_MAX
>  	},
> @@ -682,6 +685,7 @@ static const struct of_device_id rpi_of_match[] = {
>  	/* BCM2711 based Boards */
>  	{ .compatible = "raspberrypi,4-model-b", .data = rpi_4_ids },
>  	{ .compatible = "raspberrypi,4-compute-module", .data = rpi_4_ids },
> +	{ .compatible = "raspberrypi,4-compute-module-s", .data = rpi_4_ids },
>  	{ .compatible = "raspberrypi,400", .data = rpi_4_ids },
>  
>  	{ /* sentinel */ },
> diff --git a/include/mach/bcm283x/mbox.h b/include/mach/bcm283x/mbox.h
> index 908ba17dba..cf5143673a 100644
> --- a/include/mach/bcm283x/mbox.h
> +++ b/include/mach/bcm283x/mbox.h
> @@ -175,6 +175,7 @@ struct bcm2835_mbox_tag_hdr {
>  #define BCM2837B0_BOARD_REV_ZERO_2	0x12
>  #define BCM2711_BOARD_REV_400		0x13
>  #define BCM2711_BOARD_REV_CM4		0x14
> +#define BCM2711_BOARD_REV_CM4_S		0x15
>  
>  struct bcm2835_mbox_tag_get_board_rev {
>  	struct bcm2835_mbox_tag_hdr tag_hdr;
> -- 
> 2.42.0
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


