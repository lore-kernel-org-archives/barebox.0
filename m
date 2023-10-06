Delivery-date: Fri, 06 Oct 2023 12:05:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qohi0-008DuL-4Q
	for lore@lore.pengutronix.de; Fri, 06 Oct 2023 12:05:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qohhx-0008Ir-TQ
	for lore@pengutronix.de; Fri, 06 Oct 2023 12:05:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JWKQ2hlwlenZZjdyzOcVfqSbC38STYsrPjKCneFJpHA=; b=Bq1C0aUQEG37RY7li/FtCgT9xO
	G2tWD8+EVXDTlkYyp1a5iFTg34MrXg94KaGJXmUBZZUp7g9kMlJLLLB1fIEMxdlU96k9DjeB/vt9x
	8YEBRgUi2lItQyjAX8PYfehT6xmX2Ayfvho8hDl7PtbhCFAVkLnMmkkXUusg3EiMDhuz2ZPpMe1ox
	6rrs0KJiiK3fi9unH3eIIg0jO5l353Y/fngFcv2opMe7QN1ytSC5bqRwMSe6+6ScImIW1kvKQ7kd9
	ha+YVn2HyoNaLRhgk9FaW/PgosZouBNM6JCFh6tW1d/AFMWYuahDiouo8QOqQDr9exHca9SbTlyiw
	34fKUscg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qohgp-005S2K-1H;
	Fri, 06 Oct 2023 10:04:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qohgl-005S1f-0S
	for barebox@lists.infradead.org;
	Fri, 06 Oct 2023 10:04:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qohgj-00080Y-7P; Fri, 06 Oct 2023 12:04:05 +0200
Message-ID: <4820f5dc-6e80-2970-864c-852739f4163e@pengutronix.de>
Date: Fri, 6 Oct 2023 12:04:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20231006054812.4343-1-eagle.alexander923@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231006054812.4343-1-eagle.alexander923@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_030407_174949_AC2179B1 
X-CRM114-Status: GOOD (  17.66  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] nvmem: Add Rockchip OTP controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On 06.10.23 07:48, Alexander Shiyan wrote:
> +static __maybe_unused const struct of_device_id rockchip_otp_match[] = {
> +	{
> +		.compatible = "rockchip,px30-otp",
> +		.data = &px30_data,
> +	},
> +	{
> +		.compatible = "rockchip,rk3308-otp",
> +		.data = &px30_data,
> +	},
> +	{
> +		.compatible = "rockchip,rk3568-otp",
> +		.data = &rk3568_data,
> +	},
> +	{
> +		.compatible = "rockchip,rk3588-otp",
> +		.data = &rk3588_data,
> +	},

Just out of curiosity: Which SoC of these are you using?

Cheers,
Ahmad

> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, rockchip_otp_match);
> +
> +static int rockchip_otp_probe(struct device *dev)
> +{
> +	struct rockchip_otp *otp;
> +	const struct rockchip_data *data;
> +	struct nvmem_device *nvmem;
> +	struct resource *res;
> +	int ret, i;
> +
> +	data = of_device_get_match_data(dev);
> +	if (!data)
> +		return dev_err_probe(dev, -EINVAL, "failed to get match data\n");
> +
> +	otp = kzalloc(sizeof(*otp), GFP_KERNEL);
> +	if (!otp)
> +		return -ENOMEM;
> +
> +	res = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(res)) {
> +		ret = PTR_ERR(res);
> +		goto err_free;
> +	}
> +
> +	otp->data = data;
> +	otp->dev = dev;
> +	otp->base = IOMEM(res->start);
> +
> +	otp->clks = kcalloc(data->num_clks, sizeof(*otp->clks), GFP_KERNEL);
> +	if (!otp->clks) {
> +		ret = -ENOMEM;
> +		goto err_free;
> +	}
> +
> +	for (i = 0; i < data->num_clks; ++i)
> +		otp->clks[i].id = data->clks[i];
> +
> +	ret = clk_bulk_get_optional(dev, data->num_clks, otp->clks);
> +	if (ret)
> +		goto err_clk;
> +
> +	otp->rst = reset_control_get(dev, NULL);
> +	if (IS_ERR(otp->rst)) {
> +		ret = PTR_ERR(otp->rst);
> +		goto err_rst;
> +	}
> +
> +	otp_config.size = data->size;
> +	otp_config.priv = otp;
> +	otp_config.dev = dev;
> +
> +	nvmem = nvmem_register(&otp_config);
> +	if (!IS_ERR(nvmem))
> +		return 0;
> +
> +	ret = PTR_ERR(nvmem);
> +
> +	reset_control_put(otp->rst);
> +
> +err_rst:
> +	clk_bulk_put_all(data->num_clks, otp->clks);
> +
> +err_clk:
> +	kfree(otp->clks);
> +
> +err_free:
> +	kfree(otp);
> +
> +	return ret;
> +}
> +
> +static struct driver rockchip_otp_driver = {
> +	.name	= "rockchip-otp",
> +	.probe	= rockchip_otp_probe,
> +	.of_compatible = DRV_OF_COMPAT(rockchip_otp_match),
> +};
> +device_platform_driver(rockchip_otp_driver);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



