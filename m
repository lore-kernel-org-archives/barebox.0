Delivery-date: Thu, 09 Jun 2022 16:16:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzIxr-008nto-Du
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 16:16:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzIxp-0007D1-CO
	for lore@pengutronix.de; Thu, 09 Jun 2022 16:16:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRdYpZiWg5C76KcgLhsGjTd7W9bjgNmEAWlaghXFGwk=; b=0SqjId88h2FQm2
	q+bM64AUs6cJtwgaI01UrUaj1obAeZAO7aXPyrb32IErdLIAHfPl41D4nBr6PCpB8DQtLZNrG4gI8
	WSWHLVcUOmqLKqZl+Qp4eVt4E5FxkQgHvjiAL5SNoJQqaukeSBKrL+dNs4aKfggp2Farm1U6LGRxw
	xRQaoUxLb6PLuMo/+p5Xw196Qz2CYSRzLaH5cOc09RZ9is9VMwBlfeomBL9Y61m/H4DdUFKzZ/YGV
	lGJrb+e700Wf6AoWxQ800+eZ8XPacPNMqB0roQ+vhgWwWw5q9HUFg1YEWrIS+jlgBfUtKc0WpKn5G
	tesYoV7gE96jrDicaTCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzIwc-002Qxx-0S; Thu, 09 Jun 2022 14:15:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzIwW-002Qw4-75
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 14:15:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1nzIwU-0006ko-T8; Thu, 09 Jun 2022 16:15:22 +0200
Message-ID: <26ed6d0d-29b6-70d3-d408-e4a790213855@pengutronix.de>
Date: Thu, 9 Jun 2022 16:15:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
 <20220609055922.667016-16-a.fatoum@pengutronix.de>
 <20220609135831.GV1615@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220609135831.GV1615@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_071524_308738_9F5B9F61 
X-CRM114-Status: GOOD (  24.46  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 15/21] clk: rpi: add Raspberry Pi 4 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 09.06.22 15:58, Sascha Hauer wrote:
> On Thu, Jun 09, 2022 at 07:59:16AM +0200, Ahmad Fatoum wrote:
>> Our Raspberry Pi block driver is a hack, but it works well enough for
> 
> s/block/clock?

aye.

> 
> Sascha
> 
>> older Rpis and just needs one more clock to support the SD-Card on the
>> Raspberry Pi 4, so add that. In return, we remove bcm2835-cs, which we
>> won't use on Raspberry Pi 4, because we'll leverage the ARM architected
>> timer instead.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/mach-bcm283x/include/mach/mbox.h |  1 +
>>  drivers/clk/clk-rpi.c                     | 42 +++++++++++++++++------
>>  2 files changed, 32 insertions(+), 11 deletions(-)
>>
>> diff --git a/arch/arm/mach-bcm283x/include/mach/mbox.h b/arch/arm/mach-bcm283x/include/mach/mbox.h
>> index a9f06512bc23..46f9dfc9ea65 100644
>> --- a/arch/arm/mach-bcm283x/include/mach/mbox.h
>> +++ b/arch/arm/mach-bcm283x/include/mach/mbox.h
>> @@ -273,6 +273,7 @@ struct bcm2835_mbox_tag_set_power_state {
>>  #define BCM2835_MBOX_CLOCK_ID_SDRAM	8
>>  #define BCM2835_MBOX_CLOCK_ID_PIXEL	9
>>  #define BCM2835_MBOX_CLOCK_ID_PWM	10
>> +#define BCM2835_MBOX_CLOCK_ID_EMMC2	12
>>  
>>  struct bcm2835_mbox_tag_get_clock_rate {
>>  	struct bcm2835_mbox_tag_hdr tag_hdr;
>> diff --git a/drivers/clk/clk-rpi.c b/drivers/clk/clk-rpi.c
>> index 59ae8e59bac5..71badc04c0f0 100644
>> --- a/drivers/clk/clk-rpi.c
>> +++ b/drivers/clk/clk-rpi.c
>> @@ -40,10 +40,29 @@ static struct clk *rpi_register_firmware_clock(u32 clock_id, const char *name)
>>  	return clk_fixed(name, msg->get_clock_rate.body.resp.rate_hz);
>>  }
>>  
>> -static int bcm2835_cprman_probe(struct device_d *dev)
>> +static int bcm2835_cprman_init(struct device_d *dev)
>>  {
>>  	struct clk *clk_cs;
>>  
>> +	clk_cs = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
>> +	clk_register_clkdev(clk_cs, NULL, "bcm2835-cs");
>> +
>> +	return 0;
>> +}
>> +
>> +static int rpi_cprman_probe(struct device_d *dev)
>> +{
>> +	int (*init)(struct device_d *dev);
>> +
>> +	init = device_get_match_data(dev);
>> +	if (init) {
>> +		int ret;
>> +
>> +		ret = init(dev);
>> +		if (ret)
>> +			return ret;
>> +	}
>> +
>>  	clks[BCM2835_CLOCK_EMMC] =
>>  		rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_EMMC,
>>  					 "bcm2835_mci0");
>> @@ -56,12 +75,15 @@ static int bcm2835_cprman_probe(struct device_d *dev)
>>  	if (IS_ERR(clks[BCM2835_CLOCK_VPU]))
>>  		return PTR_ERR(clks[BCM2835_CLOCK_VPU]);
>>  
>> +	clks[BCM2711_CLOCK_EMMC2] =
>> +		rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_EMMC2,
>> +					 "bcm2711_emmc2");
>> +	if (IS_ERR(clks[BCM2711_CLOCK_EMMC2]))
>> +		return PTR_ERR(clks[BCM2711_CLOCK_EMMC2]);
>> +
>>  	clks[BCM2835_CLOCK_UART] = clk_fixed("uart0-pl0110", 48 * 1000 * 1000);
>>  	clk_register_clkdev(clks[BCM2835_CLOCK_UART], NULL, "uart0-pl0110");
>>  
>> -	clk_cs = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
>> -	clk_register_clkdev(clk_cs, NULL, "bcm2835-cs");
>> -
>>  	clk_data.clks = clks;
>>  	clk_data.clk_num = BCM2711_CLOCK_END;
>>  	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
>> @@ -70,16 +92,14 @@ static int bcm2835_cprman_probe(struct device_d *dev)
>>  }
>>  
>>  static __maybe_unused struct of_device_id bcm2835_cprman_dt_ids[] = {
>> -	{
>> -		.compatible = "brcm,bcm2835-cprman",
>> -	}, {
>> -		/* sentinel */
>> -	}
>> +	{ .compatible = "brcm,bcm2835-cprman", .data = bcm2835_cprman_init },
>> +	{ .compatible = "brcm,bcm2711-cprman" },
>> +	{ /* sentinel */ }
>>  };
>>  
>>  static struct driver_d bcm2835_cprman_driver = {
>> -	.probe	= bcm2835_cprman_probe,
>> -	.name	= "bcm2835-cprman",
>> +	.probe	= rpi_cprman_probe,
>> +	.name	= "raspberrypi-cprman",
>>  	.of_compatible = DRV_OF_COMPAT(bcm2835_cprman_dt_ids),
>>  };
>>  core_platform_driver(bcm2835_cprman_driver);
>> -- 
>> 2.30.2
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
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

