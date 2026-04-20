Delivery-date: Mon, 20 Apr 2026 13:09:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEmVK-00EJrJ-2L
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 13:09:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEmVK-0003WP-1L
	for lore@pengutronix.de; Mon, 20 Apr 2026 13:09:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pfU1ho2nziGmTDTwsrOhu0/GTpFFOGi29JiCdP8bSCg=; b=csYZ0MJ4R56VHon2yRrgC3yHGJ
	aleJHHIumwDujQCb8jDEnvUeu7NieE1aBhwbDlKy3zcP5FXn0SjgBDcSL2WiInqYELUib6WTknNsW
	QQdtx2qw8YzHWBy168SI2niILb7wcMvPvutXBROKjunmESY7oFYx6f6UHlhZujRcInTI4UfGefh31
	ZBBYl/u69IUELJgzinEjRbZCOp5hJSahK0OfEQJHzB+0SSDg/jdPKiIOZzok23hDuIk6PkphtTgo5
	i2G91fXLm6IiY2F4Yl3O4tmNC98Jg9fnjqwO6d9+N8+46qcLaE3wBPG61lkjmYoqSVffh/klAvMxm
	aTpo1Msg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmUj-00000006lsm-12FF;
	Mon, 20 Apr 2026 11:08:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmUe-00000006lsK-3ilL
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 11:08:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wEmUc-0003Pz-96; Mon, 20 Apr 2026 13:08:42 +0200
Message-ID: <2fd9dab7-40ab-4e75-b6c8-821bded735a0@pengutronix.de>
Date: Mon, 20 Apr 2026 13:08:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.6" <noreply@anthropic.com>
References: <20260420-usb-typec-stusb160x-v1-0-5875bbae80ab@pengutronix.de>
 <20260420-usb-typec-stusb160x-v1-2-5875bbae80ab@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260420-usb-typec-stusb160x-v1-2-5875bbae80ab@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_040845_399798_D1898262 
X-CRM114-Status: GOOD (  26.33  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/4] usb: typec: wire USB role changes to OTG device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 4/20/26 11:02 AM, Sascha Hauer wrote:
> When a Type-C controller reports a USB role change via typec_set_role(),
> find the associated OTG device via the OF graph and set its dr_mode
> accordingly.
> 
> Since the Type-C controller may probe before the OTG device registers,
> a late_initcall sweeps all known ports and applies any role that was not
> yet forwarded.
> 
> Co-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/usb/typec/class.c | 60 +++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 60 insertions(+)
> 
> diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
> index e03eaccbb9..b88e1c1e46 100644
> --- a/drivers/usb/typec/class.c
> +++ b/drivers/usb/typec/class.c
> @@ -8,10 +8,15 @@
>  
>  #include <module.h>
>  #include <driver.h>
> +#include <init.h>
>  #include <linux/kernel.h>
> +#include <linux/list.h>
>  #include <linux/usb/role.h>
>  #include <linux/usb/typec.h>
>  #include <linux/usb/typec_altmode.h>
> +#include <linux/usb/usb.h>
> +#include <linux/device/bus.h>
> +#include <of_graph.h>
>  #include <param.h>
>  
>  enum typec_param_accessory {
> @@ -22,12 +27,16 @@ enum typec_param_accessory {
>  
>  struct typec_port {
>  	struct device dev;
> +	struct list_head list;
>  	const struct typec_operations *ops;
>  	int pwr_role;		/* enum typec_role */
>  	int usb_role;		/* enum usb_role role */
>  	int accessory;		/* enum typec_param_accessory */
> +	bool otg_role_applied;
>  };
>  
> +static LIST_HEAD(typec_port_list);
> +
>  /**
>   * typec_set_pwr_role - Report power role change
>   * @port: The USB Type-C Port where the role was changed
> @@ -68,6 +77,41 @@ int typec_set_mode(struct typec_port *port, int mode)
>  }
>  EXPORT_SYMBOL_GPL(typec_set_mode);
>  
> +static bool typec_apply_otg_role(struct typec_port *port)
> +{
> +	struct device_node *connector = port->dev.of_node;
> +	struct device_node *ep, *remote;
> +	struct device *dev;
> +	enum usb_dr_mode dr_mode;
> +	bool applied = false;
> +
> +	if (!IS_ENABLED(CONFIG_USB_OTGDEV) || !connector)
> +		return false;
> +
> +	if (port->usb_role == USB_ROLE_HOST)
> +		dr_mode = USB_DR_MODE_HOST;
> +	else if (port->usb_role == USB_ROLE_DEVICE)
> +		dr_mode = USB_DR_MODE_PERIPHERAL;
> +	else
> +		return false;
> +
> +	for_each_endpoint_of_node(connector, ep) {
> +		remote = of_graph_get_remote_port_parent(ep);
> +		if (!remote)
> +			continue;
> +
> +		bus_for_each_device(&otg_bus_type, dev) {
> +			if (dev->parent && dev->parent->of_node == remote) {

I believe board code could've set the mode before we come here.

Also, I think there must be a way to opt out of this.

Let's assume you load barebox via USB on a Type C port. You may not be
able to yank the cable away fast enough before barebox does the one-way
otg -> peripheral transition.

> +				otg_device_set_dr_mode(dev, dr_mode);
> +				applied = true;
> +				break;
> +			}
> +		}
> +	}
> +
> +	return applied;
> +}
> +
>  /**
>   * typec_set_role - Set USB role for a Type-C connector
>   * @port: USB Type-C connector
> @@ -79,10 +123,24 @@ EXPORT_SYMBOL_GPL(typec_set_mode);
>  int typec_set_role(struct typec_port *port, enum usb_role role)
>  {
>  	port->usb_role = role;
> +	port->otg_role_applied = typec_apply_otg_role(port);
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(typec_set_role);
>  
> +static int typec_apply_otg_roles(void)
> +{
> +	struct typec_port *port;
> +
> +	list_for_each_entry(port, &typec_port_list, list) {
> +		if (!port->otg_role_applied)
> +			port->otg_role_applied = typec_apply_otg_role(port);
> +	}
> +
> +	return 0;
> +}
> +late_initcall(typec_apply_otg_roles);

Does postenvironment not make more sense, so the environment can
override this?

> +
>  /**
>   * typec_get_drvdata - Return private driver data pointer
>   * @port: USB Type-C port
> @@ -165,6 +223,8 @@ struct typec_port *typec_register_port(struct device *parent,
>  	if (dev->of_node)
>  		dev->of_node->dev = dev;
>  
> +	list_add_tail(&port->list, &typec_port_list);
> +
>  	dev_add_param_enum(dev, "usb_role", param_set_readonly, typec_param_update,
>  			   &port->usb_role, usb_role_names,
>  			   ARRAY_SIZE(usb_role_names), port);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



