Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gh0-f171.google.com ([209.85.160.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SaAkK-0006uH-UE
 for barebox@lists.infradead.org; Thu, 31 May 2012 19:09:21 +0000
Received: by ghy10 with SMTP id 10so1309274ghy.16
 for <barebox@lists.infradead.org>; Thu, 31 May 2012 12:09:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120531185203.GD30400@pengutronix.de>
References: <1337867420-23444-1-git-send-email-antonynpavlov@gmail.com>
 <20120531185203.GD30400@pengutronix.de>
Date: Thu, 31 May 2012 23:09:18 +0400
Message-ID: <CAA4bVAGgtSCt=hGO5cFisKYQoG6Mj620UFwcHFmBQtqcxZvQVQ@mail.gmail.com>
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
Subject: Re: [RFC] MIPS: XBurst: suitable solution for per-board debug_ll
 options
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 31 May 2012 22:52, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Thu, May 24, 2012 at 05:50:20PM +0400, Antony Pavlov wrote:
>> In the commit 40492a0c1305835c996e15eb1cce2406473ae76d
>> (MIPS: add common header file for DEBUG_LL via NS16550)
>> introduced common DEBUG_LL via NS16550 for MIPS
>> (see file arch/mips/include/debug_ll_ns16550.h).
>>
>> In the commit 1cbe2b2c00de0efca503a983d0d008833f186f33
>> (MIPS: XBurst: add Ritmix RZX-50 board support)
>> the file debug_ll_ns16550.h used in
>> the file arch/mips/mach-xburst/include/mach/debug_ll.h.
>>
>> Usage looks like this:
>>
>> ------------------------------------------------
>> +#ifdef CONFIG_BOARD_RZX50
>> +#include <mach/debug_ll_jz4755.h>
>> +#endif
>> +
>> +#include <debug_ll_ns16550.h>
>> ------------------------------------------------
>>
>> So after adding another board (e.g. A320) we will have something like th=
is:
>>
>> ------------------------------------------------
>> =A0#ifdef CONFIG_BOARD_RZX50
>> =A0#include <mach/debug_ll_jz4755.h>
>> =A0#endif
>>
>> +#ifdef CONFIG_BOARD_A320
>> +#include <mach/debug_ll_jz4740.h>
>> +#endif
>>
>> =A0#include <debug_ll_ns16550.h>
>> ------------------------------------------------
>>
>> This approach has disadvantage:
>> * the files mach/debug_ll_jz4740.h and mach/debug_ll_jz4755.h
>> (they go to arch/mips/arch-xburst) are __BOARD-SPECIFIC__
>> (not SOC- or mach-specific!); The file mach-xburst/include/mach/debug_ll=
.h
>> is outside board directory, but it contain some board related informatio=
n.
>>
>> This commit introduce more suitable solution.
>
> Looks good. OK to apply?

No, please. There is a trivial mistype in this patch.

I'll resend the fixed patch in a short time.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
