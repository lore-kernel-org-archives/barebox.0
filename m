Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22a.google.com ([2607:f8b0:4002:c07::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WB212-00018f-P5
 for barebox@lists.infradead.org; Wed, 05 Feb 2014 12:55:45 +0000
Received: by mail-yk0-f170.google.com with SMTP id 9so823475ykp.1
 for <barebox@lists.infradead.org>; Wed, 05 Feb 2014 04:55:19 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20140205080001.GX16215@pengutronix.de>
References: <1391159170-17686-1-git-send-email-freesilicon@gmail.com>
 <20140204035625.GE9671@ns203013.ovh.net>
 <20140204065745.GK16215@pengutronix.de>
 <CAKRNOGwpasg7O4fW0uMJAcgOmG2re26-mk70YpHaQVyzsX_XuQ@mail.gmail.com>
 <20140205080001.GX16215@pengutronix.de>
Date: Wed, 5 Feb 2014 13:48:45 +0100
Message-ID: <CAKRNOGz8aYN3yNzG=7wAF0=8ArUmn2h2qTAyGJ1UprWQUdHhsQ@mail.gmail.com>
From: David Vincent <freesilicon@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Load PBL into SRAM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Due to the flow of answers, I'm a little lost... What is the status of
this submission, should I resend it, put more work into it or lose it
?

Thanks in advance,
David

2014-02-05 Sascha Hauer <s.hauer@pengutronix.de>:
> On Tue, Feb 04, 2014 at 08:49:55AM +0100, David Vincent wrote:
>> 2014-02-04 Sascha Hauer <s.hauer@pengutronix.de>:
>> > On Tue, Feb 04, 2014 at 04:56:25AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
>> >> On 10:06 Fri 31 Jan     , David Vincent wrote:
>> >> > This allows to load all the lowlevel init code, including the
>> >> > uncompressor, inside SRAM and not just the bare init part. This is
>> >> > useful when pbl is used as a first-stage bootloader but is loaded by an
>> >> > external firmware.
>> >> >
>> >> > Signed-off-by: David Vincent <freesilicon@gmail.com>
>> >> > ---
>> >> >  arch/arm/lib/pbl.lds.S            |    4 ++--
>> >> >  common/Kconfig                    |   16 ++++++++++++++--
>> >> >  include/asm-generic/barebox.lds.h |   14 +++++++++++++-
>> >> >  pbl/Kconfig                       |    7 +++++++
>> >> >  4 files changed, 36 insertions(+), 5 deletions(-)
>> >> >
>> >> > diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
>> >> > index 0954c89..34c0cb3 100644
>> >> > --- a/arch/arm/lib/pbl.lds.S
>> >> > +++ b/arch/arm/lib/pbl.lds.S
>> >> > @@ -50,11 +50,11 @@ SECTIONS
>> >> >             *(.text*)
>> >> >     }
>> >> >
>> >> > +   BAREBOX_PBL_SIZE
>> >> > +
>> >> >     /* Discard unwind if enable in barebox */
>> >> >     /DISCARD/ : { *(.ARM.ex*) }
>> >> >
>> >> > -   BAREBOX_BARE_INIT_SIZE
>> >> > -
>> >>
>> >> nack you change the binary format you can add an information but can not
>> >> change the format
>> >
>> > I don't think the format is changed here. It shouldn't matter where the
>> > /DISCARD/ is, right? Nevertheless the patch looks more obvious if just
>> > the line is changed, not its position.
>> >
>> >> >  #include <linux/stringify.h>
>> >> >  /* use 2 ASSERT because ld can not accept '"size" "10"' format */
>> >> >  #define BAREBOX_BARE_INIT_SIZE                                     \
>> >> >     _barebox_bare_init_size = __bare_init_end - _text;      \
>> >> >     ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, "Barebox bare_init size > ") \
>> >> > -   ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, __stringify(MAX_BARE_INIT_SIZE)) \
>> >> > +   ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, __stringify(MAX_BARE_INIT_SIZE))
>> >> different patch
>> >
>> > This just removes the trailing '\' which is necessary here.
>>
>> It isn't obvious for me why the trailing '\' is necessary but you know
>> better than me so I will put it back and add one on the next
>> definition.
>
> I wasn't clear. What I meant is that it's necessary to remove the
> whitespace. But as said, I misread the patch anyway.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
