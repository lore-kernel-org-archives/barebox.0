Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x230.google.com ([2a00:1450:4008:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbuSa-0007fh-SX
 for barebox@lists.infradead.org; Mon, 13 May 2013 15:14:45 +0000
Received: by mail-bk0-f48.google.com with SMTP id jf3so2551352bkc.21
 for <barebox@lists.infradead.org>; Mon, 13 May 2013 08:14:21 -0700 (PDT)
Message-ID: <51910349.5040906@gmail.com>
Date: Mon, 13 May 2013 17:14:17 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de> <5190AFA1.1080503@gmail.com>
 <20130513105722.GP32299@pengutronix.de> <5190E56F.9080903@gmail.com>
 <20130513162313.4f5849a9@skate>
In-Reply-To: <20130513162313.4f5849a9@skate>
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
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On 05/13/13 16:23, Thomas Petazzoni wrote:
> Dear Sebastian Hesselbarth,
>
> On Mon, 13 May 2013 15:06:55 +0200, Sebastian Hesselbarth wrote:
>
>>> Please note that normally barebox images are expected to be runnable
>>> second stage (bootm barebox.bin). Though not really mandatory this still
>>> is a nice feature for development. This becomes difficult to support if
>>> the initial code expects the registers at 0xd0000000, hence I suggested
>>> remapping it in the kwb image so that all second stage code can already
>>> work on the remapped registers.
>>
>> Yeah, this is bugging Thomas and me for some time. The tricky part in
>> this is, that the register for setting the internal register base is in
>> the internal registers itself. You don't know the base address, you
>> cannot remap it - you can't even read it. Thomas is working on
>> something, but he will have to comment on that.
>
> One solution for Barebox is to have a DATA line in our kwbimage.cfg
> that does:
>
> DATA 0xd0020080 0xf1000000
>
> and so when Barebox boots, the remapping to 0xf1 is already done, and
> we don't have to worry about it. This way, a Barebox can chainload a
> second Barebox.

Yeah, maybe that is the best plan. There is that bootrom feature, and
this way we don't have to mess with it in barebox. But we should also
remap the other registers for memctrl similar.

>> I will flip through the patches we have for DT and see if we have a
>> stable MVEBU like what is in -next now first or rework it before it
>> moves to stable. I want Thomas to fully comment on my DT patches first,
>> but I guess he is busy ATM.
>>
>> Regarding DT, I sent a patch that adds basic address translation we need
>> because we are heavily using "ranges" property in our dtbs. We should
>> also add pci and isa bus style mapping, but that can come later.
>>
>> There is more issues I found with boolean properties but haven't
>> investigated yet.
>
> I believe we should get your existing Dove patches merged, merge the
> Kirkwood patches I have almost ready, and only then converge on the DT +
> remapping support. Would you agree with this plan?

Agree, the DT conversion is straight forward from what we now have. And
if current non-DT gets stable before we also push DT, we do it in the
next cycle.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
