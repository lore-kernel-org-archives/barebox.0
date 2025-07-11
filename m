Delivery-date: Fri, 11 Jul 2025 14:45:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaD8E-00GOSc-1T
	for lore@lore.pengutronix.de;
	Fri, 11 Jul 2025 14:45:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaD8D-0002dP-Q3
	for lore@pengutronix.de; Fri, 11 Jul 2025 14:45:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XNoRKdB1+o0FlCMy4ys9yVgFZrfEn9llV56/l3RZ3oY=; b=pFMRDHM1Feb/2IVaHalR/zh0m3
	RYEsIx2BUeLKClX0H1F7mlJPosTPFRJTXpsIccyMJ3v7AWTQOoXBQbM00W0lwUuKGEMrYJMctdxUv
	e8iwPUXWi3rJigMo9K8RG8wWC2jSZmGK/mEfg8Ir6pCgkwxW8J5FgsozW/ERWiJ6fQi4And1yv0WF
	XDK0COs6FiL26HELjxDtLQiNeJjmLzkyDHQwHAo5+se0JIQ9agd1npWrmf/kMyG4w82Ue3FaUEUED
	q/yiUcPUg9HB0XGrziXsyh9T8ZvYHdE/1WTsoeW2wFhf9j6OSYJ/egvaSxagPQXBLFeZqII5JZ/UK
	BtaiaE3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaD7m-0000000EmGV-2Z1F;
	Fri, 11 Jul 2025 12:45:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaD2d-0000000ElSq-307k
	for barebox@lists.infradead.org;
	Fri, 11 Jul 2025 12:39:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uaD2c-0006jI-0f; Fri, 11 Jul 2025 14:39:50 +0200
Message-ID: <f83fc1bb-0d12-450b-9a16-ca2e3d4678b8@pengutronix.de>
Date: Fri, 11 Jul 2025 14:39:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bo Sun <bo@mboxify.com>, barebox@lists.infradead.org
References: <20250711122729.108015-1-bo@mboxify.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250711122729.108015-1-bo@mboxify.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_053951_757560_89A3DA45 
X-CRM114-Status: GOOD (  29.33  )
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
Subject: Re: [PATCH 1/3] driver: clean up comment formatting and spacing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Bo,

On 7/11/25 14:27, Bo Sun wrote:
> - Fixed a missing closing parenthesis in the comment for DEVICE_ID_SINGLE
> - Cleaned up indentation and alignment of multi-line comments in struct device
> - Removed redundant spaces in function pointer declarations
> 
> No functional changes.
> 
> Signed-off-by: Bo Sun <bo@mboxify.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/device.h | 18 ++++++++++--------
>  include/driver.h |  8 ++++----
>  2 files changed, 14 insertions(+), 12 deletions(-)
> 
> diff --git a/include/device.h b/include/device.h
> index bc3a348e2e..97fa040365 100644
> --- a/include/device.h
> +++ b/include/device.h
> @@ -37,7 +37,7 @@ struct device {
>  	/*! This member is used to store device's unique name as
>  	 *  obtained by calling dev_id(). Internal field, do not
>  	 *  access it directly.
> -	  */
> +	 */

Would you like to use the occasion to switch this over to kerneldoc
style? Kerneldoc is much more common in newer barebox code and would
allow us using the same infrastructure in future.

Cheers,
Ahmad

>  	char *unique_name;
>  	/*! The id is used to uniquely identify a device in the system. The id
>  	 * will show up under /dev/ as the device's name. Usually this is
> @@ -58,14 +58,16 @@ struct device {
>  		void *priv;
>  		void *driver_data;
>  	};
> -	void *type_data;     /*! In case this device is a specific device, this pointer
> -			      * points to the type specific device, i.e. eth_device
> -			      */
> +	/*! In case this device is a specific device, this pointer
> +	 * points to the type specific device, i.e. eth_device
> +	 */
> +	void *type_data;
> +
>  	struct driver *driver; /*! The driver for this device */
>  
>  	struct list_head list;     /* The list of all devices */
> -	struct list_head bus_list; /* our bus            */
> -	struct list_head children; /* our children            */
> +	struct list_head bus_list; /* our bus */
> +	struct list_head children; /* our children */
>  	struct list_head sibling;
>  	struct list_head active;   /* The list of all devices which have a driver */
>  
> @@ -102,8 +104,8 @@ struct device {
>  	 * For devices which take longer to probe this is called
>  	 * when the driver should actually detect client devices
>  	 */
> -	int     (*detect) (struct device *);
> -	void	(*rescan) (struct device *);
> +	int (*detect)(struct device *);
> +	void (*rescan)(struct device *);
>  
>  	/*
>  	 * if a driver probe is deferred, this stores the last error
> diff --git a/include/driver.h b/include/driver.h
> index dd50a7aa3c..510a32186d 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -36,13 +36,13 @@ struct driver {
>  	const char *name;
>  
>  	struct list_head list;
> -	struct list_head bus_list; /* our bus            */
> +	struct list_head bus_list; /* our bus */
>  
>  	/*! Called if an instance of a device is found */
> -	int     (*probe) (struct device *);
> +	int (*probe)(struct device *);
>  
>  	/*! Called if an instance of a device is gone. */
> -	void     (*remove)(struct device *);
> +	void (*remove)(struct device *);
>  
>  	struct bus_type *bus;
>  
> @@ -61,7 +61,7 @@ struct driver {
>  
>  /* dynamically assign the next free id */
>  #define DEVICE_ID_DYNAMIC	-2
> -/* do not use an id (only one device available */
> +/* do not use an id (only one device available) */
>  #define DEVICE_ID_SINGLE	-1
>  
>  /* Register devices and drivers.
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



