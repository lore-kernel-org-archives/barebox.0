Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT24J-0000qA-3a
 for barebox@lists.infradead.org; Fri, 08 Nov 2019 11:04:44 +0000
References: <20191104221407.14791-1-a.fatoum@pengutronix.de>
 <20191104221407.14791-2-a.fatoum@pengutronix.de>
 <20191105104008.qrivs4orphopplzz@pengutronix.de>
 <9c68dcf1-5033-efa5-66b5-50679f1ca6b0@pengutronix.de>
 <e4eb7efc-7985-6c76-6215-b5583ac0d380@pengutronix.de>
 <20191105111859.wvtd3vnm62l532qk@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <07bbcbf6-e955-f700-2bbc-c79a07188481@pengutronix.de>
Date: Fri, 8 Nov 2019 12:04:39 +0100
MIME-Version: 1.0
In-Reply-To: <20191105111859.wvtd3vnm62l532qk@pengutronix.de>
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

On 11/5/19 12:18 PM, Sascha Hauer wrote:
> On Tue, Nov 05, 2019 at 12:10:51PM +0100, Ahmad Fatoum wrote:
>> On 11/5/19 11:46 AM, Ahmad Fatoum wrote:
>>> Hi,
>>>
>>> On 11/5/19 11:40 AM, Sascha Hauer wrote:
>>>> When we just started the watchdog we actually know that it is running,
>>>> so we could support the parameter for all watchdogs once it's started.
>>
>> I'll do this.
>>
>>>> Casting p->value to (struct watchdog *) seems wrong. However, this
>>>> function shouldn't be needed, see below.
>>
>> It's well-defined, but ye, it feels a bit wrong.
>>
>>>>> +
>>>>>  static int watchdog_register_dev(struct watchdog *wd, const char *name, int id)
>>>>>  {
>>>>>  	wd->dev.parent = wd->hwdev;
>>>>> @@ -162,6 +184,15 @@ int watchdog_register(struct watchdog *wd)
>>>>>  	if (ret)
>>>>>  		return ret;
>>>>>  
>>>>> +	if (test_bit(WDOG_HW_RUNNING_SUPPORTED, &wd->status)) {
>>>>> +		p = dev_add_param(&wd->dev, "running", NULL,
>>>>> +				  watchdog_get_running, PARAM_FLAG_RO);
>>>>> +		if (IS_ERR(p))
>>>>> +			return PTR_ERR(p);
>>>>> +
>>>>> +		p->value = (char *)wd;
>>>>> +	}
>>>>
>>>> How about adding this parameter unconditionally, with "unknown" as value
>>>> when WDOG_HW_RUNNING_SUPPORTED is not set. You can use
>>>> dev_add_param_enum() here.
>>
>> Thinking about it, I'd rather not use dev_add_param_enum here. I would like
>> to leave the driver-side API not too different from Linux, i.e. status bits
>> that can be set. If I use dev_add_param_enum, I'll have to add a new struct
>> member for every new status bit.
> 
> Not for every bit, but for every flag you want to export as a parameter.
> But where's the problem with that?

Ok, sent v3 with your suggestions incorporated.

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
