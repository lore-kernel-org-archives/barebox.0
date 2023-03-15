Delivery-date: Wed, 15 Mar 2023 09:06:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcM9i-001GII-1S
	for lore@lore.pengutronix.de; Wed, 15 Mar 2023 09:06:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcM9h-0002T0-GS
	for lore@pengutronix.de; Wed, 15 Mar 2023 09:06:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N4beNT5PoPCt4btuzvQX6iQpOC2ivjWn9Sm0uNGSVW0=; b=DChy6ZVvU/KtULI81Etx4NlWeG
	9PPRqTUPPKL9bR1UzktWtPt64c+5FZuTmtEhSOkWydudqc5Ik6PiYKBEjLA11IG6YwY2671VWLmZD
	C4Vg2vSSusIR8zuqjSaGXMEG10hz/iFsRFdT7uuzS6R5oRslATaaGBoXmmBgVLy0QYp4zWn9m7MES
	t9CKhPzGVjuTYBtUjUq8bKVyu7W3EFpV8k6OyKTD25BM47CtoIQU0enwuhdzCOxxPUKEUemIcFmmP
	SdPXZcr71fGcHX+fQ9S3WNn6ARAiowREcaalOiwpySC7Iih+q+4FriqaP30zxszjZeWuM3I8rUgFF
	UcyaNd0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcM8J-00CkCK-17;
	Wed, 15 Mar 2023 08:05:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcM8G-00CkAI-0p
	for barebox@lists.infradead.org;
	Wed, 15 Mar 2023 08:05:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pcM89-00027J-O4; Wed, 15 Mar 2023 09:05:05 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pcM89-000800-Cp; Wed, 15 Mar 2023 09:05:05 +0100
Date: Wed, 15 Mar 2023 09:05:05 +0100
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20230315080505.GL7446@pengutronix.de>
References: <20230314144909.2809581-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230314144909.2809581-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_010512_310035_53591956 
X-CRM114-Status: GOOD (  20.39  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Let NET_USB select PHYLIB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 14, 2023 at 03:49:09PM +0100, Uwe Kleine-König wrote:
> drivers/net/usb/usbnet.c which is compiled with NET_USB=y uses
> phy_device_connect() which is only available with PHYLIB=y. So select
> PHYLIB from NET_USB and in turn remove the same select from some options
> that depend on PHYLIB.
> 
> Fixes: 2263e27814f1 ("net: introduce phylib")
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/net/usb/Kconfig | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/usb/Kconfig b/drivers/net/usb/Kconfig
> index 870f24ca9661..6dc6a24aee93 100644
> --- a/drivers/net/usb/Kconfig
> +++ b/drivers/net/usb/Kconfig
> @@ -1,12 +1,12 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  menuconfig NET_USB
>  	depends on USB_HOST
> +	select PHYLIB
>  	bool "USB network support"
>  
>  if NET_USB
>  
>  config NET_USB_ASIX
> -	select PHYLIB
>  	bool "Asix compatible"
>  
>  config USB_NET_AX88179_178A
> @@ -21,7 +21,6 @@ config USB_NET_AX88179_178A
>  	    * Sitcomm LN-032
>  
>  config NET_USB_SMSC95XX
> -	select PHYLIB
>  	bool "SMSC95xx"
>  
>  config NET_USB_RTL8152
> 
> base-commit: e3b5c9b60447eb266cb4895ee4662b1b613545b4
> -- 
> 2.39.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


