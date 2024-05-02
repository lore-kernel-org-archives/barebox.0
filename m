Delivery-date: Thu, 02 May 2024 17:19:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2YDm-00FHb6-1Z
	for lore@lore.pengutronix.de;
	Thu, 02 May 2024 17:19:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2YDl-0004WV-Qk
	for lore@pengutronix.de; Thu, 02 May 2024 17:19:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RAp/gXa78Z+oj7uFvVX6liSW7FD3Iywe3LBMFcBf5Go=; b=WDrz0e9P0MeNUjZptAvF3aCFNO
	AUW6VZkN2vSEmFBUDugF2JxdH3gW2u8y0APovyNgXrkrz8p0W5eQYK0oJPb+viXk6I87dN06CAKiQ
	kwnhydB5XpHI4qRXTALk86SshikxUQ0euDjxWbqo5M0tEHK71HHLL0Y0wQrcq+GS2W/S67rTNVwTj
	ozg5AeOCB5n15aMTHc0tecLSKSJpBT1WKPg/DViAr3EkXFtZUXhl02YMQNHFv04Y5CtpH68DKKksL
	AsTnlJzO8k2PKwUPVFYiZuzXrqkSOemhr+wOnYp4R4BHakjRY7PLeBwQPDvtwt+GGOEPUA/2dbxcp
	PAA/SMhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2YDL-0000000D5Uw-0k10;
	Thu, 02 May 2024 15:19:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2YDH-0000000D5TV-3bs1
	for barebox@lists.infradead.org;
	Thu, 02 May 2024 15:19:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2YDG-0004Le-MN
	for barebox@lists.infradead.org; Thu, 02 May 2024 17:19:10 +0200
Message-ID: <36534163-87c9-4afd-bb50-9ec13aa58cd1@pengutronix.de>
Date: Thu, 2 May 2024 17:19:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20240502151757.3964461-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240502151757.3964461-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_081911_943723_EE42734B 
X-CRM114-Status: GOOD (  21.60  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] net: dsa: ksz9477: always toggle reset gpio if
 available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 02.05.24 17:17, Ahmad Fatoum wrote:
> The barebox driver currently only ensures that the switch is out of
> reset, but doesn't actually trigger a reset pulse.
> 
> The Linux driver, on the other hand, holds reset active for 10ms and
> then waits a whopping 100ms after reset deassertion.
> 
> This seems excessive by a thousandfold for at least KSZ9893R[1], whose
> datasheet states:
> 
>   After the de-assertion of reset, it is recommended to wait a minimum of
>   100µs before starting to program the device through any interface.
> 
> Therefore, let's pulse the reset like Linux does and give the switch 100
> microseconds before continuing with the driver probe.
> 
> [1]: DS00002420E-page 176
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

I forgot to include the patch prefix, but IMO all three patches are
master material.

Cheers,
Ahmad

> ---
>  drivers/net/ksz9477.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
> index 1abea9d04017..5c5f4ec8d995 100644
> --- a/drivers/net/ksz9477.c
> +++ b/drivers/net/ksz9477.c
> @@ -433,8 +433,10 @@ static int microchip_switch_probe(struct device *dev)
>  	if (IS_ERR(gpio)) {
>  		dev_warn(dev, "Failed to get 'reset' GPIO (ignored)\n");
>  	} else if (gpio) {
> -		mdelay(1);
> +		gpiod_set_value(gpio, true);
> +		mdelay(10);
>  		gpiod_set_value(gpio, false);
> +		udelay(100);
>  	}
>  
>  	ksz_reset_switch(dev->priv);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



