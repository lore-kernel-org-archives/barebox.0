Delivery-date: Mon, 11 Mar 2024 09:44:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjbGN-000ny3-2I
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 09:44:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjbGN-0000HB-4o
	for lore@pengutronix.de; Mon, 11 Mar 2024 09:44:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VOE96BxAD5ngTUNkurB/2TPTv31DDz2Z7OFHDzwAflM=; b=YvNdMVMqZDD/EaB+a71hM3DVKU
	4URNYwSXPOgDO+erB0mwnq5b28y4+8JRqY4aiSHhloAkEkY1e2wTeJpxMIstfKJxzXC8YH6P74N5C
	Ru5jYkI4fDqOTPjULbH6/Wkts0ndqZopb1JE4w+Xb5T0SDhxmYNA55Sq3fx2kTMSbPcPcSiUlSRdH
	P8fI3bgXicxYz0vOanlHFbomS41jJUqEf1ukiFzSadZF+VhUACjIOIXSKuLD9KbA6J7gfNsdTMIR6
	rV+BdZ0oFYN6Wc6auS/ZRMcW9lFPkggGZNq02AvS07MnVMBN0rBisZ7gMUviDgvWga4qQkKeUkQp7
	JM090/wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbFv-00000000fJG-1LpH;
	Mon, 11 Mar 2024 08:43:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbFr-00000000fIL-3R74
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 08:43:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rjbFq-0007YF-E9; Mon, 11 Mar 2024 09:43:30 +0100
Message-ID: <427e9abd-ccc2-44b0-a9db-421269e67e74@pengutronix.de>
Date: Mon, 11 Mar 2024 09:43:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
 <20240308-v2024-02-0-topic-arasan-hs200-support-v1-1-6d50c90485f3@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-1-6d50c90485f3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_014331_957276_6978CEE1 
X-CRM114-Status: GOOD (  17.14  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 01/12] ARM: zynqmp: add sd_dll_reset call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 08.03.24 12:16, Steffen Trumtrar wrote:
> Add a function to reset DLL logic for SD devices.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/mach-zynqmp/firmware-zynqmp.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
> index a2b61efff4..b383ed6f00 100644
> --- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
> +++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
> @@ -511,6 +511,23 @@ static int zynqmp_pm_ioctl(u32 node_id, u32 ioctl_id, u32 arg1, u32 arg2,
>  				   arg1, arg2, out);
>  }
>  
> +/**
> + * zynqmp_pm_sd_dll_reset() - Reset DLL logic
> + *
> + * @node_id:	Node ID of the device
> + * @type:	Reset type
> + *
> + * This function resets DLL logic for the SD device.
> + *
> + * Return:	Returns status, either success or error+reason
> + */
> +int zynqmp_pm_sd_dll_reset(u32 node_id, u32 type)
> +{
> +	return zynqmp_pm_invoke_fn(PM_IOCTL, node_id, IOCTL_SD_DLL_RESET,
> +				   type, 0, NULL);
> +}
> +EXPORT_SYMBOL_GPL(zynqmp_pm_sd_dll_reset);
> +
>  /*
>   * zynqmp_pm_write_ggs() - PM API for writing global general storage (ggs)
>   * @index:	GGS register index
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



