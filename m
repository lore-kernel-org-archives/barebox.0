Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QbUjs-0005BY-SX
	for barebox@lists.infradead.org; Tue, 28 Jun 2011 09:37:49 +0000
Received: by wyf23 with SMTP id 23so12566wyf.36
	for <barebox@lists.infradead.org>; Tue, 28 Jun 2011 02:37:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110628051134.GN17355@game.jcrosoft.org>
References: <1309194834-2292-1-git-send-email-antonynpavlov@gmail.com>
	<1309194834-2292-2-git-send-email-antonynpavlov@gmail.com>
	<20110628051134.GN17355@game.jcrosoft.org>
Date: Tue, 28 Jun 2011 13:37:46 +0400
Message-ID: <BANLkTim9Dx3uuE-3v33PdmpSpv9K30zhcA@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 28/06/2011, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> On 21:13 Mon 27 Jun     , Antony Pavlov wrote:
>> Only supported board is qemu malta:
>>   * barebox works in uncached memory;
>>   * no peripherals support, but serial port.
>
> please take a look on here
> http://git.jcrosoft.org/git?p=barebox.git;a=shortlog;h=refs/heads/mips
>
> the work start by Shinya Kuribayashi to support mips and barebox
>
> maybe you can merge both
>

I took a look on it.

I can build 'qemu' target with default config, but I can't see
any output in emulator.

I can't even build 'malta' target with default config.

Is it runnable at all?

I think, that Shinya's concepts can be used in the future, but they
are very complex for initial mips support.

IMHO, the Shinya's code is redundant (> 200K ) --- initial support
must be as small as possible.

The file Kconfig is overcomplicated. Many variables are really unused:
 DMA_NONCOHERENT,
 SWAP_IO_SPACE
 HW_HAS_PCI
 SYS_SUPPORTS_{32,64}BIT_KERNEL
 SYS_SUPPORTS_ARBIT_HZ
  and others

In other hand the options ARCH_TEXT_BASE and CPU_BIG_ENDIAN are useful
just now, but I have missed them.

But now I see, that I can make my mips support better --- split big
patch and make some parts of code configurable.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
