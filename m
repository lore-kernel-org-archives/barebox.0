Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UsxdE-0001TD-Fx
 for barebox@lists.infradead.org; Sat, 29 Jun 2013 16:04:13 +0000
Received: by mail-wi0-f169.google.com with SMTP id c10so2740709wiw.4
 for <barebox@lists.infradead.org>; Sat, 29 Jun 2013 09:03:48 -0700 (PDT)
Message-ID: <51CF0560.2050902@gmail.com>
Date: Sat, 29 Jun 2013 18:03:44 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372152047-28134-8-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130629142857.GC10414@pengutronix.de>
 <20130629143146.GD10414@pengutronix.de>
In-Reply-To: <20130629143146.GD10414@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 7/9] OF: remove device and resource pointer from struct
 device_node
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 06/29/2013 04:31 PM, Sascha Hauer wrote:
> On Sat, Jun 29, 2013 at 04:28:57PM +0200, Sascha Hauer wrote:
>> On Tue, Jun 25, 2013 at 11:20:45AM +0200, Sebastian Hesselbarth wrote:
>>> diff --git a/drivers/of/gpio.c b/drivers/of/gpio.c
>>> index 41e91ec..7f6d99c 100644
>>> --- a/drivers/of/gpio.c
>>> +++ b/drivers/of/gpio.c
>>> @@ -10,6 +10,10 @@ int of_get_named_gpio(struct device_node *np,
>>>   {
>>>   	int ret;
>>>   	struct of_phandle_args out_args;
>>> +	struct device_d *dev = of_find_device_by_node(np);
>>> +
>>> +	if (!dev)
>>> +		return -EINVAL;
>>>
>>>   	ret = of_parse_phandle_with_args(np, propname, "#gpio-cells",
>>>   					index,&out_args);
>>> @@ -18,7 +22,7 @@ int of_get_named_gpio(struct device_node *np,
>>>   		return -EINVAL;
>>>   	}
>>>
>>> -	ret = gpio_get_num(out_args.np->device, out_args.args[0]);
>>> +	ret = gpio_get_num(dev, out_args.args[0]);
>>
>> This doesn't work. What gpio_get_num needs is the device pointer from
>> the gpio device, not from the device from the node we pass to this
>> function. You would have to use of_find_device_by_node(out_args.np) here
>> I guess.
>
> Apart from this of_find_device_by_node() only works on platform_devices,
> so this will break calling of_get_named_gpio on i2c gpio expanders.

Ok, to work on this I would have to have something to test with. MVEBU
DT is still at a very early stage. So for now, I guess removing the
device pointer is a bit early? I will also have to have a close look
into i2c core what makes those devices special here.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
