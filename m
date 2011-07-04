Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qdbbb-0008Hv-HS
	for barebox@lists.infradead.org; Mon, 04 Jul 2011 05:22:00 +0000
Received: by wwf22 with SMTP id 22so3472082wwf.18
	for <barebox@lists.infradead.org>; Sun, 03 Jul 2011 22:21:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4E10880C.4050706@gmail.com>
References: <1309426364-22124-1-git-send-email-antonynpavlov@gmail.com>
	<20110701002815.GC14408@game.jcrosoft.org>
	<20110701192909.ab9b39c1.antonynpavlov@gmail.com>
	<4E10880C.4050706@gmail.com>
Date: Mon, 4 Jul 2011 09:21:52 +0400
Message-ID: <CAA4bVAF7w+gL10MS-QJA4ij9jB7bYO5rQJp_wN=HWQ-nwUyW1w@mail.gmail.com>
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
Subject: Re: [PATCH 1/3 v3] Add MIPS arch support to barebox
To: Shinya Kuribayashi <skuribay@gmail.com>
Cc: barebox@lists.infradead.org

On 3 July 2011 19:17, Shinya Kuribayashi <skuribay@gmail.com> wrote:

>> Let's see relocate code:
>> ---- Shinya-san's code start (arch/mips/cpu/start.S) ----
>> relocate:
>> =A0 =A0 =A0 =A0ADR =A0 =A0 t0, _start, t1 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0# t0<- current position of
>> code
>> =A0 =A0 =A0 =A0PTR_LI =A0t1, TEXT_BASE
>> =A0 =A0 =A0 =A0beq =A0 =A0 t0, t1, stack_setup
>> =A0 =A0 =A0 =A0 nop
>> ---- Shinya-san's code end ----
>>
>> This code try to check if relocation needs. It try to compute
>> _start<<current>>
>> address.
>>
>> But
>> =A0 * _start link address is KSEG0 address 0x9fc00000;
>> =A0 * we have already switched to KSEG0, so _start<<current>> =A0address
>> is 0x9fc00000 too.
>
> No. =A0ADR tries to compute 'PC-relative' _start address. =A0If it starts
> from physical 0xbfc0000, t0 is set up to 0xbfc0000 even if _start link
> address is CKSEG0. =A0If it starts from physical 0xA0100000, t0 is set
> up to 0xA0100000, and in that case _start link address is supposed to
> be set to 0x80100000.

The main problem is <<_start link address is supposed to
 be set to 0x80100000>>.

But if not?

Imagine that you have Momentus Ocelot evolution board equipped with
8MB of memory-mapped flash starting at 0xb8000000.

you get you barebox.bin (linked to 0x9fc00000), burn it to 0xb8000000
and jump to 0xb8000000. Will it work correctly?

My answer is <<no>>.

See the code:

>> ---- Shinya-san's code start (arch/mips/cpu/start.S) ----
>> =A0 =A0 =A0 =A0/* Switch to CKSEG0 segment */
>> =A0 =A0 =A0 =A0la =A0 =A0 =A0t0, 1f
>> =A0 =A0 =A0 =A0/* T.B.D. -- Convert an addree of the label '1f' into CKS=
EG0 */
>> =A0 =A0 =A0 =A0jr =A0 =A0 =A0t0
>>
>> 1:
>> ---- Shinya-san's code end ----

The command 'la' will set t0 to 0x9fc00xxx, the command 'jr' will make
jump to 0x9fc00xxx, but we work in the 0xb8000xxx addresses!

We can't use link addresses to jump if we want to make possible to run
from any KSEG0 or KSEG1 address.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
