Delivery-date: Thu, 31 Jul 2025 11:09:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhPHs-005YU2-0Q
	for lore@lore.pengutronix.de;
	Thu, 31 Jul 2025 11:09:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhPHr-0002Go-D2
	for lore@pengutronix.de; Thu, 31 Jul 2025 11:09:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SnhHjj0Bvw/mFbCh5ZJyvkBGNEk1DfmUml0yan9iXdI=; b=AF8yEJCpBf5H95FFey7bN+PUxt
	41hSLqspXuFPKe/PCrceqrBqbhRdJrsGHjiN8bVnHbGOpBAouV+NWuGLTZFL8PsefxlUTgo45mueD
	tk2UImaqgiJqmP0KoMM3SpU/RdAsWq1nyq5zpMV1F9rHcTSYnKaPY1iejmfKLBFX7fGWMonIi7Tp4
	R6+eWDzcyGCvjcFGwt0wWJzsF0Ge8eUcQbe6ylKgMP9vLbLK6o1iArAohcqKBdNKtkMhVBD751jUn
	on1UtPBQvkO27pllFXMlMYuo32q3BLudVkmZPVR+SHzzKuhzG9UOyUxMuXhOYhFfmajJa44QoWM0G
	txBaBGVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhPHM-00000003ExR-3oIz;
	Thu, 31 Jul 2025 09:08:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhPF4-00000003Em0-2LV0
	for barebox@lists.infradead.org;
	Thu, 31 Jul 2025 09:06:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uhPF3-0001dO-AD; Thu, 31 Jul 2025 11:06:25 +0200
Message-ID: <4e6b4a19-aec8-4bdd-addc-199122fa76ec@pengutronix.de>
Date: Thu, 31 Jul 2025 11:06:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bo Sun <bo@mboxify.com>, barebox@lists.infradead.org
References: <20250717131339.1127485-1-bo@mboxify.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250717131339.1127485-1-bo@mboxify.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_020626_606335_5B9291AD 
X-CRM114-Status: GOOD (  38.96  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] driver: convert struct device comments to kernel-doc
 style
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Bo,

On 7/17/25 15:13, Bo Sun wrote:
> Convert the comments of struct device from the old style to standard
> kernel-doc style.
> 
> No functional changes.
> 
> Signed-off-by: Bo Sun <bo@mboxify.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> + * struct device - The basic device structure
> + * @name: This member is used to match with a driver.

While technically correct, we don't encourage match by name, but instead
match by match table, most often device tree compatible.

I will send a patch to update the docs once this is applied.

Thanks,
Ahmad

> This is a
> + *        descriptive name and could be MPC5XXX_ether or imx_serial.
> + *        Unless absolutely necessary, should not be modified
> + *        directly and dev_set_name() should be used instead.



> + * @unique_name: Device's unique name as obtained by calling dev_id().
> + *               Internal field, do not access it directly.
> + * @id: Used to uniquely identify a device in the system. The id
> + *      will show up under /dev/ as the device's name. Usually this
> + *      is something like eth0 or nor0.
> + * @dma_coherent: DMA coherence setting for this device.
> + * @resource: Array of resources for this device.
> + * @num_resources: Number of resources in the resource array.
> + * @platform_data: Board specific information about this device.
> + * @priv: Device class specific data storage.
> + * @driver_data: Alternative name for @priv
> + * @type_data: In case this device is a specific device, this pointer
> + *             points to the type specific device, i.e. eth_device
> + * @driver: The driver for this device.
> + * @list: The list of all devices.
> + * @bus_list: Our bus.
> + * @children: Our children.
> + * @sibling: Our siblings.
> + * @active: The list of all devices which have a driver
> + * @parent: The device's "parent" device, the device to which it is attached.
> + *          If parent is NULL, the device is a top-level device.
> + * @pm_domain: Attached power domain.
> + * @bus: Type of bus device is on.
> + * @parameters: The parameters for this device. This is used to carry information
> + *              of board specific data from the board code to the device driver
> + * @dma_mask: DMA mask.
> + * @dma_offset: DMA offset.
> + * @detect: For devices which take longer to probe, this is called when the driver
> + *          should actually detect client devices.
> + * @rescan: Callback to rescan the device.
> + * @deferred_probe_reason: If a driver probe is deferred, this stores the last error.
> + */
>  struct device {
> -	/*! This member (and 'type' described below) is used to match
> -	 * with a driver. This is a descriptive name and could be
> -	 * MPC5XXX_ether or imx_serial. Unless absolutely necessary,
> -	 * should not be modified directly and dev_set_name() should
> -	 * be used instead.
> -	 */
>  	char *name;
>  
> -	/*! This member is used to store device's unique name as
> -	 *  obtained by calling dev_id(). Internal field, do not
> -	 *  access it directly.
> -	 */
>  	char *unique_name;
> -	/*! The id is used to uniquely identify a device in the system. The id
> -	 * will show up under /dev/ as the device's name. Usually this is
> -	 * something like eth0 or nor0. */
>  	int id;
>  
>  	enum dev_dma_coherence dma_coherent;
> @@ -49,36 +73,29 @@ struct device {
>  	struct resource *resource;
>  	int num_resources;
>  
> -	void *platform_data; /*! board specific information about this device */
> +	void *platform_data;
>  
> -	/*! Devices of a particular class normaly need to store more
> -	 * information than struct device holds.
> -	 */
>  	union {
>  		void *priv;
>  		void *driver_data;
>  	};
> -	/*! In case this device is a specific device, this pointer
> -	 * points to the type specific device, i.e. eth_device
> -	 */
> +
>  	void *type_data;
>  
> -	struct driver *driver; /*! The driver for this device */
> +	struct driver *driver;
>  
> -	struct list_head list;     /* The list of all devices */
> -	struct list_head bus_list; /* our bus */
> -	struct list_head children; /* our children */
> +	struct list_head list;
> +	struct list_head bus_list;
> +	struct list_head children;
>  	struct list_head sibling;
> -	struct list_head active;   /* The list of all devices which have a driver */
> +	struct list_head active;
>  
> -	struct device *parent;   /* our parent, NULL if not present */
> +	struct device *parent;
>  
> -	struct generic_pm_domain *pm_domain;	/* attached power domain */
> +	struct generic_pm_domain *pm_domain;
>  
>  	struct bus_type *bus;
>  
> -	/*! The parameters for this device. This is used to carry information
> -	 * of board specific data from the board code to the device driver. */
>  	struct list_head parameters;
>  
>  	struct list_head cdevs;
> @@ -90,7 +107,6 @@ struct device {
>  		struct device_node *device_node;
>  		struct device_node *of_node;
>  	};
> -
>  	const struct of_device_id *of_id_entry;
>  
>  	u64 dma_mask;
> @@ -100,16 +116,10 @@ struct device {
>  #ifdef CONFIG_CMD_DEVINFO
>  	struct list_head info_list;
>  #endif
> -	/*
> -	 * For devices which take longer to probe this is called
> -	 * when the driver should actually detect client devices
> -	 */
> +
>  	int (*detect)(struct device *);
>  	void (*rescan)(struct device *);
>  
> -	/*
> -	 * if a driver probe is deferred, this stores the last error
> -	 */
>  	char *deferred_probe_reason;
>  };
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



