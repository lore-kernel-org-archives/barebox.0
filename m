Delivery-date: Fri, 11 Jul 2025 14:55:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaDI2-00GOZf-0n
	for lore@lore.pengutronix.de;
	Fri, 11 Jul 2025 14:55:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaDI1-0001pu-MG
	for lore@pengutronix.de; Fri, 11 Jul 2025 14:55:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JMacxmcIr6cLwhD4MM6d4FbnN1BZ+ITBEQbJjLPyCIc=; b=n6YMpVEWV/yxfAgbeEOCrBwo8T
	YbMhJJrcEm/lV01da5QOcw5zMmFFg6SdUQ74/Xam7hIb1MGsVgKN1cNH3VRmNBAHYwiMS93IvtUlV
	UxDKM/OGrqYqCy8x29gpR6HaCZWsmqVtIcLgOkxHcdLRuHVbIooNlYHdUGRISavtYyIHx7iQrHXiT
	p8mT2gzxvrvxdn0y3p/Bk+d9/9Nht+g8bNsd68Mz+sXRe9XukBi1ymbGa4dd9krVOjp7Jmz9Sw743
	/jCOmfClwoYDMwoeeEWGs1UwFPMI7iFB5+5WPA2ueQIJ8BBUn9SWlMPHM/4olQmAvMv/dCMAnE9gF
	qtGvGFLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaDHa-0000000Enbj-3TpR;
	Fri, 11 Jul 2025 12:55:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaDHY-0000000EnbI-0fgi
	for barebox@lists.infradead.org;
	Fri, 11 Jul 2025 12:55:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uaDHW-0001SD-Vv; Fri, 11 Jul 2025 14:55:15 +0200
Message-ID: <03829b63-0d2c-495a-abfb-89192170eb24@pengutronix.de>
Date: Fri, 11 Jul 2025 14:55:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bo Sun <bo@mboxify.com>, barebox@lists.infradead.org
References: <20250711122729.108015-1-bo@mboxify.com>
 <20250711122729.108015-3-bo@mboxify.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250711122729.108015-3-bo@mboxify.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_055516_204466_AF7C0F57 
X-CRM114-Status: GOOD (  16.54  )
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
Subject: Re: [PATCH 3/3] of: base: fix of_match_node function documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 7/11/25 14:27, Bo Sun wrote:
> Fix grammar error, correct structure name, and add missing return
> value description.
> 
> Signed-off-by: Bo Sun <bo@mboxify.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  drivers/of/base.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 1439e55a0a..903adb3670 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -778,11 +778,13 @@ struct device_node *of_find_node_with_property(struct device_node *from,
>  EXPORT_SYMBOL(of_find_node_with_property);
>  
>  /**
> - * of_match_node - Tell if an device_node has a matching of_match structure
> + * of_match_node - Tell if a device_node has a matching of_device_id structure
>   *      @matches:       array of of device match structures to search in
>   *      @node:          the of device structure to match against
>   *
>   *      Low level utility function used by device matching.
> + *
> + *      Return: pointer to the best matching of_device_id structure, or NULL
>   */
>  const struct of_device_id *of_match_node(const struct of_device_id *matches,
>  					 const struct device_node *node)
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



