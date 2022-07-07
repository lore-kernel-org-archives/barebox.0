Delivery-date: Thu, 07 Jul 2022 11:40:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9O05-0093Dv-Lc
	for lore@lore.pengutronix.de; Thu, 07 Jul 2022 11:40:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9O07-0008KK-Io
	for lore@pengutronix.de; Thu, 07 Jul 2022 11:40:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JTE3aYe6zWLaFGsHb9M58hZuk0YpJlKPVn0sKK9EjxI=; b=DF+bmSpH7seCFr1KFAuXJxK4xJ
	dJoeJeja1AAqXRvqKBMIBWsNmUGNBPCNhVtSQLhbo+hee3fqoYdntBYg6ei98S62s+icA8Cv73ZGr
	UnNjNY7lQNpfU0oMQoHi/CyjNxMTgidaNWljQNRtbJ4BC+oa5mh3Y4NykHUDYtteXqUmlliQ+Hh90
	cK95sHxC/CFphD/SUec1/XIs/DY3gbc/HvMZ+766CIG+5f2FcwDUka3gtd2iZHr30bEFtYkDFXXi+
	HdEvyOZisbtSqrwqFBqD5+6TcVRIwfJ35Jquv1wSEPiur/te2xOdv6UCb/col66GebeIsPOfrAwov
	ADoax4Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9NyS-00FQK4-F7; Thu, 07 Jul 2022 09:39:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9NyM-00FQIj-JM
	for barebox@lists.infradead.org; Thu, 07 Jul 2022 09:39:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o9NyH-00085f-3U; Thu, 07 Jul 2022 11:38:53 +0200
Message-ID: <6a88e460-f9d2-afa7-2ec2-86f78e9bac8f@pengutronix.de>
Date: Thu, 7 Jul 2022 11:38:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, barebox@lists.infradead.org
References: <20220707082506.2367374-1-j.zink@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220707082506.2367374-1-j.zink@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_023858_851873_C44E6691 
X-CRM114-Status: GOOD (  42.41  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] base: driver: store probe deferred reason in device
 structure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Johannes,

Title could be made to focus on the purpose of the patch instead of
the mechanism, e.g.:

  base: driver: print dev_err_probe message on permanent probe deferral

Some more comments below.

On 07.07.22 10:25, Johannes Zink wrote:
> This ignores prevents probe deferred warnings in the log output and stores the

You probably meant to delete either ignores/prevents here. Also deferred warnings
weren't displayed before already, so this is not newly introduced with this patch.

> probe deferred reason in the device structure. 
> 
> If a probe is permanently deferred, the last deferral reason why it was displayed.

s/why it was/is/

> 
> Other dev_err_probe outputs are displayed as before.
> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
>  drivers/base/driver.c | 53 +++++++++++++++++++++++++++++++++++++------
>  include/driver.h      |  6 +++++
>  2 files changed, 52 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index 303ca061c..8eb68306f 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -283,6 +283,8 @@ void free_device_res(struct device_d *dev)
>  	dev->name = NULL;
>  	free(dev->unique_name);
>  	dev->unique_name = NULL;
> +	if (dev->deferred_probe_reason)
> +		kfree(dev->deferred_probe_reason);

kfree and free that it wraps already have a NULL check, so no need to repeat.

