Delivery-date: Thu, 31 Jul 2025 11:05:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhPEG-005XwC-0Y
	for lore@lore.pengutronix.de;
	Thu, 31 Jul 2025 11:05:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhPEF-0001Ss-Hs
	for lore@pengutronix.de; Thu, 31 Jul 2025 11:05:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Iv2cck/joYP8QdWvNVP1rw1NH2KiNfmC2U490cI9MHQ=; b=NvK7lLszis3EIlFKR9ft5V/TMv
	QnWQ67ZjC6nG5qr0/A8mH5ngQrDIlmq7Sh9M/nSe+gSNz7dGvcn1wAcdfvB11ajOw3OZ9DTD1+9Hy
	AX8jqwaoNssrvEmJgMiF1h7JdpjKeZt8XtgEzHACVpCAo1geXn/DUfau/6g/+onQBK9NputC+Xawp
	sph88IDfuRm+0P7ztTeDQ7JP4Mj7Z68lB5s4WW2Eq+CeoXnRkK/WUujcoXm6v22rH58/gvjL5nuH4
	6JND04xBmZLnBHqqRtXkykRHDcV4T8d9rvCUdlDM+F/vd0qyJFyOBQ/DZ5eYgLrpM6tScKoi47FZ9
	sD/NVySQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhPDn-00000003EW9-2NOc;
	Thu, 31 Jul 2025 09:05:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhPCW-00000003EQV-1mBA
	for barebox@lists.infradead.org;
	Thu, 31 Jul 2025 09:03:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uhPCV-0001B5-83; Thu, 31 Jul 2025 11:03:47 +0200
Message-ID: <ee9e0f93-e8f8-4610-b44f-c12e7588f007@pengutronix.de>
Date: Thu, 31 Jul 2025 11:03:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250729045607.612019-1-chalianis1@gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250729045607.612019-1-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_020348_463641_9A5735E3 
X-CRM114-Status: GOOD (  14.36  )
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
Subject: Re: [PATCH] clk: clkdev: fix format security.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 7/29/25 06:56, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> not a string literal and no format
> arguments [-Werror=format-security]
> 
> Fixes: dfcdce8eec30 ("arm: add common clkdev")
> Signed-off-by: Chali Anis <chalianis1@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  drivers/clk/clkdev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
> index dbe998b6af35..1ce2eb95b8f9 100644
> --- a/drivers/clk/clkdev.c
> +++ b/drivers/clk/clkdev.c
> @@ -273,7 +273,7 @@ int clk_add_alias(const char *alias, const char *alias_dev_name, char *id,
>  	if (IS_ERR(r))
>  		return PTR_ERR(r);
>  
> -	l = clkdev_alloc(r, alias, alias_dev_name);
> +	l = clkdev_alloc(r, alias, "%s", alias_dev_name);
>  	clk_put(r);
>  	if (!l)
>  		return -ENODEV;

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



