Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1faPMI-0006Eh-Ce
 for barebox@lists.infradead.org; Tue, 03 Jul 2018 17:44:59 +0000
Received: by mail-it0-x244.google.com with SMTP id o5-v6so4304351itc.1
 for <barebox@lists.infradead.org>; Tue, 03 Jul 2018 10:44:48 -0700 (PDT)
MIME-Version: 1.0
References: <20180630034900.3324-1-andrew.smirnov@gmail.com>
 <20180630034900.3324-3-andrew.smirnov@gmail.com>
 <20180702062633.ipmyiq2jtlpcbjyj@pengutronix.de>
In-Reply-To: <20180702062633.ipmyiq2jtlpcbjyj@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 3 Jul 2018 10:44:35 -0700
Message-ID: <CAHQ1cqEz1tX6WMMCPOvmg0+SKa-2haK2x86eEqwnb0PbqRt6hQ@mail.gmail.com>
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
Subject: Re: [PATCH 02/11] ARM: Add code to support SMCCC on AArch64
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, Jul 1, 2018 at 11:26 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Fri, Jun 29, 2018 at 08:48:51PM -0700, Andrey Smirnov wrote:
> > Port SMCCC code from Linux kernel. To accomodate that:
> >
> >   - Introduce CONFIG_ARM_SMCCC, to allow enabling the code
> >     independent of CONFIG_ARM_SECURE_MONITOR
> >
> >   - Bring <linux/arm-smccc.h> in
> >
> >   - Add necessary constants to arch/arm/asm-offsets.c
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/Kconfig                   |   4 +
> >  arch/arm/cpu/Makefile              |   4 +-
> >  arch/arm/cpu/smccc-call_64.S       |  52 +++++++++++
> >  arch/arm/include/asm/asm-offsets.h |   1 +
> >  arch/arm/lib/asm-offsets.c         |   7 +-
> >  include/linux/arm-smccc.h          | 135 +++++++++++++++++++++++++++++
> >  6 files changed, 200 insertions(+), 3 deletions(-)
> >  create mode 100644 arch/arm/cpu/smccc-call_64.S
> >  create mode 100644 arch/arm/include/asm/asm-offsets.h
> >  create mode 100644 include/linux/arm-smccc.h
> >
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index 3555b4ee5..6f8eec708 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -388,7 +388,11 @@ config ARM_SEMIHOSTING
> >         the data on the host computer connected to the target via
> >         debugging channel (JTAG, SWD). If unsure say N
> >
> > +config ARM_SMCCC
> > +     bool
> > +
> >  config ARM_SECURE_MONITOR
> > +        select ARM_SMCCC
>
> Whitespaces instead of tab here.
>

OK, will fix in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
