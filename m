Delivery-date: Wed, 22 Feb 2023 13:42:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUoS6-00FK46-Ua
	for lore@lore.pengutronix.de; Wed, 22 Feb 2023 13:42:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUoS5-0003oA-Mv
	for lore@pengutronix.de; Wed, 22 Feb 2023 13:42:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xM8Adsi3go4fZW0MWVEc2JBaqqWCM5c9W3fm57Wh6P8=; b=0UitPaGZsVd81CksJ1kQaT9T8f
	XHnIeHWkAzClnZmvzSeX9D39fT11G+1GzlTWi8KfCk2XwDP5+W3i5feKusVKothnVJQ4GMSF4QSbx
	3lV/hCseBL0W1iORVYZS7JrXRi9Kd0wTE3uwp49MFJQpTEz6QjO61jwehQT5+KjYtUU1m4aDuX9qp
	OlXL/BLglCa92lglmM6mSJ+88gKgRjZHLvdjLpjMFyBlflQSpW+4IV0NDZpau6sSybfwUmmVblqIc
	FrOGt3U9uwLBAnrYGpXuT001cinGC+YgfmoFPvOt8lotIdb9sESe1bNL4NAXjqb+Xc1oDPiCRw0sa
	mKFR7loA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUoQk-00CQAc-Gu; Wed, 22 Feb 2023 12:41:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUoQe-00CQ9M-3X
	for barebox@lists.infradead.org; Wed, 22 Feb 2023 12:41:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pUoQc-0003cP-Fw; Wed, 22 Feb 2023 13:40:58 +0100
Message-ID: <67522bee-c7ed-cf9d-fa59-069d833ed25c@pengutronix.de>
Date: Wed, 22 Feb 2023 13:40:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Bastian Krause <bst@pengutronix.de>, barebox@lists.infradead.org
Cc: lst@pengutronix.de, afa@pengutronix.de
References: <20230222122320.1494205-1-bst@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230222122320.1494205-1-bst@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_044100_174592_7BD1664F 
X-CRM114-Status: GOOD (  18.09  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: make DRIVER_NET_DESIGNWARE_IMX8 select MFD_SYSCON
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22.02.23 13:23, Bastian Krause wrote:
> The driver includes mfd/syscon.h and uses
> syscon_regmap_lookup_by_phandle():
> 
>   eqos-imx8 30bf0000.ethernet@30bf0000.of: probe failed: Function not implemented
> 
> Select MFD_SYSCON to fix this.
> 
> Fixes: b6fb740819 ("net: eqos: add i.MX8MP support")
> Signed-off-by: Bastian Krause <bst@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Driver is still in next, so this could be squashed.

Cheers,
Ahmad

> ---
>  drivers/net/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index a9fc073d57..25b46ccb11 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -111,6 +111,7 @@ config DRIVER_NET_DESIGNWARE_IMX8
>  	bool "Designware EQOS i.MX8 Ethernet driver"
>  	depends on HAS_DMA && COMMON_CLK && OFTREE && (ARCH_IMX8M || COMPILE_TEST)
>  	select DRIVER_NET_DESIGNWARE_EQOS
> +	select MFD_SYSCON
>  	help
>  	  This option enables support for the Designware EQOS MAC implemented on
>  	  the NXP i.MX8 SoCs.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



