Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-x230.google.com ([2607:f8b0:4001:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkB1Q-0003vs-56
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 12:41:56 +0000
Received: by iedfl3 with SMTP id fl3so130138545ied.1
 for <barebox@lists.infradead.org>; Mon, 20 Apr 2015 05:41:34 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150413130411.GB19889@pengutronix.de>
References: <CAHQ1cqGVK7z-joRkPEWvswo4JDw6BgPxM9TNVgrsZAyN8cmqUg@mail.gmail.com>
 <20150413130411.GB19889@pengutronix.de>
Date: Mon, 20 Apr 2015 05:41:34 -0700
Message-ID: <CAHQ1cqFsmdJn9JWzbHbRP-9CFBUi5Xk_O66btO1Png8cwn0zyA@mail.gmail.com>
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
Subject: Re: Booting Linux on Altera's socfpga
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

>> 2. Boot into barebox
>>
>> 3. cp /boot/soc_system.rbf /dev/socfpga-fpga (This step initially
>> didn't work for me, so I had to make a change to the firmware driver
>> http://lists.infradead.org/pipermail/barebox/2015-April/023194.html)
>>
>
> This is interesting, because all rbf's I generated myself worked fine.
> I wonder why this is different...
>

My guess is that all of the .rbfs you generated had their length be
multiple of 4


>> After the last step I and barebox jumps to the kernel code I don't see
>> any output on the serial at all.
>>
>
> Wild guess: does the Rocketboards kernel define "CONFIG_VMSPLIT_2G=y"?
> It is possible, that this produces errors when you use barebox.
>

You wild guess was spot on, thank you! It was indeed the reason and as
soon as I recompiled a Rocketboards kernel without that option
everything started to work just fine.


Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
