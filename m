Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gg0-f177.google.com ([209.85.161.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSltB-0006bD-4C
 for barebox@lists.infradead.org; Fri, 11 May 2012 09:12:06 +0000
Received: by ggcs5 with SMTP id s5so1858540ggc.36
 for <barebox@lists.infradead.org>; Fri, 11 May 2012 02:11:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120511072013.GZ27341@pengutronix.de>
References: <1336642330-23675-1-git-send-email-antonynpavlov@gmail.com>
 <1336642330-23675-2-git-send-email-antonynpavlov@gmail.com>
 <20120511072013.GZ27341@pengutronix.de>
Date: Fri, 11 May 2012 13:11:51 +0400
Message-ID: <CAA4bVAGFKWvkxTm+u6ZkH8Z4eRU-hoW8-n+rKi0cJqxPZnNvjQ@mail.gmail.com>
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
Subject: Re: [RFC 1/5] MIPS: add common header file for DEBUG_LL via NS16550
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11 May 2012 11:20, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Thu, May 10, 2012 at 01:32:06PM +0400, Antony Pavlov wrote:
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>> =A0arch/mips/include/debug_ll_common.h | =A0 40 ++++++++++++++++++++++++=
+++++++++++
>> =A01 file changed, 40 insertions(+)
>> =A0create mode 100644 arch/mips/include/debug_ll_common.h
>>
>> diff --git a/arch/mips/include/debug_ll_common.h b/arch/mips/include/deb=
ug_ll_common.h
>
> Does that mean that every mips has a ns16550? If not the file should
> have 16550 in its name.

You are right!

Can we use the header like this for the other architectures (ARM etc) too?

> Sascha
>
>> new file mode 100644
>> index 0000000..7c26f54
>> --- /dev/null
>> +++ b/arch/mips/include/debug_ll_common.h
>> @@ -0,0 +1,40 @@
>> +/*
>> + * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
>> + *
>> + * This file is part of barebox.
>> + * See file CREDITS for list of people who contributed to this project.
>> + *
>> + * This program is free software; you can redistribute it and/or modify
>> + * it under the terms of the GNU General Public License version 2
>> + * as published by the Free Software Foundation.
>> + *
>> + * This program is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the
>> + * GNU General Public License for more details.
>> + *
>> + * You should have received a copy of the GNU General Public License
>> + * along with this program; if not, write to the Free Software
>> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA =A002111-13=
07 =A0USA
>> + */
>> +
>> +/** @file
>> + * =A0This file contains declaration for early output support
>> + */
>> +#ifndef __INCLUDE_ARCH_DEBUG_LL_COMMON_H__
>> +#define __INCLUDE_ARCH_DEBUG_LL_COMMON_H__
>> +
>> +#include <asm/io.h>
>> +
>> +#define rbr =A0 =A0 =A0 =A0 =A0(0 << DEBUG_LL_UART_SHIFT)
>> +#define lsr =A0 =A0 =A0 =A0 =A0(5 << DEBUG_LL_UART_SHIFT)
>> +
>> +#define LSR_THRE =A0 =A0 0x20 =A0 =A0/* Xmit holding register empty */
>> +
>> +static __inline__ void putc(char ch)
>> +{
>> + =A0 =A0 while (!(__raw_readb((u8 *)DEBUG_LL_UART_ADDR + lsr) & LSR_THR=
E));
>> + =A0 =A0 __raw_writeb(ch, (u8 *)DEBUG_LL_UART_ADDR + rbr);
>> +}
>> +
>> +#endif =A0/* __INCLUDE_ARCH_DEBUG_LL_COMMON_H__ */
>> --
>> 1.7.10
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |
> Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | http://www.p=
engutronix.de/ =A0|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0=
 =A0|
> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-=
206917-5555 |



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
