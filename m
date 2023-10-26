Delivery-date: Thu, 26 Oct 2023 23:33:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw7yn-0053O5-Ux
	for lore@lore.pengutronix.de; Thu, 26 Oct 2023 23:33:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw7ym-0005tQ-Fg
	for lore@pengutronix.de; Thu, 26 Oct 2023 23:33:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U7McOJYUh5zDuPK2gco+9/kY8BpkvrvEATNsd9AJVzw=; b=BsY1VBD77d0glu9XOfAUtHnipc
	sZasP84L9BH/x/fQH/JAIsXgoOG/BAkSI4D1UB128VxzUY8iOUq5ex5oaaMlKJ9KX9695JzaPgNok
	6ndWl9/QQvaKr0MA5qRqWXHj+/YrjWPTFpYYUst43cfLtLY04NnjIR88Qs+2cbxBTXOrM4f7oBZtF
	0qdIiW3weCi2Z7oPuV+HWZI0M2zY5VgvF5TSlB6SJX2zDe3sxD1iaElRIukv6fDh2t/5JyYd71+1j
	ASmW2ATCC7AevPeKXglPFAaO/FTfuqocR9L9UHRU7vzCwhyF1YzvYSe3O/NQhH0QJcXE/1o8uii/A
	fw1SIM1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7xh-00FBT9-26;
	Thu, 26 Oct 2023 21:32:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7xe-00FBSb-1W
	for barebox@lists.infradead.org;
	Thu, 26 Oct 2023 21:32:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qw7xd-0005bP-9F; Thu, 26 Oct 2023 23:32:13 +0200
Message-ID: <ebc7664f-65ed-964a-437c-20c4dab5b2e6@pengutronix.de>
Date: Thu, 26 Oct 2023 23:32:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20231026144325.4172966-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231026144325.4172966-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_143214_510441_0678AD14 
X-CRM114-Status: GOOD (  18.51  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] usb: gadget: initialize serialnumber
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26.10.23 16:43, Marco Felsch wrote:
> Windows hosts do require the serial number to be set to any ascii string
> to enumerate correctly. Set the serial number if provided or to "unset"
> if not to provide a sane default which works for both hosts.
> 
> Reported-by: Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
> Changelog
> 
> v2:
> - adapt commit message
> - use barebox_get_serial_number() and "unset"
> 
>  drivers/usb/gadget/udc/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/gadget/udc/core.c b/drivers/usb/gadget/udc/core.c
> index b58498680ad1..e7cfa0d5d836 100644
> --- a/drivers/usb/gadget/udc/core.c
> +++ b/drivers/usb/gadget/udc/core.c
> @@ -1204,7 +1204,7 @@ int usb_add_gadget(struct usb_gadget *gadget)
>  	gadget->productname = xstrdup(barebox_get_model());
>  	dev_add_param_string(&gadget->dev, "productname", NULL, NULL,
>  			     &gadget->productname, NULL);
> -	gadget->serialnumber = xstrdup("");
> +	gadget->serialnumber = xstrdup(barebox_get_serial_number() ? : "unset");

Nitpick: xstrdup(NULL) == NULL, so the ternary could be moved out the xstrdup.

>  	dev_add_param_string(&gadget->dev, "serialnumber", NULL, NULL,
>  			     &gadget->serialnumber, NULL);
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



