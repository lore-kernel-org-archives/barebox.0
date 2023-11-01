Delivery-date: Wed, 01 Nov 2023 09:52:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qy6y4-00DPa2-Jz
	for lore@lore.pengutronix.de; Wed, 01 Nov 2023 09:52:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qy6xz-0007qA-Ka
	for lore@pengutronix.de; Wed, 01 Nov 2023 09:52:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sgR65ulQMo5K+i4bvBV77v5eUwAMXN8jAyXZC/TeeG4=; b=FpymgreJ6utIjeuq66lyZh1I/5
	YiZQLQcnZt/+gTqQUWp6w1IgaKbLzm2v+2Sr5bYr4S4U4JaE3596ihTXMk+tCQ12zNEggN0/CNpW/
	7yCQ8XzQDUTxbxgFvPPfKUJV8ck4EZBdpFoDBX7jzuzH9o8gB1Y6LACHIo6kOtSnTxgCLvc+fNten
	X8twnCAyCdrUWJTc67dFX3fGoxmiDJP/FoYPVXWVv9GF2nupRNfVD+pGPO+J/hIZ/yatCOBwe3YJz
	7IEphKVW1hF7cnC6yVCLItd4T9H8qf13OYpDSz1lRHACepcHCZOssCEemvDJrThNnUsf8vDWbuRbr
	jxpFbmcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qy6wG-006uBH-0m;
	Wed, 01 Nov 2023 08:51:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qy6wA-006uAg-2U
	for barebox@lists.infradead.org;
	Wed, 01 Nov 2023 08:50:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qy6w6-0007Yy-Tx; Wed, 01 Nov 2023 09:50:50 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qy6w6-005lRs-FH; Wed, 01 Nov 2023 09:50:50 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qy6w6-00HPM1-B8; Wed, 01 Nov 2023 09:50:50 +0100
Date: Wed, 1 Nov 2023 09:50:50 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231101085050.GD3359458@pengutronix.de>
References: <20231026144325.4172966-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026144325.4172966-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231101_015054_811667_020BF8C2 
X-CRM114-Status: GOOD (  21.58  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/2] usb: gadget: initialize serialnumber
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Oct 26, 2023 at 04:43:24PM +0200, Marco Felsch wrote:
> Windows hosts do require the serial number to be set to any ascii string
> to enumerate correctly. Set the serial number if provided or to "unset"
> if not to provide a sane default which works for both hosts.
> 
> Reported-by: Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> Changelog
> 
> v2:
> - adapt commit message
> - use barebox_get_serial_number() and "unset"
> 

Applied, thanks

Sascha

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
>  	dev_add_param_string(&gadget->dev, "serialnumber", NULL, NULL,
>  			     &gadget->serialnumber, NULL);
>  
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


