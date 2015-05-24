Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-x22d.google.com ([2607:f8b0:4001:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YwaoE-0006lu-BU
 for barebox@lists.infradead.org; Sun, 24 May 2015 18:39:42 +0000
Received: by iesa3 with SMTP id a3so60855711ies.2
 for <barebox@lists.infradead.org>; Sun, 24 May 2015 11:39:16 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150523204429.GA675@omega>
References: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
 <1431572067-4038-10-git-send-email-andrew.smirnov@gmail.com>
 <20150519070613.GX6325@pengutronix.de>
 <CAHQ1cqECGkwNQp4tgBrj1g6NR01EQHjsbf_omeiN+GPHpaeuhA@mail.gmail.com>
 <20150523204429.GA675@omega>
Date: Sun, 24 May 2015 11:39:16 -0700
Message-ID: <CAHQ1cqH-RKa_6FZtKtMMQo_QU-TdA=80kT5CT2+95y5KNaUXPA@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 10/10] ARM: pbl: Add an option to validate DRAM
To: Alexander Aring <alex.aring@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

>>
>> Also, testing all of the memory in PBL code brings up the question of
>> what is the point of 'memtest' command? If the only comprehensive way
>
> The memtest command enable/disable caches and running the memtest
> function. The memtest function is moslty the same like it was when I
> touched the code, it's original taken from u-boot code [0]. The memtest
> will run on all memory space which is not allocated by barebox
> automatically, the command before had some simple "start" and "end"
> address parameters and you had some luck if you doesn't hit any core
> functionality of barebox.

I am sorry it looks like I didn't convey my point well enough. I do
understand what the 'memtest' command is doing and I agree that having
arbitrary "start" and "end' points without taking into account what
memory areas are being used internally by Barebox is a recipe for
disaster. At the same time I expects/assume that the majority of the
potential users of that command would be using that command because
they want to perform a full memory test. So what I am trying to say is
because 'memtest' can't really touch reserved memory during
execution(for obvious reasons), unless those regions are explicitly
tested before Barebox starts using them, calling it offers very
limited value(it wouldn't be completely useless, but having big chunks
of untested memory is far from ideal).

>
>> of testing memory is in PBL code than, IMHO, that function is not very
>> useful.
>>
>
> The memtest function or the memtest command? If I remember correctly
> then the memtest function was exported out of memtest command exactly
> for the reason to use it in PBL or anywhere for debugging. The memtest
> command is just simple to use.

I agree that it is very easy to use, but why would you want to use it?
I am having hard time imagining use-case where the user would want to
test only unreserved areas of memory and not need to test anything
else.


>
> - Alex
>
> [0] http://git.denx.de/?p=u-boot.git;a=blob;f=common/cmd_mem.c;h=2e85d53dd23c02902b6e4973ad3cb2e98bbda678;hb=HEAD#l711

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
