Delivery-date: Tue, 02 Apr 2024 16:07:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrenP-003gGG-07
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 16:07:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrenO-00078P-EF
	for lore@pengutronix.de; Tue, 02 Apr 2024 16:07:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UDET7fe4iueonYnu77xBiGPWdMYbo01CrJeUnzsO8ts=; b=kKQE57UvWax4wXCDv0tyxWdPWq
	M8sdNVgcru5UOxHH6ALeNtXS4H59i4Czmhc3tPv0LQAUa/p4SvdvO4ysiXqyx47DRBVBChKsTGXjA
	sPB0gtqmXJ8qIFeeb0AHpYQE7/n8ZnvX0CfW+qSP+GuPZZA6UO1gReImqNS7qT3ruh6fR4NEDUXqM
	+Uo3s3OOcCbOg8o639syjtPLFKuCZY5Gxfq7H2sQkYtXjcf1WGpOrj+++VEFTp7PusbexPPYkhlAt
	hgA7DzcsZZIJsayVeqJvf1dPlgc6S4ztGlGlO6W8jTGYt6oxBEqVORB6UbbbfIgvv/tMQwl6MQ9sl
	bMMYglMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rremt-0000000BVRq-0go4;
	Tue, 02 Apr 2024 14:06:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rremp-0000000BVRK-21Cz
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 14:06:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rremn-0006Hy-Ka; Tue, 02 Apr 2024 16:06:49 +0200
Message-ID: <41331053-3e69-4f2b-a5dc-2fb6d37d5a9f@pengutronix.de>
Date: Tue, 2 Apr 2024 16:06:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: barebox@lists.infradead.org
Cc: lgo@pengutronix.de
References: <20240402135035.3700601-1-a.fatoum@pengutronix.de>
 <20240402135035.3700601-4-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240402135035.3700601-4-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_070651_560267_6AC529C5 
X-CRM114-Status: GOOD (  17.22  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] input: imx-keypad: remove now-duplicate debug
 messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 02.04.24 15:50, Ahmad Fatoum wrote:
> With the recent addition of CONFIG_EVENT_EVBUG, the debug messages in

s/CONFIG_INPUT_EVBUG/CONFIG_EVENT_EVBUG/

Please let me know if I should resend.

> both i.MX keypad driver adds no extra value, so remove it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/input/imx_keypad.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
> index 2c003905a7d9..e57a884630aa 100644
> --- a/drivers/input/imx_keypad.c
> +++ b/drivers/input/imx_keypad.c
> @@ -72,7 +72,6 @@
>  struct imx_keypad {
>  	struct input_device input;
>  	struct clk *clk;
> -	struct device *dev;
>  	void __iomem *mmio_base;
>  
>  	struct poller_struct poller;
> @@ -199,10 +198,6 @@ static void imx_keypad_fire_events(struct imx_keypad *keypad,
>  
>  			input_report_key_event(&keypad->input, keypad->keycodes[code],
>  					       matrix_volatile_state[col] & (1 << row));
> -
> -			dev_dbg(keypad->dev, "Event code: %d, val: %d",
> -				keypad->keycodes[code],
> -				matrix_volatile_state[col] & (1 << row));
>  		}
>  	}
>  }
> @@ -367,7 +362,6 @@ static int __init imx_keypad_probe(struct device *dev)
>  
>  	keypad = xzalloc(sizeof(struct imx_keypad));
>  
> -	keypad->dev = dev;
>  	iores = dev_request_mem_resource(dev, 0);
>  	if (IS_ERR(iores))
>  		return PTR_ERR(iores);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



