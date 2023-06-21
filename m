Delivery-date: Wed, 21 Jun 2023 11:17:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBty9-00FTk9-R7
	for lore@lore.pengutronix.de; Wed, 21 Jun 2023 11:17:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBty6-0003dh-TS
	for lore@pengutronix.de; Wed, 21 Jun 2023 11:17:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UR8xc4PV7z1qGNM//qW5UAYTWj5jGnRtjZAN52c2p9I=; b=o18l58kG7kZQjaJqfd99op2Ljq
	nDP/EBR6Xc6HbcCuc10CQO4WhxYwlKm7K70BdC2NV+/CvhSG55qNPzeTjfWk0eNOf2lNjXRrX0IrA
	ZN40fI11SUKTtuJHERHc6PJ2x1FVEuI06OM4YEno/7BfY9loviHM5oVSsThQ1Bow5hECkaYRJI3lF
	8iDNN8ES+e8ReCGiIbENC2I9MOuemyetVL0qVl/xvLOoxiegeUYv68pf4ZdzoNa3w/oEf9DL1QdKT
	vBMCyziBPAAZ5fNBzf68k5/2Vufvt83yHjan2JxU5GVm0r73yN3h3SaLHs/3IxYb5irJrt1lz9M8P
	CGrzc9yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBtwu-00DpGu-0r;
	Wed, 21 Jun 2023 09:16:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBtwq-00DpFU-2e
	for barebox@lists.infradead.org;
	Wed, 21 Jun 2023 09:16:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBtwo-0003Yd-O4; Wed, 21 Jun 2023 11:16:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBtwo-0008V9-Go; Wed, 21 Jun 2023 11:16:18 +0200
Date: Wed, 21 Jun 2023 11:16:18 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230621091618.GD18491@pengutronix.de>
References: <20230621090329.2652672-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230621090329.2652672-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_021621_186419_1FB2FA83 
X-CRM114-Status: GOOD (  51.30  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/2] usb: add basic USB Type-C framework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 21, 2023 at 11:03:29AM +0200, Ahmad Fatoum wrote:
> Board code or user scripts may want to base their decisions on the
> state of a USB-C connector:
> 
>   - Is the USB role that of a USB device or of a USB host?
>   - Is the board being powered externally?
>   - Is a debug accessory attached?
> 
> For this reason, we add here a very simplified Type-C driver core inspired
> by Linux that just registers a device and populates it with three parameters:
> 
>   - $dev.usb_role = { device, host }
>   - $dev.pwr_role = { sink, source }
>   - $dev.accessory = { none, audio, debug }
> 
> These variables are updated by struct typec_operations::poll, which
> corresponds to the IRQ handler for the Linux drivers. The poll function
> is called on every variable access and early exits if no IRQ was
> indicated.
> 
> In future, we may elect to register the poll function with the poller
> framework, so it's called cyclically, like we do for e.g. Ethernet link
> detection, but for now, this is probably sufficient.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - add missing <linux/usb/role.h> header from fixup
>   - split framework from driver

Applied, thanks

Sascha

