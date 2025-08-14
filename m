Delivery-date: Thu, 14 Aug 2025 11:47:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umUY1-000Svr-38
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 11:47:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umUY0-0000fL-P2
	for lore@pengutronix.de; Thu, 14 Aug 2025 11:47:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aZDufafGazwSu3GBwap7gDmUzXL6TwWrL+/WTjH5FgA=; b=vv4t0jmrY607YMyLs31mfXqsVj
	JfNRskWI45kRZMGiZgQvNpO8r1CisauLavrFgUECt+YISHI1OtoYkY7ejubIxjjJLd1AvGDavjB+u
	yBNcwdoFrqGM4Keja1uIVr0k2XmNnzKyyTcJUthyvLimjiruRlz98bd/LvPHnfwB6lSbLLnEFAP2w
	xOa6dupQFvquef5x+vVAtRbywQaZulxzc+BQ3Azns4oYCSQi2v6ZwZfDz2ywKg+sYMqRHELsxnPis
	iFlwqsoiC5TJKEbDUWf+9Tt/HqxqoubB+IXoVo89Wjh5zJvyJ1dEZyU3ZLCIBcGZupMFLpNAx8+Px
	AbzJeyCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umUXV-0000000GTWO-2iVm;
	Thu, 14 Aug 2025 09:46:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umSCf-0000000G3m4-3u6a
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 07:16:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umSCe-0006Q9-MT; Thu, 14 Aug 2025 09:16:48 +0200
Message-ID: <f063040f-9dca-427e-b241-aa1c248ebff9@pengutronix.de>
Date: Thu, 14 Aug 2025 09:16:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250813214103.254178-1-tobias@waldekranz.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250813214103.254178-1-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_001649_973033_D1815CDD 
X-CRM114-Status: GOOD (  19.69  )
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
Subject: Re: [PATCH] efi: fix probing of EFI devices with parents
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Tobias,

On 13.08.25 23:40, Tobias Waldekranz wrote:
> The refactor in the referenced commit sends in the match function as
> the context data - instead of the handle we are looking for.
> 
> This meant that efi_find_device() always returned NULL, leading to all
> EFI devices with parent handles not being probed.
> 
> Fix this by sending in the handle instead.
> 
> Fixes: 4a5a9b58b568 ("drive: bus: make use of new bus_find_device helper")
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>

Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks for fixing this before it hit a release!

I just sent out a regression test, so this particular issue
can't go unnoticed in future.

Cheers,
Ahmad

> ---
>  drivers/efi/efi-device.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
> index 0e6f75659f..f0e22bd140 100644
> --- a/drivers/efi/efi-device.c
> +++ b/drivers/efi/efi-device.c
> @@ -40,8 +40,7 @@ static struct efi_device *efi_find_device(efi_handle_t handle)
>  {
>  	struct device *dev;
>  
> -	dev = bus_find_device(&efi_bus, NULL, efi_device_match_handle,
> -			      efi_device_match_handle);
> +	dev = bus_find_device(&efi_bus, NULL, handle, efi_device_match_handle);
>  	if (dev)
>  		return container_of(dev, struct efi_device, dev);
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


