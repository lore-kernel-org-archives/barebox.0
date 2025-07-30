Delivery-date: Wed, 30 Jul 2025 08:23:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh0EE-005Azk-0X
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 08:23:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh0ED-0005y7-K4
	for lore@pengutronix.de; Wed, 30 Jul 2025 08:23:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V5AhHcezE7I6VAKUs3RbUo0S8crbvnC+rQMlMe1/WCU=; b=syJXVc2tVbTbPfOsm7Ct8FR5bO
	331Cskp1JrdsKRl86f/awou/yqkKjipmC0ZnQEtz8XMa8RJ46MaAD0+8xdgX+YNbtlVG2+YOSBjyl
	i9zBD656mCSqCZuoKx0VVmSjhpKejsJZX/LkVcwQmxsqvHeatobgt22ppzJGPgCnuwHhxn2R8ojEV
	ppOb1vMFdVxbiY9+DYNf6DXs7SBQJHDJ1vPs24UVf2xkb0s21gEvkWXTrmNaNeAbIxwFY1Kqb7ZRd
	fa5NtxT8lsa7UQQjVmuZzTyOZlDL9hmp6fVQMlTo/GdAxadstMkz4wkmHIhaozEL5Qkk7vOiAF7sd
	ebviRQUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh0De-00000000n99-3Hb7;
	Wed, 30 Jul 2025 06:23:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh0Dc-00000000n8h-0kXb
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 06:23:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uh0Da-0005tZ-NF; Wed, 30 Jul 2025 08:23:14 +0200
Message-ID: <c05d5300-4911-40b9-b8e3-a87de43a4c91@pengutronix.de>
Date: Wed, 30 Jul 2025 08:23:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250730035010.3318600-1-chalianis1@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250730035010.3318600-1-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_232316_228025_64628654 
X-CRM114-Status: GOOD (  17.06  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: clk-fixed-factor: compile clk of provider only if it
 is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Anis,

On 30.07.25 05:50, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> This permits to not compile when it's not used, fix undefined
> reference error.

Normally undefined references are garbage collected by the linker if
the code that references them is going to be discarded as well.

We have configurations with and without OF support that make use
of clocks in CI I think, so I am curious to know what configuration
you used to provoke the error.

Cheers,
Ahma

> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  drivers/clk/clk-fixed-factor.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
> index d2c808d40c63..ea04a4bf7f0f 100644
> --- a/drivers/clk/clk-fixed-factor.c
> +++ b/drivers/clk/clk-fixed-factor.c
> @@ -97,6 +97,8 @@ struct clk_hw *clk_hw_register_fixed_factor(struct device *dev,
>  						       flags, mult, div));
>  }
>  
> +#ifdef CONFIG_COMMON_CLK_OF_PROVIDER
> +
>  /**
>   * of_fixed_factor_clk_setup() - Setup function for simple fixed factor clock
>   */
> @@ -130,3 +132,4 @@ static int of_fixed_factor_clk_setup(struct device_node *node)
>  }
>  CLK_OF_DECLARE(fixed_factor_clk, "fixed-factor-clock",
>  		of_fixed_factor_clk_setup);
> +#endif


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


