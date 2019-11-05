Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRwLt-0003oJ-BW
 for barebox@lists.infradead.org; Tue, 05 Nov 2019 10:46:22 +0000
References: <20191104221407.14791-1-a.fatoum@pengutronix.de>
 <20191104221407.14791-2-a.fatoum@pengutronix.de>
 <20191105104008.qrivs4orphopplzz@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <9c68dcf1-5033-efa5-66b5-50679f1ca6b0@pengutronix.de>
Date: Tue, 5 Nov 2019 11:46:18 +0100
MIME-Version: 1.0
In-Reply-To: <20191105104008.qrivs4orphopplzz@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 2/4] watchdog: implement generic support for .running
 device parameter
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

On 11/5/19 11:40 AM, Sascha Hauer wrote:
> Hi Ahmad,
> 
> On Mon, Nov 04, 2019 at 11:14:05PM +0100, Ahmad Fatoum wrote:
>> Linux watchdog have an optional WDOG_HW_RUNNING bit that is used in
>> conjunction with CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED to automatically
>> ping running watchdogs until userspace takes over.
>>
>> So far, when we ported Linux drivers, we dropped this detection, but it
>> would be useful to have this information in barebox as well:
>>
>> The American Megatrends BIOS I am using allows configuring the hardware
>> watchdog from the BIOS. barebox enables the WDT as well, so in normal
>> operation we would never notice if after a BIOS update, the watchdog is
>> no longer enabled. If we maintain a running parameter on watchdog
>> devices, board code can be written to check whether the watchdog device
>> is indeed running.
> 
> To write such code I would prefer to have a function which returns the
> running status rather than playing with getenv().

Ye, board code can use watchdog_hw_running added in this patch.
Hush scripts can use the device parameter. I'll amend the commit message.

> Additionally there is
> a function missing in the watchdog code which returns a watchdog by its
> name. This can be a future excercise, no need to do it in this patch.

Ok.

> 
>> @@ -45,7 +47,18 @@ int watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
>>  
>>  	pr_debug("setting timeout on %s to %ds\n", watchdog_name(wd), timeout);
>>  
>> -	return wd->set_timeout(wd, timeout);
>> +	ret = wd->set_timeout(wd, timeout);
>> +	if (ret)
>> +		return ret;
>> +
>> +	if (test_bit(WDOG_HW_RUNNING_SUPPORTED, &wd->status)) {
>> +		if (timeout)
>> +			set_bit(WDOG_HW_RUNNING, &wd->status);
>> +		else
>> +			clear_bit(WDOG_HW_RUNNING, &wd->status);
>> +	}
> 
> When we just started the watchdog we actually know that it is running,
> so we could support the parameter for all watchdogs once it's started.
> 
>> +
>> +	return 0;
>>  }
>>  EXPORT_SYMBOL(watchdog_set_timeout);
>>  
>> @@ -118,6 +131,15 @@ static int watchdog_register_poller(struct watchdog *wd)
>>  	return PTR_ERR_OR_ZERO(p);
>>  }
>>  
>> +static const char *watchdog_get_running(struct device_d *dev, struct param_d *p)
>> +{
>> +	/*
>> +	 * This won't ever fail, because the parameter is only registed when
>> +	 * test_bit(WDOG_HW_RUNNING_SUPPORTED, &w->status) is true
>> +	 */
>> +	return watchdog_hw_running((struct watchdog *)p->value) ? "1" : "0";
>> +}
> 
> Casting p->value to (struct watchdog *) seems wrong. However, this
> function shouldn't be needed, see below.
> 
>> +
>>  static int watchdog_register_dev(struct watchdog *wd, const char *name, int id)
>>  {
>>  	wd->dev.parent = wd->hwdev;
>> @@ -162,6 +184,15 @@ int watchdog_register(struct watchdog *wd)
>>  	if (ret)
>>  		return ret;
>>  
>> +	if (test_bit(WDOG_HW_RUNNING_SUPPORTED, &wd->status)) {
>> +		p = dev_add_param(&wd->dev, "running", NULL,
>> +				  watchdog_get_running, PARAM_FLAG_RO);
>> +		if (IS_ERR(p))
>> +			return PTR_ERR(p);
>> +
>> +		p->value = (char *)wd;
>> +	}
> 
> How about adding this parameter unconditionally, with "unknown" as value
> when WDOG_HW_RUNNING_SUPPORTED is not set. You can use
> dev_add_param_enum() here.

Sounds good.

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