>  }
>  EXPORT_SYMBOL(free_device_res);
>  
> @@ -300,6 +302,16 @@ void free_device(struct device_d *dev)
>  }
>  EXPORT_SYMBOL(free_device);
>  
> +
> +static int device_get_deferred_probe_reason(const struct device_d *dev, char **reason)
> +{
> +	if (dev->deferred_probe_reason) {
> +		*reason = dev->deferred_probe_reason;
> +		return 0;
> +	} else
> +		return 1;

barebox uses Kernel coding style, If the if clause has braces, the else does too.
But int return here is redundant and makes code a bit harder to follow.
You could just return the pointer directly and have users check against NULL.

> +}
> +
>  /*
>   * Loop over list of deferred devices as long as at least one
>   * device is successfully probed. Devices that again request
> @@ -312,6 +324,7 @@ static int device_probe_deferred(void)
>  	struct device_d *dev, *tmp;
>  	struct driver_d *drv;
>  	bool success;
> +	char *reason;
>  
>  	do {
>  		success = false;
> @@ -333,9 +346,12 @@ static int device_probe_deferred(void)
>  		}
>  	} while (success);
>  
> -	list_for_each_entry(dev, &deferred, active)
> -		dev_err(dev, "probe permanently deferred\n");
> -
> +	list_for_each_entry(dev, &deferred, active) {
> +		if (device_get_deferred_probe_reason(dev, &reason))

if (dev->deferred_probe_reason) or if (reason) ? (with reason defined above)

> +			dev_err(dev, "probe permanently deferred\n");
> +		else
> +			dev_err(dev, "probe permanently deferred (%s)\n", reason);

This can lead to quite long lines, e.g.:

  40012000.pin-controller@40012000.of: probe permanently deferred (40012000.pin-controller@40012000.of: couldn't request clock)

I am fine with either one or two lines, but the device name shouldn't be printed
twice. See below.

> +	}
>  	return 0;
>  }
>  late_initcall(device_probe_deferred);
> @@ -573,6 +589,17 @@ const void *device_get_match_data(struct device_d *dev)
>  	return NULL;
>  }
>  
> +static void device_set_deferred_probe_reason(struct device_d *dev, const struct va_format *vaf)
> +{
> +	const char *drv = dev_name(dev);

drv suggests this is related to the driver, but this is just the device name
and not dev->drv.name.

> +	char* reason;

Can be dropped in favor of direct assignment below.

> +
> +	if (dev->deferred_probe_reason)

No need to check

> +		kfree(dev->deferred_probe_reason);
> +
> +	reason = basprintf("%s: %pV", drv, vaf);

No need to add the dev_name() prefix into the deferred_probe_reason,
when you can just use dev_err at permanent probe deferral time to have
it printed.

> +	dev->deferred_probe_reason = reason;
> +}
>  /**
>   * dev_err_probe - probe error check and log helper
>   * @loglevel: log level configured in source file
> @@ -584,8 +611,12 @@ const void *device_get_match_data(struct device_d *dev)
>   * This helper implements common pattern present in probe functions for error
>   * checking: print debug or error message depending if the error value is
>   * -EPROBE_DEFER and propagate error upwards.
> - * In case of -EPROBE_DEFER it sets also defer probe reason, which can be
> - * checked later by reading devices_deferred debugfs attribute.
> + *
> + * In case of -EPROBE_DEFER it sets the device's defered_probe_reason attribute,

s/defered/deferred/

> + * but does not report an error. The error is recorded and displayed later, if
> + * (and only if) the probe is permanently  defered. For all other error codes,

s/ defered/deferred/

> + * it just ouputs the error

s/ouputs/outputs/ the error along with the formatted message.

> + *
>   * It replaces code sequence::
>   *
>   * 	if (err != -EPROBE_DEFER)
> @@ -606,13 +637,19 @@ int dev_err_probe(const struct device_d *dev, int err, const char *fmt, ...)
>  {
>  	struct va_format vaf;
>  	va_list args;
> +	char* reason;

char *reason

>  
>  	va_start(args, fmt);
>  	vaf.fmt = fmt;
>  	vaf.va = &args;
>  
> -	dev_printf(err == -EPROBE_DEFER ? MSG_DEBUG : MSG_ERR,
> -		   dev, "error %pe: %pV", ERR_PTR(err), &vaf);

I'd prefer you keep this part. When debugging it can be useful to know
that a probe was deferred, especially when debugging issues related to
it (violated time constraints, inadequate cleanup). Just do your
extra stuff below.

> +	//deferred probe, just remember the error reason

Nitpick: Usual coding style is /* deferred... etc */

> +	if(err == -EPROBE_DEFER){

whitespace after if. No braces per kernel coding style.

> +		device_set_deferred_probe_reason(dev, &vaf);
> +		}
> +	 else {

} else { or rather else without braces.

> +		dev_printf(MSG_ERR, dev, "error %pe: %pV\n", ERR_PTR(err), &vaf);
> +	}
>  
>  	va_end(args);
>  
> @@ -620,6 +657,8 @@ int dev_err_probe(const struct device_d *dev, int err, const char *fmt, ...)
>  }
>  EXPORT_SYMBOL_GPL(dev_err_probe);
>  
> +
> +
>  /*
>   * device_find_child - device iterator for locating a particular device.
>   * @parent: parent struct device_d
> diff --git a/include/driver.h b/include/driver.h
> index b35b5f397..a41e3d478 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -88,6 +88,12 @@ struct device_d {
>  	 * when the driver should actually detect client devices
>  	 */
>  	int     (*detect) (struct device_d *);
> +
> +	/**

Nitpick: Single * (unless it's kerneldoc)

> +	 * if a driver probe is deferred, this stores the last error
> +	 **/

Nitpick: Single *

> +
> +	char *deferred_probe_reason;
>  };
>  
>  /** @brief Describes a driver present in the system */


Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


