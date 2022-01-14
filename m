Delivery-date: Fri, 14 Jan 2022 09:50:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8IHs-001svR-0R
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 09:50:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8IHq-0002dm-Bs
	for lore@pengutronix.de; Fri, 14 Jan 2022 09:50:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Cc:References:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ssQpvc3FzbdHEL8gv/OUdTw2UmMWeenIqhKxA8M/pBE=; b=UP0Yg7iH1GV/eYwnwXR+1Z4ggn
	/xL9uvO59ZmmRehK2PopAYqEUHWs3S3gQ259LOp6bGTFI64izSTNinOsiiU2SjKgKi8M54/1c0DK8
	FH9PhIPG/ERwEmtarqO1AAmkbZnQWB8aVkc3icsH411+83X19xJOXK6JfXBkxfDRga2d4hooNKoqG
	4VNMw2WpHP4ouT7T0fO4Td7inH5PMDkWjD4qveIEs70rQAyXeQ927018YYXb4tavUPXi+yFerpOHu
	6czfDzKuRachyBHccNLqF1uLuxmdxR3PHFzd5NkWEPk2+b9/T94m7szwHFWoXa0Nr809peHF7mh4L
	FDdlrTkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8IGi-008LoH-F9; Fri, 14 Jan 2022 08:49:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8IGc-008LmK-LO
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 08:49:04 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n8IGa-0002ON-UC; Fri, 14 Jan 2022 09:49:00 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20220114084757.311697-1-a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <54068c9b-f272-d89c-1e8e-b12f72864c06@pengutronix.de>
Date: Fri, 14 Jan 2022 09:49:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220114084757.311697-1-a.fatoum@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_004902_745048_4AE9E203 
X-CRM114-Status: GOOD (  25.01  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] pinctrl: rockchip: use alias rather than full of name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 14.01.22 09:47, Ahmad Fatoum wrote:
> From: Michael Riesch <michael.riesch@wolfvision.net>
> 
> We've so far relied on GPIO controllers being named "gpioX", while the
> binding mandates gpio controllers being just called "gpio". This already
> broke rk3288 support and rk3568.dtsi upstream also differs from the
> version in barebox' arch/arm/dts in that regard.
> 
> Instead, do like Linux does and use the alias to match the controllers to
> the GPIO banks with a fallback to probe order.
> 
> Fixes: 3f2f5980d517 ("dts: update to v5.16-rc1")
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> [afa: drop strncmp in favor of id comparison, reword commit message]
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

@Sascha, can this go into a master? V7 Rockchip boards should be broken
without this.

> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index 5cf77c58b218..ea748b600419 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -877,18 +877,24 @@ static struct rockchip_pin_ctrl *rockchip_pinctrl_get_soc_data(
>  	struct rockchip_pin_bank *bank;
>  	char *name;
>  	int grf_offs, pmu_offs, drv_grf_offs, drv_pmu_offs, i, j;
> +	int gpio = 0;
>  
>  	match = of_match_node(rockchip_pinctrl_dt_match, node);
>  	ctrl = (struct rockchip_pin_ctrl *)match->data;
>  
>  	for_each_child_of_node(node, np) {
> +		int id;
> +
>  		if (!of_find_property(np, "gpio-controller", NULL))
>  			continue;
>  
> +		id = of_alias_get_id(np, "gpio");
> +		if (id < 0)
> +			id = gpio++;
> +
>  		bank = ctrl->pin_banks;
>  		for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
> -			name = bank->name;
> -			if (!strncmp(name, np->name, strlen(name))) {
> +			if (bank->bank_num == id) {
>  				bank->of_node = np;
>  				if (!rockchip_get_bank_data(bank, dev))
>  					bank->valid = true;
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

