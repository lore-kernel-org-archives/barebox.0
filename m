Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QdT8D-0004Hs-WA
	for barebox@lists.infradead.org; Sun, 03 Jul 2011 20:19:07 +0000
Received: by wwf22 with SMTP id 22so3332287wwf.18
	for <barebox@lists.infradead.org>; Sun, 03 Jul 2011 13:18:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4E10880C.4050706@gmail.com>
References: <1309426364-22124-1-git-send-email-antonynpavlov@gmail.com>
	<20110701002815.GC14408@game.jcrosoft.org>
	<20110701192909.ab9b39c1.antonynpavlov@gmail.com>
	<4E10880C.4050706@gmail.com>
Date: Mon, 4 Jul 2011 00:18:58 +0400
Message-ID: <CAA4bVAG4nFa+a-F_2-SS8wnKHRWEiWwM2gga_M-Qz2Qbyr8F2w@mail.gmail.com>
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

>> ---- Shinya-san's code start (arch/mips/cpu/start.S) ----
>> =A0 =A0 =A0 =A0setup_c0_status_reset
>>
>> =A0 =A0 =A0 =A0/*
>> =A0 =A0 =A0 =A0 * Config: K0 should be set to the desired Cache Coherency
>> =A0 =A0 =A0 =A0 * Algorithm (CCA) prior to accessing Kseg0.
>> =A0 =A0 =A0 =A0 */
>> =A0 =A0 =A0 =A0mfc0 =A0 =A0t0, CP0_CONFIG
>> =A0 =A0 =A0 =A0/* T.B.D. */
>> =A0 =A0 =A0 =A0mtc0 =A0 =A0t0, CP0_CONFIG
>>
>> =A0 =A0 =A0 =A0/*
>> =A0 =A0 =A0 =A0 * Config: (4KEm and 4KEp cores only) KU and K23 should b=
e set to
>> =A0 =A0 =A0 =A0 * the desired CCA for USeg/KUSeg and KSeg2/3 respectivel=
y prior to
>> =A0 =A0 =A0 =A0 * accessing those regions.
>> =A0 =A0 =A0 =A0 */
>> =A0 =A0 =A0 =A0mfc0 =A0 =A0t0, CP0_CONFIG
>> =A0 =A0 =A0 =A0/* T.B.D. */
>> =A0 =A0 =A0 =A0mtc0 =A0 =A0t0, CP0_CONFIG
>> ---- Shinya-san's code end ----
>>
>> does this code initialise KSEG0 cache mode?
>> does this code change CP0_CONFIG at all?
>> My answer is "no".
>
> Correct. =A0Please keep in mind I didn't do anything set up in start.S.
> I was thinking around how to generalize the initialization procedures
> how we could maintain/support various MIPS processors, and what shape
> of code would be reasonable (and scalable).

The generalization is possible if you have the piece of code for the
processor A and the piece of code for the processor B.
Then you can make generalization and produce the piece of code for the
both processors.

But it is very difficult to write universal code without attempts to
check of it ability to work.

>> But bellow, you can see switching to KSEG0 (label 1f linked to 0x9fc00xx=
x)
>> ...
>>
>> ---- Shinya-san's code start (arch/mips/cpu/start.S) ----
>> =A0 =A0 =A0 =A0/* Switch to CKSEG0 segment */
>> =A0 =A0 =A0 =A0la =A0 =A0 =A0t0, 1f
>> =A0 =A0 =A0 =A0/* T.B.D. -- Convert an addree of the label '1f' into CKS=
EG0 */
>> =A0 =A0 =A0 =A0jr =A0 =A0 =A0t0
>>
>> 1:
>> ---- Shinya-san's code end ----
>
> It's intended to be converted to CKSEG0, but it's not necessarily
> 0x9fc00xxx.

In this particular example it is necessarily 0x9fc00xxx.
You have set CONFIG_TEXT_BASE=3D0x9fc00000.

>
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
> be set to 0x80100000. =A0The 'link address' is supposed to be used
> _after_ relocation. =A0 You see?

No, I don't.

in barebox.lds.S you have:
---- begin ----
SECTIONS
{
        . =3D TEXT_BASE;
        /* read-only */
        _text =3D .;      /* Text and read-only data */
        .text : {
----- end ----

So '_start' link address is always TEXT_BASE.

Here is the code:
---- Shinya-san's code start (arch/mips/cpu/start.S) ----
        la      t0, 1f     // pc =3D 0xbfc00xxx
        jr      t0
1:
relocate:
        ADR	t0, _start, t1
        PTR_LI	t1, TEXT_BASE
---- Shinya-san's code end ----

ADR macro always run with pc =3D=3D 'relocate' link address.
So ADR will compute '_start' link address.
This code always make t0 =3D=3D t1.

Eventually you can try to check the code using an emulator.

--- Shinya-san's code start (arch/mips/cpu/start.S) ----
        la      t0, 1f     // pc =3D 0xbfc00xxx
        jr      t0
1:
relocate:
	ADR	t0, _start, t1		// pc =3D 0x9fc00xxx, t0=3D0x9fc00000
	PTR_LI	t1, TEXT_BASE           // t1 =3D 0x9fc00000
	beq	t0, t1, stack_setup
	 nop
---- Shinya-san's code end ----

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
