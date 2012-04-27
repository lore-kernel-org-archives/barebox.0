Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SNiuV-0004OL-PM
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 11:00:25 +0000
Received: by iaky10 with SMTP id y10so1089628iak.36
 for <barebox@lists.infradead.org>; Fri, 27 Apr 2012 04:00:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120427074753.GU17184@pengutronix.de>
References: <1335467039-15807-1-git-send-email-jaccon.bastiaansen@gmail.com>
 <20120427074753.GU17184@pengutronix.de>
Date: Fri, 27 Apr 2012 13:00:20 +0200
Message-ID: <CAGzjT4eZr_K7UuGxsQ0vbSjc3d5JrOwB8t3mbY-aqMUk5PNc-g@mail.gmail.com>
From: Jaccon Bastiaansen <jaccon.bastiaansen@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Increase heapsize for i.MX21ADS board again.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, festevam@gmail.com, gfm@funxed.com

Hello Sascha

Op 27 april 2012 09:47 heeft Sascha Hauer <s.hauer@pengutronix.de> het
volgende geschreven:
> On Thu, Apr 26, 2012 at 09:03:59PM +0200, Jaccon Bastiaansen wrote:
>> Barebox cannot boot the recent mainline Linux kernels for the
>> i.MX21ADS board anymore when using TFTP, because the heap is too
>> small.
>>
>> This is solved by increasing the heapsize to 8Mbyte.
>
> This board has 64M of SDRAM, why don't you simply increase it to say
> 32MB? It's not that you need the memory for something else in barebox.
>

Ok, I will do that.

> BTW could you test the i.MX clock framework patches I posted to ARM
> Linux Kernel? I have no i.MX21 hardware, so I ported the i.MX21
> completely blind. It would be good to test this before we break
> mainline
>

I'm currently working on getting the mainline kernel to run again on
the iMX21ADS board. The current mainline kernel crashes very early in
the boot sequence without showing anything on the terminal. I already
solved that crash (the same virtual address range was used twice when
statically mapping I/O memory), but the ethernet driver (cs89x0) still
crashes because of an invalid memory access. You can expect some
patches in the coming days.

When I have the mainline working again, I will test the clock framework pat=
ches.

> Thanks
> =A0Sascha
>
>>
>> Signed-off-by: Jaccon Bastiaansen <jaccon.bastiaansen@gmail.com>
>> ---
>> =A0arch/arm/configs/mx21ads_defconfig | =A0 =A02 +-
>> =A01 files changed, 1 insertions(+), 1 deletions(-)
>>
>> diff --git a/arch/arm/configs/mx21ads_defconfig b/arch/arm/configs/mx21a=
ds_defconfig
>> index 175c229..6726d8c 100644
>> --- a/arch/arm/configs/mx21ads_defconfig
>> +++ b/arch/arm/configs/mx21ads_defconfig
>> @@ -3,7 +3,7 @@ CONFIG_ARCH_IMX21=3Dy
>> =A0CONFIG_IMX_CLKO=3Dy
>> =A0CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=3Dy
>> =A0CONFIG_TEXT_BASE=3D0xc1000000
>> -CONFIG_MALLOC_SIZE=3D0x500000
>> +CONFIG_MALLOC_SIZE=3D0x800000
>> =A0CONFIG_LONGHELP=3Dy
>> =A0CONFIG_CMDLINE_EDITING=3Dy
>> =A0CONFIG_AUTO_COMPLETE=3Dy
>> --
>> 1.7.1
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |
> Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | http://www.p=
engutronix.de/ =A0|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0=
 =A0|
> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-=
206917-5555 |

Regards,
  Jaccon

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
