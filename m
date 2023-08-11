Delivery-date: Fri, 11 Aug 2023 14:51:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qURcA-00GbHg-W4
	for lore@lore.pengutronix.de; Fri, 11 Aug 2023 14:51:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qURc9-0000op-5A
	for lore@pengutronix.de; Fri, 11 Aug 2023 14:51:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ythEj9tYbSDamI+w749EAF0XuMOCNS2EfsIy7z8qbV0=; b=v12u8oFVrw8/TUKuK5Se3zVoHs
	YMh6dybTjvjXop0WxkhY+8XWsOky+BDqMZmDA8G5vEuNfB6YalgloUTRkCYm1RW8QZrvtFXG5c5V6
	GKRsXOvi7HJF71Rn3DKOEFg/KIFa7pCzitXDF8bRIecX4T9+O5ORvtBeCzu0f/80qzwYdiuHNAG+A
	gPkbCnh/S+2LwhYScWmnwBK8wWNzof5UPl32N3rKlsAq4nkujClNa5VGbD8mybwGB2i6ev/uJfXbI
	oLgiz5sh9zgBa1bHocRWSpNX/OxkqzmU/Yn0JeCPlerL7WnekXzfXOR+wI38kRjaNGBbPBC78Z5if
	piqyqoDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qURbB-00Ae3d-2B;
	Fri, 11 Aug 2023 12:50:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qURb8-00Ae2w-1C
	for barebox@lists.infradead.org;
	Fri, 11 Aug 2023 12:50:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qURb7-0000dT-5P; Fri, 11 Aug 2023 14:50:33 +0200
Message-ID: <dc090b61-4602-fdaa-9fdc-105f0573a890@pengutronix.de>
Date: Fri, 11 Aug 2023 14:50:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20230811115325.2646286-1-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230811115325.2646286-1-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_055034_415354_EA5CDB48 
X-CRM114-Status: GOOD (  17.17  )
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
Subject: Re: [PATCH v1 1/2] net: ksz9477: add support for ksz9893 switch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 11.08.23 13:53, Oleksij Rempel wrote:
> Add support for Microchip KSZ9893 switch. No additional changes seems to
> be needed.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/net/ksz9477.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
> index 61142aa97b..a6a8144479 100644
> --- a/drivers/net/ksz9477.c
> +++ b/drivers/net/ksz9477.c
> @@ -476,6 +476,7 @@ static const struct of_device_id microchip_switch_dt_ids[] = {
>  	{ .compatible = "microchip,ksz8563" },
>  	{ .compatible = "microchip,ksz9477" },
>  	{ .compatible = "microchip,ksz9563" },
> +	{ .compatible = "microchip,ksz9893" },
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, microchip_switch_dt_ids);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



