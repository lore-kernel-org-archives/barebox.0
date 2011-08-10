Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qr6ry-0004Fg-G1
	for barebox@lists.infradead.org; Wed, 10 Aug 2011 11:22:43 +0000
Received: by wyh11 with SMTP id 11so770583wyh.36
	for <barebox@lists.infradead.org>; Wed, 10 Aug 2011 04:22:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110808210536.GB22213@game.jcrosoft.org>
References: <CAA4bVAHyTDdjUy+xUsKWqXQWwyKh0iX_TTE=fqC=K_jPqZjGEQ@mail.gmail.com>
	<20110808210536.GB22213@game.jcrosoft.org>
Date: Wed, 10 Aug 2011 15:22:38 +0400
Message-ID: <CAA4bVAEpBaHrb_WOV4z+Y6eotO2AhR8R3B17kx_Xa9-=rd4VPA@mail.gmail.com>
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
Subject: Re: versatilepb board support is broken
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox <barebox@lists.infradead.org>

On 9 August 2011 01:05, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> On 23:49 Mon 08 Aug =A0 =A0 , Antony Pavlov wrote:
>> Hi!
>>
>> The following patch breaks qemu versatilepb board support:
>>
>> c0ff8f7f47fa10b2e683cb0452f659c97aec186f
>> =A0 =A0 versatile: switch to add_generic_device
>>
>> The problem is in serial port initialization.
>>
>> As versatilepb use only one serial port, this hack make barebox workable
>> again (of course it is not a good solution).
>>
>> --- a/arch/arm/mach-versatile/core.c
>> +++ b/arch/arm/mach-versatile/core.c
>> @@ -156,6 +156,7 @@ void versatile_register_uart(unsigned id)
>> =A0 =A0 =A0 switch (id) {
>> =A0 =A0 =A0 case 0:
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 start =3D VERSATILE_UART0_BASE;
> I found the issue too
>
> but you need to fix all uart

It was not a fix, it was a DIRTY HACK (but it was very illustrative). :)))

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
