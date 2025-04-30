Delivery-date: Thu, 01 May 2025 00:16:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uAFjQ-000xSc-2R
	for lore@lore.pengutronix.de;
	Thu, 01 May 2025 00:16:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uAFjQ-00040V-6F
	for lore@pengutronix.de; Thu, 01 May 2025 00:16:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qt/i2cB5OPzDzMuZBPhoz9to3tdJVdh46eTrdmeH2ps=; b=T6OaGfxOU0cOIwi8WVzMU6kxwk
	deZoI5FmhTWmYxx7+LJkIWQZRWSIJRLmvipZvOcEQCvHc1yRIA874NRp57wXChipI/4yLAYIUNDKU
	bCSxj30mhTZNVAIGIulWoPot0td1KHNzOVTyI2kHb1TzFxbTprV5JMJLKxQZMfWH8YSNxd8UgeHXo
	YY2b6d8n9RsXtwflIgRC96wYtx1D3PzZtHAMj4rTiCCtlp/Ltbt44FrOfdOhT5KnhbTaMAfou9NUX
	1j5gOUrptoxHFlbytLhTen847zXkugRg5R5gY34LLFW8zVjyyNBY3RBTgSBcuYFsO1QULogN+w3C2
	a4RbhZgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAFit-0000000E99M-1om2;
	Wed, 30 Apr 2025 22:16:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAFir-0000000E98y-0nPT
	for barebox@lists.infradead.org;
	Wed, 30 Apr 2025 22:16:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uAFip-0003wJ-TA; Thu, 01 May 2025 00:16:08 +0200
Message-ID: <8332c117-709f-48be-ac9a-53efd5299c92@pengutronix.de>
Date: Thu, 1 May 2025 00:16:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michael Grzeschik <m.grzeschik@pengutronix.de>,
 barebox@lists.infradead.org
References: <20250430-imx9optee-v1-1-3fcb0facfed8@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250430-imx9optee-v1-1-3fcb0facfed8@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_151609_231550_1A411DCD 
X-CRM114-Status: GOOD (  19.31  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arch: arm: imx: esdctl: limit ram to 1GB on imx93 in case
 OPTEE is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Michael,

On 4/30/25 23:27, Michael Grzeschik wrote:
> In MX93 the ELE (Edge Lock Enclave) is limited to communicate with
> messages addressed under 1.5GB. The ELE can not reach the memory between
> (0xE0000000-0xFFFFFFFF).
> 
> So we limit the usable memory in case OPTEE is used.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  arch/arm/mach-imx/esdctl.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index 701ca0ac1f3..79f697d6288 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -589,6 +589,15 @@ resource_size_t imx9_ddrc_sdram_size(void)
>  		mem += memory_sdram_size(cols, rows, banks, width);
>  	}
>  
> +	/* In MX93 the ELE is limited to comunicate with messages
> +	 * under 1.5GB address space. This limits the overal memory
> +	 * to be 1GB in case OPTEE is used.
> +	 */
> +	if (IS_ENABLED(CONFIG_PBL_OPTEE)) {
> +		if (mem > 0x40000000)
> +			mem = 0x40000000;
> +	}

Doesn't this affect the memory detected in barebox proper as well?
I think you want to add this to imx93_barebox_entry() only.

Cheers,
Ahmad

> +
>  	return mem;
>  }
>  
> 
> ---
> base-commit: 873b572763d38ab4100d218d0a3614f79b596077
> change-id: 20250430-imx9optee-31d2dfc926bf
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



