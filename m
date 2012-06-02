Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SafNe-0001VB-Js
 for barebox@lists.infradead.org; Sat, 02 Jun 2012 03:51:59 +0000
Received: by yhjj52 with SMTP id j52so2421113yhj.36
 for <barebox@lists.infradead.org>; Fri, 01 Jun 2012 20:51:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120602025222.GO2202@game.jcrosoft.org>
References: <1338542601-28151-1-git-send-email-antonynpavlov@gmail.com>
 <1338542601-28151-2-git-send-email-antonynpavlov@gmail.com>
 <20120602025222.GO2202@game.jcrosoft.org>
Date: Sat, 2 Jun 2012 07:51:55 +0400
Message-ID: <CAA4bVAGTsoeQqEPZnMpd6j34mZUrFzhJ9GcnCwwc_dX3zOmL=w@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] MIPS: XBurst: suitable solution for per-board debug_ll
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 2 June 2012 06:52, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> On 13:23 Fri 01 Jun =A0 =A0 , Antony Pavlov wrote:
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
> I'll include it via config.h or at least have a common hearder name and j=
ust
> have a single config to enable it and then enable it at board config level

This patch makes the chain:

 include/debug_ll.h (controlled by CONFIG_DEBUG_LL)
    \
     `arch/mips/mach-xburst/include/mach/debug_ll.h (included if
CONFIG_DEBUG_LL=3Dy)
          \
           `arch/mips/boards/rzx50/include/board/debug_ll.h (actual setup)

That is wrong?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
