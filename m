Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUuqQ-0002Z5-06
 for barebox@lists.infradead.org; Tue, 20 Oct 2020 16:50:42 +0000
References: <20200930084716.4200-1-m.felsch@pengutronix.de>
 <20200930084716.4200-5-m.felsch@pengutronix.de>
 <a4faf882-504e-fc81-efd4-47e9e1ca85ea@pengutronix.de>
 <20201020161853.myiu3wtlc6dod6g4@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <0ebc5b33-11c4-ab3c-8e6c-ba86c8f6cfb6@pengutronix.de>
Date: Tue, 20 Oct 2020 18:50:38 +0200
MIME-Version: 1.0
In-Reply-To: <20201020161853.myiu3wtlc6dod6g4@pengutronix.de>
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
Subject: Re: [PATCH v2 4/8] initcall: add of_populate_initcall
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

On 10/20/20 6:18 PM, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 20-10-02 07:53, Ahmad Fatoum wrote:
>>
>>
>> On 9/30/20 10:47 AM, Marco Felsch wrote:
> 
> ...
> 
>>> @@ -61,9 +64,10 @@ typedef void (*exitcall_t)(void);
>>>  #define fs_initcall(fn)			__define_initcall("9",fn,9)
>>>  #define device_initcall(fn)		__define_initcall("10",fn,10)
>>>  #define crypto_initcall(fn)		__define_initcall("11",fn,11)
>>> -#define late_initcall(fn)		__define_initcall("12",fn,12)
>>> -#define environment_initcall(fn)	__define_initcall("13",fn,13)
>>> -#define postenvironment_initcall(fn)	__define_initcall("14",fn,14)
>>> +#define of_populate_initcall(fn)	__define_initcall("12",fn,15)
>>
>> s/15/12/ ? (Likewise below)
> 
> I would like to keep it before late_initcall() due to the impact of that
> initcall and following environment_initcall(). At least the
> environment_initcall() assumes that devices are available to setup the
> /env correctly. Therefore I added it before late_initcall(). I can give
> it a try to move it behind the late_inicall if you want.

Case in point! s/15/12/ doesn't change the initcall order, it only ensures
that you don't expand to __initcall_##fn##15 __section(.initcall.12) which
is confusing. Apparently it confused you to think I mean changing the
actual init level too :-)

> 
> Regards,
>   Marco
> 
>>> +#define late_initcall(fn)		__define_initcall("13",fn,12)
>>> +#define environment_initcall(fn)	__define_initcall("14",fn,13)
>>> +#define postenvironment_initcall(fn)	__define_initcall("15",fn,14)
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
