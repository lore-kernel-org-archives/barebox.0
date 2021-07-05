Delivery-date: Mon, 05 Jul 2021 19:19:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m0SGA-0007tf-RE
	for lore@lore.pengutronix.de; Mon, 05 Jul 2021 19:19:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m0SG9-0007Cb-Qw
	for lore@pengutronix.de; Mon, 05 Jul 2021 19:19:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fXCatGmtL9QchyUDzO0m6Hd3ZMDsBbaxXvLbTid8afg=; b=f7wgl6oBZ/Vd19D3vYuTZUJtAf
	LQ4PRknta/My69QvjJVSICLDPgcHGTE78g03wz4KK2wwVpI7EAe8AA/ryOCwE5nHPW7fWru5JWg+r
	iRdyae2pibOMs8Ne6kANPeS9+BgQb1JbiLPFwFRn2SuXkZL0QFcwCmchnKsuo6LangGMj2xmQFcxq
	5RzDDLpyvgQSRJ5yePxFLQj1k7OMapNZUcG6+9JsS8+u+Bnii7AfflomLNllu8seD+2CANaW8diDE
	E+2982nng77LGFW0CAHcoe5joRi7YtHTIVIpKgac95tqpj+UVG5dMJ7ULN0WFtVhPj6E269Q9KLRb
	28/VadgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0SEt-009aRE-Cr; Mon, 05 Jul 2021 17:18:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0SEn-009aOz-To
 for barebox@lists.infradead.org; Mon, 05 Jul 2021 17:18:31 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1m0SEk-00075Z-VA; Mon, 05 Jul 2021 19:18:26 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>, barebox@lists.infradead.org
References: <20210705160457.7346-1-michael.riesch@wolfvision.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <09dff368-1586-3ea6-3904-039c24f68823@pengutronix.de>
Date: Mon, 5 Jul 2021 19:18:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210705160457.7346-1-michael.riesch@wolfvision.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_101830_040221_ECA24123 
X-CRM114-Status: GOOD (  28.33  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] arm: rockchip-rk3568-evb: add hardware id detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.07.21 18:04, Michael Riesch wrote:
> The RK3568 EVB uses a voltage divider to determine the hardware ID of
> the board. At the moment, the voltage levels for seven EVB variants are
> defined. This commit adds a late_initcall to the board code that reads
> out the voltage and populates the hardware ID as environment variable.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

I just sent out a fixup that Sascha can squash if both patches
are ok with him.

> ---
> v2:
> - add compatible check
> - return early in case the voltage cannot be read
> - populate hardware ID as environment variable
> 
>  arch/arm/boards/rockchip-rk3568-evb/board.c | 56 +++++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
> index 57c24ed3c..f8b257e57 100644
> --- a/arch/arm/boards/rockchip-rk3568-evb/board.c
> +++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
> @@ -2,7 +2,13 @@
>  #include <common.h>
>  #include <init.h>
>  #include <mach/bbu.h>
> +#include <aiodev.h>
>  #include <bootsource.h>
> +#include <environment.h>
> +#include <globalvar.h>
> +#include <magicvar.h>
> +
> +static bool machine_is_rk3568_evb = false;
>  
>  static int rk3568_evb_probe(struct device_d *dev)
>  {
> @@ -11,6 +17,7 @@ static int rk3568_evb_probe(struct device_d *dev)
>  
>  	barebox_set_model("Rockchip RK3568 EVB");
>  	barebox_set_hostname("rk3568-evb");
> +	machine_is_rk3568_evb = true;
>  
>  	if (bootsource == BOOTSOURCE_MMC && instance == 1)
>  		of_device_enable_path("/chosen/environment-sd");
> @@ -34,3 +41,52 @@ static struct driver_d rk3568_evb_board_driver = {
>  	.of_compatible = rk3568_evb_of_match,
>  };
>  coredevice_platform_driver(rk3568_evb_board_driver);
> +
> +static int rk3568_evb_detect_hwid(void)
> +{
> +	int ret;
> +	int evb_hwid_voltage;
> +	struct aiochannel *evb_hwid_chan;
> +	char *evb_hwid;
> +
> +	if (!machine_is_rk3568_evb)
> +		return 0;
> +
> +	evb_hwid_chan = aiochannel_by_name("aiodev0.in_value1_mV");
> +	if (IS_ERR(evb_hwid_chan)) {
> +		ret = PTR_ERR(evb_hwid_chan);
> +		goto err_hwid;
> +	}
> +
> +	ret = aiochannel_get_value(evb_hwid_chan, &evb_hwid_voltage);
> +	if (ret)
> +		goto err_hwid;
> +
> +	if (evb_hwid_voltage > 1650) {
> +		evb_hwid = "1";
> +	} else if (evb_hwid_voltage > 1350) {
> +		evb_hwid = "2";
> +	} else if (evb_hwid_voltage > 1050) {
> +		evb_hwid = "3";
> +	} else if (evb_hwid_voltage > 750) {
> +		evb_hwid = "4";
> +	} else if (evb_hwid_voltage > 450) {
> +		evb_hwid = "5";
> +	} else if (evb_hwid_voltage > 150) {
> +		evb_hwid = "6";
> +	} else {
> +		evb_hwid = "7";
> +	}
> +	pr_info("Detected RK3568 EVB%s\n", evb_hwid);
> +
> +	globalvar_add_simple("board.hwid", evb_hwid);
> +
> +	return 0;
> +
> +err_hwid:
> +	pr_err("couldn't retrieve hardware ID");
> +	return ret;
> +}
> +late_initcall(rk3568_evb_detect_hwid);
> +
> +BAREBOX_MAGICVAR(global.board.hwid, "The board hardware ID");
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