> ---
>  Documentation/user/usb.rst        |  12 ++
>  drivers/usb/Kconfig               |   2 +
>  drivers/usb/Makefile              |   1 +
>  drivers/usb/typec/Kconfig         |   6 +
>  drivers/usb/typec/Makefile        |   2 +
>  drivers/usb/typec/class.c         | 179 ++++++++++++++++++++++++++++++
>  include/linux/usb/role.h          |  12 ++
>  include/linux/usb/typec.h         |  54 +++++++++
>  include/linux/usb/typec_altmode.h |  44 ++++++++
>  9 files changed, 312 insertions(+)
>  create mode 100644 drivers/usb/typec/Kconfig
>  create mode 100644 drivers/usb/typec/Makefile
>  create mode 100644 drivers/usb/typec/class.c
>  create mode 100644 include/linux/usb/role.h
>  create mode 100644 include/linux/usb/typec.h
>  create mode 100644 include/linux/usb/typec_altmode.h
> 
> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
> index f2f57ead98d4..20e223da93b5 100644
> --- a/Documentation/user/usb.rst
> +++ b/Documentation/user/usb.rst
> @@ -247,6 +247,18 @@ mode. Once a specific mode has been selected it can't be changed later anymore.
>    musb-hdrc: 28/31 max ep, 16384/16384 memory
>    barebox:/
>  
> +USB Type-C support
> +------------------
> +
> +barebox can usually stay oblivious to the type of connector used. Sometimes though,
> +board code and user scripts may want to base their decisions on how a USB-C connector
> +is connected. Type C drivers can thus register with the Type C driver core to
> +export a number of device parameters:
> +
> +- ``$typec0.usb_role`` = { ``none``, ``device``, ``host`` }
> +- ``$typec0.pwr_role`` = { ``sink``, ``source`` }
> +- ``$typec0.accessory`` = { ``none``, ``audio``, ``debug`` }
> +
>  USB Gadget autostart Support
>  ----------------------------
>  
> diff --git a/drivers/usb/Kconfig b/drivers/usb/Kconfig
> index e43c28113f41..d66a75635d46 100644
> --- a/drivers/usb/Kconfig
> +++ b/drivers/usb/Kconfig
> @@ -24,6 +24,8 @@ source "drivers/usb/misc/Kconfig"
>  
>  endif
>  
> +source "drivers/usb/typec/Kconfig"
> +
>  source "drivers/usb/gadget/Kconfig"
>  
>  source "drivers/usb/musb/Kconfig"
> diff --git a/drivers/usb/Makefile b/drivers/usb/Makefile
> index 8f1557d5d497..0cac50c0f39b 100644
> --- a/drivers/usb/Makefile
> +++ b/drivers/usb/Makefile
> @@ -8,5 +8,6 @@ obj-$(CONFIG_USB_STORAGE)	+= storage/
>  obj-y += host/
>  obj-y += otg/
>  obj-y += gadget/
> +obj-y += typec/
>  obj-$(CONFIG_USB)		+= misc/
>  
> diff --git a/drivers/usb/typec/Kconfig b/drivers/usb/typec/Kconfig
> new file mode 100644
> index 000000000000..56f10e6ca549
> --- /dev/null
> +++ b/drivers/usb/typec/Kconfig
> @@ -0,0 +1,6 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +
> +config TYPEC
> +	prompt "Compile USB Type-C framework support" if COMPILE_TEST
> +	bool
> diff --git a/drivers/usb/typec/Makefile b/drivers/usb/typec/Makefile
> new file mode 100644
> index 000000000000..6b8347f10c06
> --- /dev/null
> +++ b/drivers/usb/typec/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +obj-$(CONFIG_TYPEC)		+= class.o
> diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
> new file mode 100644
> index 000000000000..7f498550f80e
> --- /dev/null
> +++ b/drivers/usb/typec/class.c
> @@ -0,0 +1,179 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * USB Type-C Connector Class
> + *
> + * Copyright (C) 2017, Intel Corporation
> + * Author: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> + */
> +
> +#include <module.h>
> +#include <driver.h>
> +#include <linux/usb/role.h>
> +#include <linux/usb/typec.h>
> +#include <linux/usb/typec_altmode.h>
> +#include <param.h>
> +
> +enum typec_param_accessory {
> +	TYPEC_PARAM_ACCESSORY_NONE,
> +	TYPEC_PARAM_ACCESSORY_AUDIO,
> +	TYPEC_PARAM_ACCESSORY_DEBUG,
> +};
> +
> +struct typec_port {
> +	struct device dev;
> +	const struct typec_operations *ops;
> +	int pwr_role;		/* enum typec_role */
> +	int usb_role;		/* enum usb_role role */
> +	int accessory;		/* enum typec_param_accessory */
> +};
> +
> +/**
> + * typec_set_pwr_role - Report power role change
> + * @port: The USB Type-C Port where the role was changed
> + * @role: The new data role
> + *
> + * This routine is used by the port drivers to report power role changes.
> + */
> +void typec_set_pwr_role(struct typec_port *port, enum typec_role role)
> +{
> +	port->pwr_role = role;
> +}
> +EXPORT_SYMBOL_GPL(typec_set_pwr_role);
> +
> +static inline enum typec_param_accessory typec_mode_to_accessory(int mode)
> +{
> +	switch (mode) {
> +	case TYPEC_MODE_AUDIO:
> +		return TYPEC_PARAM_ACCESSORY_AUDIO;
> +	case TYPEC_MODE_DEBUG:
> +		return TYPEC_PARAM_ACCESSORY_DEBUG;
> +	default:
> +		return TYPEC_PARAM_ACCESSORY_NONE;
> +	}
> +}
> +
> +/**
> + * typec_set_mode - Set mode of operation for USB Type-C connector
> + * @port: USB Type-C connector
> + * @mode: Accessory Mode, USB Operation or Safe State
> + *
> + * Configure @port for Accessory Mode @mode. This function will configure the
> + * muxes needed for @mode.
> + */
> +int typec_set_mode(struct typec_port *port, int mode)
> +{
> +	port->accessory = typec_mode_to_accessory(mode);
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(typec_set_mode);
> +
> +/**
> + * typec_set_role - Set USB role for a Type-C connector
> + * @port: USB Type-C connector
> + * @role: USB role to be switched to
> + *
> + * Set USB role @role for @sw. This is equivalent to Linux
> + * usb_role_switch_set_role();
> + */
> +int typec_set_role(struct typec_port *port, enum usb_role role)
> +{
> +	port->usb_role = role;
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(typec_set_role);
> +
> +/**
> + * typec_get_drvdata - Return private driver data pointer
> + * @port: USB Type-C port
> + */
> +void *typec_get_drvdata(struct typec_port *port)
> +{
> +	return port->dev.priv;
> +}
> +EXPORT_SYMBOL_GPL(typec_get_drvdata);
> +
> +static int typec_register_port_dev(struct typec_port *port, const char *name, int id)
> +{
> +	port->dev.id = id;
> +	dev_set_name(&port->dev, name);
> +
> +	return register_device(&port->dev);
> +}
> +
> +static const char * const usb_role_names[] = {
> +	[USB_ROLE_NONE]		= "none",
> +	[USB_ROLE_HOST]		= "host",
> +	[USB_ROLE_DEVICE]	= "device",
> +};
> +
> +static const char * const pwr_role_names[] = {
> +	[TYPEC_SINK]		= "sink",
> +	[TYPEC_SOURCE]		= "source",
> +};
> +
> +static const char * const accessory_names[] = {
> +	[TYPEC_PARAM_ACCESSORY_NONE]	= "none",
> +	[TYPEC_PARAM_ACCESSORY_AUDIO]	= "audio", /* analog */
> +	[TYPEC_PARAM_ACCESSORY_DEBUG]	= "debug",
> +};
> +
> +static int typec_param_update(struct param_d *p, void *priv)
> +{
> +	struct typec_port *port = priv;
> +
> +	return port->ops->poll(port);
> +}
> +
> +/**
> + * typec_register_port - Register a USB Type-C Port
> + * @parent: Parent device
> + * @cap: Description of the port
> + *
> + * Registers a device for USB Type-C Port described in @cap.
> + *
> + * Returns handle to the port on success or ERR_PTR on failure.
> + */
> +struct typec_port *typec_register_port(struct device *parent,
> +				       const struct typec_capability *cap)
> +{
> +	struct typec_port *port;
> +	struct device *dev;
> +	const char *alias;
> +	int ret;
> +
> +	port = kzalloc(sizeof(*port), GFP_KERNEL);
> +	if (!port)
> +		return ERR_PTR(-ENOMEM);
> +
> +	port->ops = cap->ops;
> +	dev = &port->dev;
> +	dev->parent = parent;
> +	dev->of_node = cap->of_node;
> +	dev->priv = cap->driver_data;
> +
> +	alias = dev->of_node ? of_alias_get(dev->of_node) : NULL;
> +	if (alias)
> +		ret = typec_register_port_dev(port, alias, DEVICE_ID_SINGLE);
> +	if (!alias || ret)
> +		ret = typec_register_port_dev(port, "typec", DEVICE_ID_DYNAMIC);
> +
> +	if (ret)
> +		return ERR_PTR(ret);
> +
> +	of_platform_device_dummy_drv(dev);
> +	if (dev->of_node)
> +		dev->of_node->dev = dev;
> +
> +	dev_add_param_enum(dev, "usb_role", param_set_readonly, typec_param_update,
> +			   &port->usb_role, usb_role_names,
> +			   ARRAY_SIZE(usb_role_names), port);
> +	dev_add_param_enum(dev, "pwr_role", param_set_readonly, typec_param_update,
> +			   &port->pwr_role, pwr_role_names,
> +			   ARRAY_SIZE(pwr_role_names), port);
> +	dev_add_param_enum(dev, "accessory", param_set_readonly, typec_param_update,
> +			   &port->accessory, accessory_names,
> +			   ARRAY_SIZE(accessory_names), port);
> +
> +	return port;
> +}
> +EXPORT_SYMBOL_GPL(typec_register_port);
> diff --git a/include/linux/usb/role.h b/include/linux/usb/role.h
> new file mode 100644
> index 000000000000..bf78db7e6fa8
> --- /dev/null
> +++ b/include/linux/usb/role.h
> @@ -0,0 +1,12 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#ifndef __LINUX_USB_ROLE_H
> +#define __LINUX_USB_ROLE_H
> +
> +enum usb_role {
> +	USB_ROLE_NONE,
> +	USB_ROLE_HOST,
> +	USB_ROLE_DEVICE,
> +};
> +
> +#endif /* __LINUX_USB_ROLE_H */
> diff --git a/include/linux/usb/typec.h b/include/linux/usb/typec.h
> new file mode 100644
> index 000000000000..315dee95e47f
> --- /dev/null
> +++ b/include/linux/usb/typec.h
> @@ -0,0 +1,54 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef __LINUX_USB_TYPEC_H
> +#define __LINUX_USB_TYPEC_H
> +
> +#include <linux/types.h>
> +#include <linux/usb/role.h>
> +
> +struct typec_port;
> +
> +struct device;
> +struct device_node;
> +
> +enum typec_role {
> +	TYPEC_SINK,
> +	TYPEC_SOURCE,
> +};
> +
> +enum typec_accessory {
> +	TYPEC_ACCESSORY_NONE,
> +	TYPEC_ACCESSORY_AUDIO,
> +	TYPEC_ACCESSORY_DEBUG,
> +};
> +
> +struct typec_operations {
> +	int (*poll)(struct typec_port *port);
> +};
> +
> +/*
> + * struct typec_capability - USB Type-C Port Capabilities
> + * @driver_data: Private pointer for driver specific info
> + * @ops: Port operations vector
> + *
> + * Static capabilities of a single USB Type-C port.
> + */
> +struct typec_capability {
> +	void			*driver_data;
> +
> +	const struct typec_operations	*ops;
> +	struct device_node	*of_node;
> +};
> +
> +struct typec_port *typec_register_port(struct device *parent,
> +				       const struct typec_capability *cap);
> +
> +void typec_set_pwr_role(struct typec_port *port, enum typec_role role);
> +
> +int typec_set_mode(struct typec_port *port, int mode);
> +
> +int typec_set_role(struct typec_port *port, enum usb_role role);
> +
> +void *typec_get_drvdata(struct typec_port *port);
> +
> +#endif /* __LINUX_USB_TYPEC_H */
> diff --git a/include/linux/usb/typec_altmode.h b/include/linux/usb/typec_altmode.h
> new file mode 100644
> index 000000000000..ffa4a8f75420
> --- /dev/null
> +++ b/include/linux/usb/typec_altmode.h
> @@ -0,0 +1,44 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef __USB_TYPEC_ALTMODE_H
> +#define __USB_TYPEC_ALTMODE_H
> +
> +/*
> + * These are the connector states (USB, Safe and Alt Mode) defined in USB Type-C
> + * Specification. SVID specific connector states are expected to follow and
> + * start from the value TYPEC_STATE_MODAL.
> + */
> +enum {
> +	TYPEC_STATE_SAFE,	/* USB Safe State */
> +	TYPEC_STATE_USB,	/* USB Operation */
> +	TYPEC_STATE_MODAL,	/* Alternate Modes */
> +};
> +
> +/*
> + * For the muxes there is no difference between Accessory Modes and Alternate
> + * Modes, so the Accessory Modes are supplied with specific modal state values
> + * here. Unlike with Alternate Modes, where the mux will be linked with the
> + * alternate mode device, the mux for Accessory Modes will be linked with the
> + * port device instead.
> + *
> + * Port drivers can use TYPEC_MODE_AUDIO and TYPEC_MODE_DEBUG as the mode
> + * value for typec_set_mode() when accessory modes are supported.
> + *
> + * USB4 also requires that the pins on the connector are repurposed, just like
> + * Alternate Modes. USB4 mode is however not entered with the Enter Mode Command
> + * like the Alternate Modes are, but instead with a special Enter_USB Message.
> + * The Enter_USB Message can also be used for setting to connector to operate in
> + * USB 3.2 or in USB 2.0 mode instead of USB4.
> + *
> + * The Enter_USB specific "USB Modes" are also supplied here as special modal
> + * state values, just like the Accessory Modes.
> + */
> +enum {
> +	TYPEC_MODE_USB2 = TYPEC_STATE_MODAL,	/* USB 2.0 mode */
> +	TYPEC_MODE_USB3,			/* USB 3.2 mode */
> +	TYPEC_MODE_USB4,			/* USB4 mode */
> +	TYPEC_MODE_AUDIO,			/* Audio Accessory */
> +	TYPEC_MODE_DEBUG,			/* Debug Accessory */
> +};
> +
> +#endif /* __USB_TYPEC_ALTMODE_H */
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


