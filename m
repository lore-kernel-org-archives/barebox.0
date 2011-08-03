Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QobtO-0002aM-3z
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 13:53:51 +0000
Received: by wyg19 with SMTP id 19so262280wyg.36
	for <barebox@lists.infradead.org>; Wed, 03 Aug 2011 06:53:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110803125446.GC24730@game.jcrosoft.org>
References: <1312362661-31340-1-git-send-email-antonynpavlov@gmail.com>
	<1312362661-31340-4-git-send-email-antonynpavlov@gmail.com>
	<20110803125446.GC24730@game.jcrosoft.org>
Date: Wed, 3 Aug 2011 17:53:46 +0400
Message-ID: <CAA4bVAGVD7YaOfMhhiE-eKJoXz3Vh+ar6oNCGBOb2wrm1U7V1A@mail.gmail.com>
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
Subject: Re: [PATCH v9 04/12] MIPS: add common MIPS stuff
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 3 August 2011 16:54, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
>> index e37b6c5..2b3227a 100644
>> --- a/arch/mips/include/asm/common.h
>> +++ b/arch/mips/include/asm/common.h
>> @@ -24,6 +24,17 @@
>> =A0#ifndef _ASM_MIPS_COMMON_H_
>> =A0#define _ASM_MIPS_COMMON_H_
>>
>> -/* nothing special yet */
>> +#define NS16550_READ_WRITE_UART_FUNC(pfx, shift, offset) \
>> +static unsigned int pfx ##_uart_read(unsigned long base, \
>> + =A0 =A0 =A0 =A0 =A0 =A0 unsigned char reg_idx) \
>> +{ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
>> + =A0 =A0 return __raw_readb((char *)base + (reg_idx << shift) + offset)=
; \
>> +} =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 \
>> +static void pfx ##_uart_write(unsigned int val, unsigned long base, \
>> + =A0 =A0 =A0 =A0 =A0 =A0 unsigned char reg_idx) \
>> +{ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
>> + =A0 =A0 __raw_writeb(val, (char *)base + (reg_idx << shift) + offset);=
 =A0\
>> +} =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> you can drop this
>
> add the following patch instead as will need readb/w/l and writeb/w/l for
> cfi support anyway

Unfortunately, I can't drop it just now. But I will try to drop it in
nearest future. Apropos, cfi does not work for me just now either.

> otherwise lokks very good

Thanks!

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
