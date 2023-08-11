Delivery-date: Fri, 11 Aug 2023 14:51:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qURc7-00GbH5-Cs
	for lore@lore.pengutronix.de; Fri, 11 Aug 2023 14:51:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qURc5-0000oM-Gm
	for lore@pengutronix.de; Fri, 11 Aug 2023 14:51:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yv8r/qRNZpqzHRg9pnt0Hs21ysmucDjQQHqP5D0YpOY=; b=GF5Mef91jHmwyayN13Pv/cdvv8
	HNQxMfbcg7HHKy0WBXv/+I8dz/Ic+hKHnRRRL6kj6eOjIzrkc9FGQaF+RmKqGyqeiWiVNYARdD5Gn
	0+yfKoA4PwezDG79Zz43ycPugmOP+95WmbYu1pkFcJaAdiwYtv4fLM8DvR7oE0nZsbD+A0cLmpZak
	y0Y+7hsFGsgpHTkU8xgt5I3LUrh3REs4uG92O4DRWtETE7+hn5/HOo7vXUfU3JAlyzNPRek2DVqlD
	/oNzMZGGbxu/IC3KgqBJQQc78YFbXTY3YjwM8WdYcrW/QgFpzoyTnmW2AI2FT61e7Cwy+0URTmjjS
	zF8x5FdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qURaq-00Ae0b-1m;
	Fri, 11 Aug 2023 12:50:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qURan-00Adzm-0k
	for barebox@lists.infradead.org;
	Fri, 11 Aug 2023 12:50:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qURah-0000Vg-Ip; Fri, 11 Aug 2023 14:50:07 +0200
Message-ID: <24507806-3299-67de-966a-9537b21a03d3@pengutronix.de>
Date: Fri, 11 Aug 2023 14:50:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20230811114819.2646027-1-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230811114819.2646027-1-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_055013_286990_4144C994 
X-CRM114-Status: GOOD (  18.28  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] ARM: add Skov i'MX8MP based board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Oleksij,

On 11.08.23 13:48, Oleksij Rempel wrote:
> Add support for the Skov i'MX8MP based system.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

with change request in last paragraph below adressed.

> +static int skov_imx8m_probe(struct device *dev)
> +{
> +	int emmc_bbu_flag = 0;
> +	int sd_bbu_flag = 0;
> +
> +	if (bootsource_get() == BOOTSOURCE_MMC && bootsource_get_instance() == 1) {
> +		of_device_enable_path("/chosen/environment-sd");
> +		sd_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
> +	} else {
> +		of_device_enable_path("/chosen/environment-emmc");
> +		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
> +	}
> +
> +	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", sd_bbu_flag);
> +	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id skov_imx8m_of_match[] = {
> +	{ .compatible = "skov,imx8mp" },

Are you sure, you don't want to have a -someboard suffix in case you need
to differentiate future variants?


> +	pmic@25 {
> +		compatible = "nxp,pca9450c";

FYI, there is a driver here:
https://lore.barebox.org/barebox/20230724075258.1840671-1-h.assmann@pengutronix.de/

That would allow you to get $global.system.reset if that's something that's
intereting to you.

> +config MACH_SKOV_IMX8M
> +	bool "Skov IMX8Mx based boards"
> +	select ARCH_IMX8MP
> +	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> +	select FIRMWARE_IMX8MP_ATF
> +	select ARM_SMCCC
> +	select MCI_IMX_ESDHC_PBL
> +	select IMX8M_DRAM
> +	select I2C_IMX_EARLY
> +	select DSA
> +	select DRIVER_NET_KSZ9477

Please drop last two selects. You should only select what's actually required
for booting. At most, you could do an imply here. Also, please enable in defconfig
for compile coverage. There you can enable DSA and KSZ9477 support.

Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



