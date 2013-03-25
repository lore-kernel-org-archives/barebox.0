Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UK72y-0008A9-FM
 for barebox@lists.infradead.org; Mon, 25 Mar 2013 13:02:45 +0000
Message-ID: <51504AF2.2070000@free-electrons.com>
Date: Mon, 25 Mar 2013 14:02:42 +0100
From: Maxime Ripard <maxime.ripard@free-electrons.com>
MIME-Version: 1.0
References: <1363880198-21029-1-git-send-email-alexandre.belloni@free-electrons.com>
 <20130325125156.GD1906@pengutronix.de> <51504A00.3050303@free-electrons.com>
In-Reply-To: <51504A00.3050303@free-electrons.com>
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
Subject: Re: [PATCH] cfa10036: Retrieve the RAM size at runtime
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Cc: barebox@lists.infradead.org

HI,

Le 25/03/2013 13:58, Alexandre Belloni a =E9crit :
> On 25/03/2013 13:51, Sascha Hauer wrote:
>>
>> index 1bc20cf..37cc17e 100644
>> --- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
>> +++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
>> @@ -39,6 +39,8 @@
>>  #include <asm/armlinux.h>
>>  #include <asm/mmu.h>
>>  =

>> +#include <asm-generic/sections.h>
>> +
>>  #include <mach/fb.h>
>>  =

>>  #include <generated/mach-types.h>
>> @@ -90,9 +92,77 @@ static struct i2c_gpio_platform_data i2c_gpio_pdata =
=3D {
>>  	.udelay			=3D 5,		/* ~100 kHz */
>>  };
>>  =

>> +/*
>> + * Copied from get_ram_size in common/memory.c
>> + */
>> +long cfa10036_get_ram_size(volatile long *base, long maxsize)
>> +{
>> When I asked for a local version of this function I had something like
>> this in mind, not a complete copy of the function.
>>
>> 	volatile u32 *base =3D (void *)IMX_MEMORY_BASE;
>> 	volatile u32 *ofs =3D base + SZ_128M;
>>
>> 	*base =3D *ofs =3D 0xdeadbeef;
>>
>> 	*ofs =3D 0x11223344;
>> 	if (*base =3D=3D 0x11223344)
>> 		return SZ_128M;
>> 	else
>> 		return SZ_256M;
>>
> =

> Yeah, I was also thinking about stripping it. But, for the sake of being
> future proof, I finally chose to keep the full version.
> =

> Maybe, we can assume that we will never have less than 128M of ram if
> you want to simplify it ?
> =

> Maxime, any input ?

For now, we only have 128M or 256M, so I guess it's a safe assumption, yes.

Maxime


-- =

Maxime Ripard, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
