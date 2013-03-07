Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDbFb-0000GO-Fx
 for barebox@lists.infradead.org; Thu, 07 Mar 2013 13:52:52 +0000
Message-ID: <51389BAF.9040802@free-electrons.com>
Date: Thu, 07 Mar 2013 14:52:47 +0100
From: Maxime Ripard <maxime.ripard@free-electrons.com>
MIME-Version: 1.0
References: <1361897742-3454-1-git-send-email-maxime.ripard@free-electrons.com>
 <1361897742-3454-2-git-send-email-maxime.ripard@free-electrons.com>
 <20130304080232.GM25672@pengutronix.de>
In-Reply-To: <20130304080232.GM25672@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] memsize: Make get_ram_size RAM proof
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le 04/03/2013 09:02, Sascha Hauer a =E9crit :
> On Tue, Feb 26, 2013 at 05:55:41PM +0100, Maxime Ripard wrote:
>> get_ram_size cannot be used when running from RAM at the moment, even
>> though it backs up the memory cells it modifies, since it can also
>> modify the get_ram_size function itself.
>>
>> Avoid testing the memory area where barebox is loaded at to prevent this
>> problem. If the memory supposed to host barebox is not working, we'll
>> have plenty of other problems anyway.
>>
>> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
>> ---
>>  common/memsize.c |   21 +++++++++++++++++++++
>>  1 file changed, 21 insertions(+)
>>
>> diff --git a/common/memsize.c b/common/memsize.c
>> index d149e41..1d00984 100644
>> --- a/common/memsize.c
>> +++ b/common/memsize.c
>> @@ -19,6 +19,9 @@
>>  =

>>  #include <common.h>
>>  #include <config.h>
>> +
>> +#include <asm-generic/sections.h>
>> +
>>  #if defined (__PPC__) && !defined (__SANDBOX__)
>>  /*
>>   * At least on G2 PowerPC cores, sequential accesses to non-existent
>> @@ -45,6 +48,15 @@ long get_ram_size(volatile long *base, long maxsize)
>>  =

>>  	for (cnt =3D (maxsize / sizeof (long)) >> 1; cnt > 0; cnt >>=3D 1) {
>>  		addr =3D base + cnt;	/* pointer arith! */
>> +
>> +		/*
>> +		 * If we run get_ram_size from RAM, avoid poking into
>> +		 * the Barebox code, and if the RAM at these address
>> +		 * doesn't work, we will have trouble anyway...
>> +		 */
>> +		if (addr > (long*)_text && addr < (long*)__bss_stop)
>> +			continue;
> =

> Unfortunately I had to drop this one. It breaks compilation on some
> architectures which do not have _text and __bss_stop (namely blackfin
> and another one I forgot about).
> =

> Anyway, I realized that we now can start the MMU during early startup,
> so when you call this function from your board code your SDRAM might
> already be cached. I assume get_ram_size won't work reliably in this
> case anymore.
> =

> Since you only use it to detect whether you have 128MiB or 256Mib, could
> you code a stripped down version of this function especially for your
> board? Could you even adjust the SDRAM controller registers to the size
> you really have? I have no idea if the SDRAM controller can cope with
> that, but it might be worth giving it a try. I have a patch in the
> queue moving the i.MX28 over to dynamically detecting the SDRAM size
> via controller readback, so this then would simply detect the correct
> size.

I agree that this patch you're mentionning would be the best solution.

However, the imx28 SDRAM controller doesn't seem to be able to be
reconfigured, so once it has been configured once, you're screwed.

So our first stage bootloader enables all the 256MB of RAM, and then we
have to test it, like this patch did.

If you're fine with having a stripped down get_ram_size function only
for the cfa10036, I'll do that, but I'm open to suggestions if you have
other ideas.

Thanks,
Maxime

-- =

Maxime Ripard, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
