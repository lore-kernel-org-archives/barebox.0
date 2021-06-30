Delivery-date: Wed, 30 Jun 2021 12:19:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyXJl-0008P2-86
	for lore@lore.pengutronix.de; Wed, 30 Jun 2021 12:19:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyXJj-0001nP-Vx
	for lore@pengutronix.de; Wed, 30 Jun 2021 12:19:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k6dF1HuaM/OU1v9T9KBvR2Uft+3+17sbkERTkmYvq/0=; b=IcLTjF520gFovRCWoXq4V7+mUt
	e2ZgxitrJeJoiZNSDZdFztS21oksrlvWbMI4jj0YjxJNFMKwWITSaN7Twq+9RYZY007RSYGyc3kc3
	hoDVRnq0orBfz0Po8n4O1k1+K8s4REHTHrVtOq5+tWRaw/vG8Zp31misSpslfD80HyC6zKzILh91m
	aUJ+VPY7Ic0rYLHQSeXhzs9UAHiAZdBJXymvdCVxK6uTCnjUJUEPN0D4KpCaMH6nPzJVxHdJZVnjd
	phKvODYvRQat2KWpZfcqGVkcmE4NsMxEDcoO/TJp5O+kXW5S4bPV0abEmhrekhr/b6CWk9Ry9WPh0
	Y8W6A/yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyXII-00DaPE-3Q; Wed, 30 Jun 2021 10:18:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyXIC-00DaOC-WA
 for barebox@lists.infradead.org; Wed, 30 Jun 2021 10:18:06 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lyXI8-0001ju-7l; Wed, 30 Jun 2021 12:18:00 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>, barebox@lists.infradead.org
References: <20210629123104.13818-1-michael.riesch@wolfvision.net>
 <20210629123104.13818-2-michael.riesch@wolfvision.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <d230f623-b7e8-faee-98c8-1526e2840425@pengutronix.de>
Date: Wed, 30 Jun 2021 12:17:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210629123104.13818-2-michael.riesch@wolfvision.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_031805_094570_8ECB8C78 
X-CRM114-Status: GOOD (  31.55  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH 1/2] arm: rockchip-rk3568-evb: add hardware id
 detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Michael,

Trent already commented on the device tree overlay part.
This commit here seems applicable regardless,
so in case you want to resend it for upstream inclusion,
some comments are inline.


On 29.06.21 14:31, Michael Riesch wrote:
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>

A short commit message here would be nice, e.g.:

The rk3568 EVB uses a voltage divider to ... etc.

> ---
>  arch/arm/boards/rockchip-rk3568-evb/board.c | 36 +++++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
> index 57c24ed3c..ee8e1b979 100644
> --- a/arch/arm/boards/rockchip-rk3568-evb/board.c
> +++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
> @@ -2,6 +2,7 @@
>  #include <common.h>
>  #include <init.h>
>  #include <mach/bbu.h>
> +#include <aiodev.h>
>  #include <bootsource.h>
>  
>  static int rk3568_evb_probe(struct device_d *dev)
> @@ -34,3 +35,38 @@ static struct driver_d rk3568_evb_board_driver = {
>  	.of_compatible = rk3568_evb_of_match,
>  };
>  coredevice_platform_driver(rk3568_evb_board_driver);
> +
> +static int rk3568_evb_detect_version(void)
> +{

Once more 64-bit rockchip boards are added, they would all execute this
initcall if this board is enabled. For this reason, you need a compatible
check here.

> +	int ret = 0;
> +	int evb_hw_id = 0;

Nitpick: Initializing variables with values that are never read risks introducing
silent bugs once the code that uses it later on changes. If you leave
it uninitialized you get a compiler warning if it's referenced without
initialization.

> +	int evb_hw_id_voltage = 1800;

I am not sure it's a good idea to report the EVB is v1 when the
driver isn't enabled.

> +	struct aiochannel *evb_hw_id_chan;
> +
> +	evb_hw_id_chan = aiochannel_by_name("aiodev0.in_value1_mV");
> +	if (!IS_ERR(evb_hw_id_chan))

In the error case it makes no sense to continue here, you should early exit.

> +		ret = aiochannel_get_value(evb_hw_id_chan, &evb_hw_id_voltage);
> +	if (ret || IS_ERR(evb_hw_id_chan))
> +		pr_warn("couldn't retrieve hardware ID");

early exit

> +
> +	if (evb_hw_id_voltage > 1650) {
> +		evb_hw_id = 1;
> +	} else if (evb_hw_id_voltage > 1350) {
> +		evb_hw_id = 2;
> +	} else if (evb_hw_id_voltage > 1050) {
> +		evb_hw_id = 3;
> +	} else if (evb_hw_id_voltage > 750) {
> +		evb_hw_id = 4;
> +	} else if (evb_hw_id_voltage > 450) {
> +		evb_hw_id = 5;
> +	} else if (evb_hw_id_voltage > 150) {
> +		evb_hw_id = 6;
> +	} else {
> +		evb_hw_id = 7;
> +	}
> +
> +	pr_info("Detected RK3568 EVB%d\n", evb_hw_id);

You could populate a variable, e.g. global.board.revision
here. That would allow using this info in scripts as Trent has described.

> +
> +	return 0;
> +}
> +late_initcall(rk3568_evb_detect_version);

Optimally, you would call the function from the board driver probe above.
At postcore initcall, you wouldn't find the ADC yet, but if you
return EPROBE_DEFER on error from the probe, the probe will be retried
later on at which time it will succeed.

With the deep probe patches Sascha just merged, it is possible to directly
probe dependencies instead of retrying later and hoping it was probed
in-between. It's still not enabled for the EVB here though and it also
needs some code added to aiodev, so for now you could go the EPROBE_DEFER
route (or add a compatible check).

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

