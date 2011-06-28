Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QbRZV-0001fU-Ax
	for barebox@lists.infradead.org; Tue, 28 Jun 2011 06:14:59 +0000
Received: by wyf23 with SMTP id 23so4538483wyf.36
	for <barebox@lists.infradead.org>; Mon, 27 Jun 2011 23:14:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110628051134.GN17355@game.jcrosoft.org>
References: <1309194834-2292-1-git-send-email-antonynpavlov@gmail.com>
	<1309194834-2292-2-git-send-email-antonynpavlov@gmail.com>
	<20110628051134.GN17355@game.jcrosoft.org>
Date: Tue, 28 Jun 2011 10:14:48 +0400
Message-ID: <BANLkTim9bn_BZvA4EP2Pp7RQ-mdeBUxUWg@mail.gmail.com>
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

> I try to compile but does not work on mipsel toolchains

I forgot to add :))):

Only supported board is qemu malta:
...
   * only big-endian mode.

I have flag '-EB' in a makefile.

I will try to use mipsel cross-compiler (i have never use it before!).

> please take a look on here
> http://git.jcrosoft.org/git?p=barebox.git;a=shortlog;h=refs/heads/mips
>
> the work start by Shinya Kuribayashi to support mips and barebox.
> maybe you can merge both

I will look on this git brunch.

But I have found no discussion on mips in maillist archives.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
