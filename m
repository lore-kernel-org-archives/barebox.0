Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QdTSm-0004Ne-Cb
	for barebox@lists.infradead.org; Sun, 03 Jul 2011 20:40:21 +0000
Received: by wwf22 with SMTP id 22so3337903wwf.18
	for <barebox@lists.infradead.org>; Sun, 03 Jul 2011 13:40:11 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4E0F2158.4050505@pobox.com>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<4E0F2158.4050505@pobox.com>
Date: Mon, 4 Jul 2011 00:40:10 +0400
Message-ID: <CAA4bVAGP3L_MgNu8-SVjAdX2badmFrfjzfs48ZyUBg2n9yJ=uw@mail.gmail.com>
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
Subject: Re: [PATCH 1/4] Add MIPS arch support to barebox
To: Shinya Kuribayashi <skuribay@pobox.com>
Cc: barebox@lists.infradead.org

On 2 July 2011 17:47, Shinya Kuribayashi <skuribay@pobox.com> wrote:
> On 6/29/11 12:24 PM, Antony Pavlov wrote:
>>
>> Barebox can use only uncached memory.
>
> In addition to super-summarized one-liner commit log, I'd like to see
> the reason why it is.

Because the using of KSEG1 is most elementary way to make barebox work on M=
IPS.

If you use KSEG1 you have no code for cache setup and no cache exceptions.


> Is there any reason why head.S, not start.S? =A0Other archs in the tree
> name it start*.[cS].

x86 and sandbox use other names.
In mips linux this file have name head.S.

But I don't insist on this name.


>> =A0arch/mips/include/asm/barebox.h =A0 =A0 | =A0 24 +
>> =A0arch/mips/include/asm/bitops.h =A0 =A0 =A0| =A0 32 ++
...
>> =A0arch/mips/include/asm/swab.h =A0 =A0 =A0 =A0| =A0 59 ++
>> =A0arch/mips/include/asm/types.h =A0 =A0 =A0 | =A0 44 ++
>> =A0arch/mips/include/mach/debug_ll.h =A0 | =A0 35 ++
>
> And I would like to know where these kernel headers from. =A0If it's the
> Linux kernel, which version they're based on, and what modifications are
> made for barebox. =A0Such information is useful when we add/remove bits in
> the future. =A0This is why I did for my patches in this regard in a caref=
ul
> manner.

Good idea! I will use it.

> If it's from U-Boot tree,it's bad idea and let's redo from the scratch.
> Starting small is good, starting based on U-Boot is not good in any area.

:))))
is U-Boot so terrible?

But I agree, now there is no reason starting based on U-Boot.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
