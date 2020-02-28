Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7cui-0007XT-ST
 for barebox@lists.infradead.org; Fri, 28 Feb 2020 10:30:39 +0000
References: <20200225165731.12419-2-a.fatoum@pengutronix.de>
 <20200226104806.9498-1-a.fatoum@pengutronix.de>
 <CAGm1_kspuhkcK7sa4uOT0rUjgf-UG1Of13ukSkKXiF0KkEt=wg@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <8b5269a8-6645-3fb0-4e5a-0ee633fd700f@pengutronix.de>
Date: Fri, 28 Feb 2020 11:30:34 +0100
MIME-Version: 1.0
In-Reply-To: <CAGm1_kspuhkcK7sa4uOT0rUjgf-UG1Of13ukSkKXiF0KkEt=wg@mail.gmail.com>
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
Subject: Re: [PATCH] fixup! USB: MUSB: defer driver probes where necessary
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>

Hello Yegor,

On 2/28/20 11:27 AM, Yegor Yefremov wrote:
> Hi Ahmad,
> 
> On Wed, Feb 26, 2020 at 11:48 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>> The NULL assignment is a left over from when it was a global variable.
>> am_usbphy is local now and is just going out of scope, so need to NULL
>> it.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/usb/musb/phy-am335x.c | 1 -
>>  1 file changed, 1 deletion(-)
>>
>> diff --git a/drivers/usb/musb/phy-am335x.c b/drivers/usb/musb/phy-am335x.c
>> index 7dda8caf2a3c..f2e870d7ee61 100644
>> --- a/drivers/usb/musb/phy-am335x.c
>> +++ b/drivers/usb/musb/phy-am335x.c
>> @@ -60,7 +60,6 @@ err_release:
>>         release_region(iores);
>>  err_free:
>>         free(am_usbphy);
>> -       am_usbphy = NULL;
>>
>>         return ret;
>>  };
> 
> Do you want me to test this fixup as well or are you going to post v2?

You don't need to. It's a line that the compiler optimizes out anyway.

Cheers
Ahmad

> 
> Yegor> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
