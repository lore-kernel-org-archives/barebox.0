Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1d81v8-0001l6-9t
 for barebox@lists.infradead.org; Tue, 09 May 2017 09:59:08 +0000
References: <1493995618-7289-1-git-send-email-d.schultz@phytec.de>
 <1493995618-7289-4-git-send-email-d.schultz@phytec.de>
 <20170508125741.2dtqzlkicvdo2pxp@pengutronix.de>
From: Daniel Schultz <d.schultz@phytec.de>
Message-ID: <524f29f0-423f-62b9-77fb-82173f9e6c28@phytec.de>
Date: Tue, 9 May 2017 11:58:35 +0200
MIME-Version: 1.0
In-Reply-To: <20170508125741.2dtqzlkicvdo2pxp@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 4/5] arm: boards: beaglebone: Delete default env
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Am 08.05.2017 um 14:57 schrieb Sascha Hauer:
> Hi Daniel,
>
> On Fri, May 05, 2017 at 04:46:57PM +0200, Daniel Schultz wrote:
>> The Beaglebone environment should be set from outside with an application
>> specific environment.
>
> I don't understand this. What are you trying to archieve and why?
>
I thought you prefer the bootloader spec way without a predefined =

environment, but maybe I just had misunderstood you. If so, I will only =

change the mount path of the boot partition.

-- =

Mit freundlichen Gr=FC=DFen,
With best regards,
   Daniel Schultz

> Sascha
>
>>
>> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
>> ---
>>  arch/arm/boards/beaglebone/Makefile                                 | 1=
 -
>>  arch/arm/boards/beaglebone/board.c                                  | 2=
 --
>>  arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd            | 6=
 ------
>>  .../arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300 | 5=
 -----
>>  4 files changed, 14 deletions(-)
>>  delete mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/boo=
t/sd
>>  delete mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/ini=
t/usb-limit-1300
>>
>> diff --git a/arch/arm/boards/beaglebone/Makefile b/arch/arm/boards/beagl=
ebone/Makefile
>> index 21a1a29..092c31d 100644
>> --- a/arch/arm/boards/beaglebone/Makefile
>> +++ b/arch/arm/boards/beaglebone/Makefile
>> @@ -1,3 +1,2 @@
>>  lwl-y +=3D lowlevel.o
>>  obj-y +=3D board.o
>> -bbenv-y +=3D defaultenv-beaglebone
>> diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beagle=
bone/board.c
>> index 5717c45..fc16aea 100644
>> --- a/arch/arm/boards/beaglebone/board.c
>> +++ b/arch/arm/boards/beaglebone/board.c
>> @@ -85,8 +85,6 @@ static int beaglebone_devices_init(void)
>>
>>  	black =3D is_beaglebone_black();
>>
>> -	defaultenv_append_directory(defaultenv_beaglebone);
>> -
>>  	globalvar_add_simple("board.variant", black ? "boneblack" : "bone");
>>
>>  	printf("detected 'BeagleBone %s'\n", black ? "Black" : "White");
>> diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd b/=
arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
>> deleted file mode 100644
>> index aa94b2f..0000000
>> --- a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
>> +++ /dev/null
>> @@ -1,6 +0,0 @@
>> -#!/bin/sh
>> -
>> -global.bootm.image=3D/boot/uImage
>> -global.bootm.oftree=3D/boot/oftree
>> -#global.bootm.initrd=3D<path to initrd>
>> -global.linux.bootargs.dyn.root=3D"root=3D/dev/mmcblk0p2 rootfstype=3Dex=
t4 rootwait"
>> diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-l=
imit-1300 b/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit=
-1300
>> deleted file mode 100644
>> index 56313bf..0000000
>> --- a/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-13=
00
>> +++ /dev/null
>> @@ -1,5 +0,0 @@
>> -#!/bin/sh
>> -
>> -echo -n "changing USB current limit to 1300 mA... "
>> -i2c_write -b 0 -a 0x24 -r 0x01 0x3e
>> -echo "done"
>> --
>> 1.9.1
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
