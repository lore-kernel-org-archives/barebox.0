Delivery-date: Thu, 14 Dec 2023 18:18:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDpM6-0034kK-1f
	for lore@lore.pengutronix.de;
	Thu, 14 Dec 2023 18:18:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDpM6-00032f-Ob
	for lore@pengutronix.de; Thu, 14 Dec 2023 18:18:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JQK6P/ISSkn0EgABowTKPpCkzwEFsrmDpCcDlgZMzS0=; b=h286SV9EjMKj49IzyM9789DnKj
	h9SPtQQGiRIRgca7WnAwYF2veOBxouE8JOxKMJjyRZuJpNg++Ykq0bhpecaRbocG5jDVsL8pc5zNN
	kuWrFbOjhZ9Xiq1sgKbUqRVqWthVJtj4gzN5YgjU061fwWXTnpQHDIGFQ57gpDzjP7Jh6xI0BC/4X
	LK6tDRKJnwjtTFDiobICLJ4JCdf67TstuFmo0ym6PraGedG77KfxYx+TwLbjlIsAkrzN+i/763kwn
	0HF9mV3jixY1Oo1Du6Z1T/RDUK1TCyNqsojWIVeSJeUdOzBzSMGSEWEbK2NWSJbG8EbaGOTZAgNyM
	tBrvwDJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDpKy-000u7t-2y;
	Thu, 14 Dec 2023 17:17:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDpKv-000u6J-1u
	for barebox@lists.infradead.org;
	Thu, 14 Dec 2023 17:17:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rDpKp-0001kr-I7; Thu, 14 Dec 2023 18:17:19 +0100
Message-ID: <5fc2e0c4-8bf7-4bab-8652-4a9d7aa98721@pengutronix.de>
Date: Thu, 14 Dec 2023 18:17:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>,
 barebox@lists.infradead.org
Cc: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
References: <20231214163520.2232412-1-sebastien.bourdelin@rtone.fr>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231214163520.2232412-1-sebastien.bourdelin@rtone.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_091725_627279_700E9B7F 
X-CRM114-Status: GOOD (  16.17  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: rpi: add CM4S device id
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sebastien,

On 14.12.23 17:35, Sebastien Bourdelin wrote:
> Introduce the device id for the raspberry CM4S accordingly to [1].
> 
>  [1]: https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#raspberry-pi-revision-codes
> 
> Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

One comment below:

> +	}, {
> +		.hw_id = BCM2711_BOARD_REV_CM4_S,
> +		.init = rpi_eth_init,

Did you check that this is equally applicable on the RPI4?
This ends up calling rpi_get_usbethaddr(), but that one
calls GET_MAC_ADDRESS on the mbox interface, so I am not
sure whether this is applicable to bcmgenet or not.

Cheers,
Ahmad

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

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



