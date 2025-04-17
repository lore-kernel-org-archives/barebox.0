Delivery-date: Thu, 17 Apr 2025 11:30:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5La4-001oz9-1R
	for lore@lore.pengutronix.de;
	Thu, 17 Apr 2025 11:30:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5La3-0000yD-SY
	for lore@pengutronix.de; Thu, 17 Apr 2025 11:30:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R60Gniw0eqxyBkvOJqdUf0rXWY/M3YTZ87lKa2LfFgI=; b=dHrFjmvUR+13rQNtltLeuecQk0
	E+ZV9IvB4wPsX0x7EO2B+44HrED2ZESoatoehR6QqlZFsBF24TtSiB7CjMiqAomUlfe6rUh6SvMwd
	CwHe4orDAXknC91ePODB7SRedmbki+YF67HlbjupOEsTjhYFeFj0OQGlMJJfn/94W4Y90oCANIG0D
	XW7dUlqXwcgPTpgYLlJxR8CYQvqr3E+7qYx0JZ3+ZhTuMgrHgQWkYKoSnyNlcTDI6+0opncYKpH+x
	g0G2It2LVEwa3J1vMXKnpNJzGETjnBkdzw2PnLbdznSXal2atMBt1mQdJ0S/p7HLzL2Bb6uV6NgvU
	LR14/UJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5LZd-0000000CSym-3HH3;
	Thu, 17 Apr 2025 09:30:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5LYr-0000000CSk5-42tg
	for barebox@lists.infradead.org;
	Thu, 17 Apr 2025 09:29:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5LYq-0000Ss-P2; Thu, 17 Apr 2025 11:29:32 +0200
Message-ID: <501a5fd3-bafa-445a-9c92-acfe22bae763@pengutronix.de>
Date: Thu, 17 Apr 2025 11:29:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lars Schmidt <l.schmidt@pengutronix.de>, barebox@lists.infradead.org
Cc: Lars Schmidt <lsc@pengutronix.de>
References: <20250416153008.1898565-1-l.schmidt@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250416153008.1898565-1-l.schmidt@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_022934_004287_5AA68940 
X-CRM114-Status: GOOD (  18.18  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] pinctrl: at91: add sama5d3 compatible after DT regression
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Lars,

On 4/16/25 17:30, Lars Schmidt wrote:
> From: Lars Schmidt <lsc@pengutronix.de>
> 
> Commit f9abec74133a6 ("ARM: dts: microchip: Remove additional compatible
> string from PIO3 pinctrl nodes") removed compatible string
> atmel,at91sam9x5-pinctrl, which was used by pinctrl driver for sama3d3 in
> barebox. Compatible string atmel,sama5d3-pinctrl was left in list, so
> that needs to be included for identification.
> 
> The removal caused an issue during boot process. The system did still boot,
> but no bootloader console was shown. Leaving the user without
> possibility to interact with the bootloader.
> 
> The DT ABI breakage has been reported upstream:
> 
> https://lore.kernel.org/all/fcdb9283-07aa-4d50-ac4d-317b0a4e5f7e@pengutronix.de/
> 
> Signed-off-by: Lars Schmidt <lsc@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  drivers/pinctrl/pinctrl-at91.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
> index a3372a5035..ddc725187b 100644
> --- a/drivers/pinctrl/pinctrl-at91.c
> +++ b/drivers/pinctrl/pinctrl-at91.c
> @@ -370,6 +370,9 @@ static struct at91_pinctrl_mux_ops at91sam9x5_ops = {
>  
>  static struct of_device_id at91_pinctrl_dt_ids[] = {
>  	{
> +		.compatible = "atmel,sama5d3-pinctrl",
> +		.data = &at91sam9x5_ops,
> +	}, {
>  		.compatible = "atmel,at91rm9200-pinctrl",
>  		.data = &at91rm9200_ops,
>  	}, {

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



