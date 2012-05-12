Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STMB7-00075c-I3
 for barebox@lists.infradead.org; Sat, 12 May 2012 23:56:50 +0000
Received: by pbbrq13 with SMTP id rq13so5323371pbb.36
 for <barebox@lists.infradead.org>; Sat, 12 May 2012 16:56:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120512213845.GA22395@pengutronix.de>
References: <m3397emhaw.fsf@intrepid.localdomain>
 <20120512213845.GA22395@pengutronix.de>
Date: Sun, 13 May 2012 03:56:48 +0400
Message-ID: <CAA4bVAG8Hf6hDKk2=UXh5_TxXSSG+1c15=ER8LNKM-omtOnorw@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: put a valid "barebox" signature in the header on
 big-endian systems.
To: =?ISO-8859-1?Q?Uwe_Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Krzysztof Halasa <khc@pm.waw.pl>

On 13 May 2012 01:38, Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> w=
rote:
> Hello Krzysztof,
>
> On Sat, May 05, 2012 at 11:47:19PM +0200, Krzysztof Halasa wrote:
>> Signed-off-by: Krzysztof Ha=B3asa <khc@pm.waw.pl>
>>
>> diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/=
asm/barebox-arm-head.h
>> index 0dc3074..2c250e9 100644
>> --- a/arch/arm/include/asm/barebox-arm-head.h
>> +++ b/arch/arm/include/asm/barebox-arm-head.h
>> @@ -24,8 +24,7 @@ static inline void barebox_arm_head(void)
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 "1: b 1b\n"
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 "1: b 1b\n"
>> =A0#endif
>> - =A0 =A0 =A0 =A0 =A0 =A0 ".word 0x65726162\n" =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0/* 'bare' */
>> - =A0 =A0 =A0 =A0 =A0 =A0 ".word 0x00786f62\n" =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0/* 'box' */
>> + =A0 =A0 =A0 =A0 =A0 =A0 ".asciz \"barebox\"\n"
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 ".word _text\n" =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 /* text base. If copied there,
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* barebox can skip relocation
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/
> Another downside of this patch (apart from the file type detection that
> still needs adaption?) is that the magic is different depending on
> endianess.

Can this addition to the patch fix the endianess issue?

--- a/common/filetype.c
+++ b/common/filetype.c
@@ -56,7 +56,7 @@ enum filetype file_detect_type(void *_buf)

        if (strncmp(buf8, "#!/bin/sh", 9) =3D=3D 0)
                return filetype_sh;
-       if (buf[8] =3D=3D 0x65726162 && buf[9] =3D=3D 0x00786f62)
+       if (strncmp(buf8 + 0x20, "barebox", 7) =3D=3D 0)
                return filetype_arm_barebox;
        if (buf[9] =3D=3D 0x016f2818 || buf[9] =3D=3D 0x18286f01)
                return filetype_arm_zimage;

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
