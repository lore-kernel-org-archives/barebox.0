Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.98.mail-out.ovh.net ([188.165.44.250]
	helo=98.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QbYaG-0001SO-13
	for barebox@lists.infradead.org; Tue, 28 Jun 2011 13:44:09 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by 98.mail-out.ovh.net (Postfix) with SMTP id 3AF7E4B3DDB
	for <barebox@lists.infradead.org>;
	Tue, 28 Jun 2011 15:43:44 +0200 (CEST)
Date: Tue, 28 Jun 2011 15:29:07 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110628132907.GP17355@game.jcrosoft.org>
References: <1309194834-2292-1-git-send-email-antonynpavlov@gmail.com>
	<1309194834-2292-2-git-send-email-antonynpavlov@gmail.com>
	<20110628051134.GN17355@game.jcrosoft.org>
	<BANLkTim9Dx3uuE-3v33PdmpSpv9K30zhcA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTim9Dx3uuE-3v33PdmpSpv9K30zhcA@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] Add MIPS arch support to barebox
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 13:37 Tue 28 Jun     , Antony Pavlov wrote:
> On 28/06/2011, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> > On 21:13 Mon 27 Jun     , Antony Pavlov wrote:
> >> Only supported board is qemu malta:
> >>   * barebox works in uncached memory;
> >>   * no peripherals support, but serial port.
> >
> > please take a look on here
> > http://git.jcrosoft.org/git?p=barebox.git;a=shortlog;h=refs/heads/mips
> >
> > the work start by Shinya Kuribayashi to support mips and barebox
> >
> > maybe you can merge both
> >
> 
> I took a look on it.
> 
> I can build 'qemu' target with default config, but I can't see
> any output in emulator.
> 
> I can't even build 'malta' target with default config.
> 
> Is it runnable at all?
> 
> I think, that Shinya's concepts can be used in the future, but they
> are very complex for initial mips support.
> 
> IMHO, the Shinya's code is redundant (> 200K ) --- initial support
> must be as small as possible.
> 
> The file Kconfig is overcomplicated. Many variables are really unused:
>  DMA_NONCOHERENT,
>  SWAP_IO_SPACE
>  HW_HAS_PCI
>  SYS_SUPPORTS_{32,64}BIT_KERNEL
>  SYS_SUPPORTS_ARBIT_HZ
>   and others
> 
> In other hand the options ARCH_TEXT_BASE and CPU_BIG_ENDIAN are useful
> just now, but I have missed them.
> 
> But now I see, that I can make my mips support better --- split big
> patch and make some parts of code configurable.
in Shinya-san work the init code is really more clean than u-boot and the
Makefile too and other part

I think you can merge both o have a good mips implementation

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
