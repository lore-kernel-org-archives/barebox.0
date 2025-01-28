Delivery-date: Tue, 28 Jan 2025 17:50:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tconF-005atT-1U
	for lore@lore.pengutronix.de;
	Tue, 28 Jan 2025 17:50:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tconF-0003l6-G1
	for lore@pengutronix.de; Tue, 28 Jan 2025 17:50:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hoG9OwpbKpdLuXluZ7hCgxamIlkiuUcm47CPbmn/iQc=; b=f2oXNv81tkKtspbch720V3/qUx
	PcEMtuwRrS9kPe1kzDImQYl9fBUKd6Y5pugsFCD5r0VDacsI/8WBLxRsG0vRNjmyqcCemvbxs82DO
	07PlCWGobomw1LkmUezQYoWDa4Ip0vDtEKndoMhbQjBHpofSHA+WnvA8j4e+IMjV0qZH35UWoolPJ
	NiAMlP3uCPs0kwarTvtLjqh4xpM17fbknl08Uj1+kv4h+I0mwsgySF5WPbBzsaPS/WSz7wlUM97s8
	gUaNV4dE53h/3zHnydoxJXw55/5Q/z1Xewse6izJXcM94CNEUGoYKbLYLDwB4547VbjuAy8zIfXJc
	k6pWtbBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcomn-00000005Nxp-2Oxc;
	Tue, 28 Jan 2025 16:50:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcomk-00000005NwY-2Rfm
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 16:50:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tcomj-0003cD-6E; Tue, 28 Jan 2025 17:49:57 +0100
Message-ID: <7aa96251-7318-497a-99c9-c93d2b22cae1@pengutronix.de>
Date: Tue, 28 Jan 2025 17:49:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michael Grzeschik <m.grzeschik@pengutronix.de>,
 barebox@lists.infradead.org
References: <20250128160625.1364798-1-m.grzeschik@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250128160625.1364798-1-m.grzeschik@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_084958_625706_61C421FD 
X-CRM114-Status: GOOD (  22.66  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v4] video: simple-panel: add regulator support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 28.01.25 17:06, Michael Grzeschik wrote:

It's good style to write some message here. ;)

> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> 
> ---
> v3 -> v4: - better bail out if the regulator is set but not available
> v2 -> v3: - reset regulator->power to NULL in case nothing was found
> v1 -> v2: - added the missing signed-off-by
> ---
>  drivers/video/simple-panel.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/video/simple-panel.c b/drivers/video/simple-panel.c
> index 7048e2f51b..905fd94fb7 100644
> --- a/drivers/video/simple-panel.c
> +++ b/drivers/video/simple-panel.c
> @@ -12,6 +12,7 @@
>  #include <fb.h>
>  #include <gpio.h>
>  #include <of_gpio.h>
> +#include <regulator.h>
>  #include <video/backlight.h>
>  #include <video/vpl.h>
>  #include <i2c/i2c.h>
> @@ -25,6 +26,7 @@ struct simple_panel {
>  	struct device_node *backlight_node;
>  	struct backlight_device *backlight;
>  	struct device_node *ddc_node;
> +	struct regulator *power;
>  	int enable_delay;
>  };
>  
> @@ -49,6 +51,8 @@ static int simple_panel_enable(struct simple_panel *panel)
>  	if (panel->enable_delay)
>  		mdelay(panel->enable_delay);
>  
> +	regulator_enable(panel->power);

Conceptually, you power on a device before you toggle its pins, so this
needs to be moved before the enable_gpio toggling.

> +
>  	if (panel->backlight) {
>  		ret = backlight_set_brightness_default(panel->backlight);
>  		if (ret)
> @@ -65,6 +69,8 @@ static int simple_panel_disable(struct simple_panel *panel)
>  	if (panel->backlight)
>  		backlight_set_brightness(panel->backlight, 0);
>  
> +	regulator_disable(panel->power);

Similarly, this should be after the GPIO was dis-asserted.

> +
>  	if (gpio_is_valid(panel->enable_gpio))
>  		gpio_direction_output(panel->enable_gpio,
>  			!panel->enable_active_high);
> @@ -154,6 +160,12 @@ static int simple_panel_probe(struct device *dev)
>  
>  	panel->backlight_node = of_parse_phandle(node, "backlight", 0);
>  
> +	panel->power = regulator_get(dev, "power");
> +	if (IS_ERR(panel->power)) {
> +		dev_warn(dev, "Cannot find regulator\n");
> +		return PTR_ERR(panel->power);

return dev_errp_probe(dev, panel->power, "Cannot find regulator\n");

So:
   - error code is logged
   - EPROBE_DEFER doesn't result in a diagnostic yet
   - the correct log level is used (warning is for issues that the driver
     can recover from)



> +	}
> +
>  	ret = vpl_register(&panel->vpl);
>  	if (ret)
>  		return ret;


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


