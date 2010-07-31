Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OfDrU-0001MI-Ba
	for barebox@lists.infradead.org; Sat, 31 Jul 2010 15:20:33 +0000
Received: by ewy9 with SMTP id 9so1091594ewy.36
	for <barebox@lists.infradead.org>; Sat, 31 Jul 2010 08:20:31 -0700 (PDT)
Message-ID: <4C543F3A.1040709@dawes.za.net>
Date: Sat, 31 Jul 2010 17:20:26 +0200
From: Rogan Dawes <rogan@dawes.za.net>
MIME-Version: 1.0
References: <4C532D05.7020407@dawes.za.net> <4C540747.7000602@dawes.za.net>
	<4C5418BF.3000301@eukrea.com>
In-Reply-To: <4C5418BF.3000301@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Porting to Marvell 88F5182?
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 2010/07/31 2:36 PM, Eric B=E9nard wrote:
> Hi Rogan,
>
> Le 31/07/2010 13:21, Rogan Dawes a =E9crit :
>> Since I'd be chainloading barebox from the existing U-Boot, which does
>> support loadb and bootm, it probably makes the most sense initially to
>> just skip the lowlevel init, and build a minimal ARM second stage, and
>> wrap it in a u-boot image, I think.
>>
>> I tried using the at91sam9263ek_defconfig, and unsetting
>> CONFIG_MACH_DO_LOWLEVEL_INIT.
>
> that won't work : you don't have the same memory mapping so barebox has
> little chance to be in ram on your platform and, even if it was in RAM
> as soon as it will poll for the serial port tx empty bit, you will stay
> blocked because your serial port is not the same as the at91sam9263.
>
> Eric

Hi Eric,

Ok, that makes sense, I guess. So the bare minimum I absolutely have to =

do is set up the serial port.

But won't the second stage loader simply use the existing memory map? I =

suppose I could tell it what it actually is, if it can't figure it out. =

I'm a little surprised it doesn't "just work", because I am currently =

booting using an old U-boot, chaining to a newly compiled U-Boot, and it =

"just works" (apart from the flash).

Regards,

Rogan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
