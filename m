Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo5.mail-out.ovh.net ([46.105.56.132]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEOdj-0004jc-Ef
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 18:37:04 +0000
Received: from mail634.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 3AFE3FF8C1E
 for <barebox@lists.infradead.org>; Sat,  9 Mar 2013 19:48:16 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20130309151230.GK1906@pengutronix.de>
Date: Sun, 10 Mar 2013 02:36:48 +0800
Message-Id: <D3D7E3D0-4B8E-4C48-94DC-85CEA0AF21A3@jcrosoft.com>
References: <1362733514-18373-1-git-send-email-shc_work@mail.ru>
 <20130309151230.GK1906@pengutronix.de>
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
Subject: Re: [PATCH] Extend device_platform_driver macro
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


On Mar 9, 2013, at 11:12 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Alexander,
> 
> On Fri, Mar 08, 2013 at 01:05:14PM +0400, Alexander Shiyan wrote:
>> This patch extends device_platform_driver macro, so now we allow
>> use it with various init levels and subsystems.
>> 
>> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
>> ---
>> include/driver.h | 17 ++++++++++-------
>> 1 file changed, 10 insertions(+), 7 deletions(-)
>> 
>> diff --git a/include/driver.h b/include/driver.h
>> index 46c56c0..b891f80 100644
>> --- a/include/driver.h
>> +++ b/include/driver.h
>> @@ -395,16 +395,19 @@ extern struct bus_type platform_bus;
>> 
>> int platform_driver_register(struct driver_d *drv);
>> 
>> -/* device_platform_driver() - Helper macro for drivers that don't do
>> +/* register_driver_macro() - Helper macro for drivers that don't do
>>  * anything special in module registration. This eliminates a lot of
>>  * boilerplate. Each module may only use this macro once.
>>  */
>> -#define device_platform_driver(drv)			\
>> -	static int __init drv ## _register(void)	\
>> -	{						\
>> -		return platform_driver_register(&drv);	\
>> -	}						\
>> -	device_initcall(drv ## _register)
>> +#define register_driver_macro(level,subsystem,drv)		\
>> +	static int __init drv##_register(void)			\
>> +	{							\
>> +		return subsystem##_driver_register(&drv);	\
>> +	}							\
>> +	level##_initcall(drv##_register)
> 
> So the usage would look like:
> 
> register_driver_macro(device, i2c, &mc_driver)
> 
> ?
> 
> I'm not sure if I like this. I'm a bit concerned about being able
> to grep for for example i2c_register_driver. This would become
> 
> wcgrep register_driver_macro | grep i2c
> 
> or similar.
> 
> What do others think about it?
same I don't like it

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
