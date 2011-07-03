Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QdTdK-0000Xj-WE
	for barebox@lists.infradead.org; Sun, 03 Jul 2011 20:51:16 +0000
Received: by wyf23 with SMTP id 23so3924211wyf.36
	for <barebox@lists.infradead.org>; Sun, 03 Jul 2011 13:50:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4E0F2E23.4000801@pobox.com>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<1309317858-11861-2-git-send-email-antonynpavlov@gmail.com>
	<4E0F2E23.4000801@pobox.com>
Date: Mon, 4 Jul 2011 00:50:24 +0400
Message-ID: <CAA4bVAFqMQdBasON1OfYqWtEQt508keMFEOijxH-34xPTqbyGA@mail.gmail.com>
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
Subject: Re: [PATCH 2/4] MIPS: add Malta machine support to barebox
To: Shinya Kuribayashi <skuribay@pobox.com>
Cc: barebox@lists.infradead.org

On 2 July 2011 18:41, Shinya Kuribayashi <skuribay@pobox.com> wrote:
> On 6/29/11 12:24 PM, Antony Pavlov wrote:
...
>> =A0arch/mips/mach-mti-malta/Makefile =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =
=A0 =A01 +
>> =A0arch/mips/mach-mti-malta/include/mach/hardware.h | =A0 32
>> +++++++++++++++++++
>> =A0arch/mips/mach-mti-malta/reset.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 36
>> ++++++++++++++++++++++
>> =A06 files changed, 104 insertions(+), 0 deletions(-)
>> =A0create mode 100644 arch/mips/mach-mti-malta/Kconfig
>> =A0create mode 100644 arch/mips/mach-mti-malta/Makefile
>> =A0create mode 100644 arch/mips/mach-mti-malta/include/mach/hardware.h
>> =A0create mode 100644 arch/mips/mach-mti-malta/reset.c
>
> Just mach-malta would be good? =A0I don't want to see two '-' hyphens.
>
> I'm working on the ARM kernel these days, and find mach/plat-based
> categorizing technique useful/promising, and this is a good opportunity
> to try in this MIPS support (even if the Linux/MIPS kernel doesn't).
>

I don't like very much 'mti-malta' name. linux kernel use this name,
but I can change it :))

>> + * barebox is free software: you can redistribute it and/or modify
>> + * it under the terms of the GNU General Public License as published by
>> + * the Free Software Foundation, either version 3 of the License, or
>> + * (at your option) any later version.
>
> GPLv3? =A0I'm not sure which GPL version should be applied to barebox,
> but as it's highly based on the Linux kernel technology, GPLv2 (or
> later) would be the case.

Correct remark.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
