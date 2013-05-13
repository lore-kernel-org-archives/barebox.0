Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x229.google.com ([2a00:1450:4008:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbsTQ-0004p0-Qa
 for barebox@lists.infradead.org; Mon, 13 May 2013 13:07:30 +0000
Received: by mail-bk0-f41.google.com with SMTP id jc3so2487492bkc.0
 for <barebox@lists.infradead.org>; Mon, 13 May 2013 06:06:59 -0700 (PDT)
Message-ID: <5190E56F.9080903@gmail.com>
Date: Mon, 13 May 2013 15:06:55 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de> <5190AFA1.1080503@gmail.com>
 <20130513105722.GP32299@pengutronix.de>
In-Reply-To: <20130513105722.GP32299@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/5] arm: initial support for Marvell Dove SoCs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On 05/13/13 12:57, Sascha Hauer wrote:
> On Mon, May 13, 2013 at 11:17:21AM +0200, Sebastian Hesselbarth wrote:
>> The regbase pointer is required as early debug _will_ access register
>> before and after remap and there is no way around it. But
>> mvreadl/mvwritel will be limited to code that sits in mach-mvebu, all
>> drivers will depend on DT.
>
> Having the register base as variable sounds like a good idea. This
> should give us some more flexibility, no matter what we do later.
>
> Please note that normally barebox images are expected to be runnable
> second stage (bootm barebox.bin). Though not really mandatory this still
> is a nice feature for development. This becomes difficult to support if
> the initial code expects the registers at 0xd0000000, hence I suggested
> remapping it in the kwb image so that all second stage code can already
> work on the remapped registers.

Yeah, this is bugging Thomas and me for some time. The tricky part in
this is, that the register for setting the internal register base is in
the internal registers itself. You don't know the base address, you
cannot remap it - you can't even read it. Thomas is working on
something, but he will have to comment on that.

> BTW. the patches in the -next branch can still be rebased, so if you
> agree with Thomas we can still merge a new Marvell series with Dove
> support and the register base patches already integrated. Up to you, I
> don't care much and also take sequential update patches.

I will flip through the patches we have for DT and see if we have a
stable MVEBU like what is in -next now first or rework it before it
moves to stable. I want Thomas to fully comment on my DT patches first,
but I guess he is busy ATM.

Regarding DT, I sent a patch that adds basic address translation we need
because we are heavily using "ranges" property in our dtbs. We should
also add pci and isa bus style mapping, but that can come later.

There is more issues I found with boolean properties but haven't
investigated yet.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
