Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QbaR0-0003JA-4o
	for barebox@lists.infradead.org; Tue, 28 Jun 2011 15:42:43 +0000
Received: by wyf23 with SMTP id 23so283045wyf.36
	for <barebox@lists.infradead.org>; Tue, 28 Jun 2011 08:42:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4E09EE10.1050607@pobox.com>
References: <1309194834-2292-1-git-send-email-antonynpavlov@gmail.com>
	<1309194834-2292-2-git-send-email-antonynpavlov@gmail.com>
	<4E09EE10.1050607@pobox.com>
Date: Tue, 28 Jun 2011 19:42:39 +0400
Message-ID: <BANLkTi=wKBoMJX=XsmWAnYqoACye46xj4A@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 2/2] Add MIPS arch support to barebox
To: Shinya Kuribayashi <skuribay@pobox.com>
Cc: barebox@lists.infradead.org

On 28 June 2011 19:06, Shinya Kuribayashi <skuribay@pobox.com> wrote:
> On 6/28/11 2:13 AM, Antony Pavlov wrote:
>>
>> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
>> new file mode 100644
>> index 0000000..10c0fbb
>> --- /dev/null
>> +++ b/arch/mips/Kconfig
>> @@ -0,0 +1,55 @@
>
> [...]
>>
>> +source arch/mips/mach-qemu/Kconfig
>> +
>> +choice
>> + =A0 =A0 =A0 prompt "Bring up type"
>> +
>> + =A0 =A0 =A0 config MIPS_NATIVE_BRINGUP
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 bool "native"
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 help
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Barebox will act as a native bootlo=
ader. This includes
>> all the
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0required initialization needed to b=
ring up a piece of
>> hardware.
>> +
>> +endchoice
>
> Native bringup / native bootloader should be replaced with
> something more appropriate or descriptive.

I think that there is no need of this option in initial mips support.

In my everyday practice with the barebox-like firmware I use two
different type of firmware:
  * firmware, burned to the ROM (native bringup), this is principal
modus vivendi for firmware;
  * RAM-loadable firmware. This type of firmware is usable in case of
board damage or critical error of ROM firmware. Also RAM-loadable
firmware usable for testing of new version of firmware.

I think it is desirable to add this parameter in the future.

>> diff --git a/arch/mips/boot/entry.c b/arch/mips/boot/entry.c
>> new file mode 100644
>> index 0000000..98d954e
>> --- /dev/null
>> +++ b/arch/mips/boot/entry.c
>> @@ -0,0 +1,80 @@
>> +/*
>> + * (C) Copyright 2000-2006
>> + * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
>
> Which part in this file belongs to Wolfgang? =A0I don't see any, and
> recommend you to replace with yours.
>

Hmm. You are right.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
