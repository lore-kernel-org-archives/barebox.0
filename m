Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x233.google.com ([2607:f8b0:4002:c05::233])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c6XKZ-0006Nr-R2
 for barebox@lists.infradead.org; Tue, 15 Nov 2016 06:34:56 +0000
Received: by mail-yw0-x233.google.com with SMTP id i145so86160796ywg.2
 for <barebox@lists.infradead.org>; Mon, 14 Nov 2016 22:34:33 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAKZffXHoZX8Wrd+EEEp+5rHBMZVeK86vjSb1Cp5hC8=H4bkYVQ@mail.gmail.com>
References: <CAKZffXE4+sTX3Ex9VW7O9rfN+dDLTE9JRNa1gM5+Bbg2W9uz4Q@mail.gmail.com>
 <87polymnlc.fsf@gmail.com>
 <CAKZffXHoZX8Wrd+EEEp+5rHBMZVeK86vjSb1Cp5hC8=H4bkYVQ@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 14 Nov 2016 22:34:32 -0800
Message-ID: <CAHQ1cqG9QyG04mfjOoeOQyn4f7TG6+J5e8XNLxyS88imto_LXA@mail.gmail.com>
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
Subject: Re: Compiler issues
To: Jose Luis Zabalza <jlz.3008@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Nov 14, 2016 at 9:32 PM, Jose Luis Zabalza <jlz.3008@gmail.com> wrote:
> Thanks for your reply, Holger.
>
> I am sorry. I have to apologize for no mentioning that this thread is
> the continuation of "Re: Configure RAM size on iMX53 board".
>
> I will summarize the situation. I have a iMX53 custom board with two
> versions, 512MB (only CS0) and 1GB (CS0 and CS1) RAM. Both versions
> are running with same old uboot binary because uboot don't access to
> high memory address. I write code for support Barebox on 1GB version
> successfully but hangs on 512MB version.  No messages are displayed on
> console.
>
> Sascha recomends me don't configure CS1 on DCD table and use
> barebox_arm_entry() function instead of imx53_barebox_entry() but it
> don't work.
>
> So, the first step was  find where the code hangs.
>
> I activated a GPIO on DCD table and deactivate on Barebox code to know
> if a function is executed.
>
> ==========<cut>===========
> wm 32 0x53F84004 0x00000008  // Set GPIO as output
> wm 32 0x53F84000 0x00000008  // Activate GPIO
>
> ...
>
> *((unsigned *)0x53F84000)=0; // Deactivate GPIO
> ==========<cut>===========
>
> With the trial and error method, I found the execution lack on
> initcall secuence. Specifically don't reach myboard_initcall()
>
> ==========<cut>===========
> static int myboard_init(void)
> {
>     *((unsigned *)0x53F84000)=0;
>
>     imx_esdctl_disable();
>
>         arm_add_mem_device("ram0", MX53_CSD0_BASE_ADDR, SZ_512M);
>
>         return 0;
> }
> core_initcall(myboard_init);
> ==========<cut>===========
>
> So I changed core_initcall() to pure_initcall() for early
> myboard_init() execution and It was good but Barebox hangs on another
> initcall function.
>
> Next trial and error session I found imx_gpio_add() was not reached,
> so I suspect it was a compiler problem or a timing problem. I
> discarded the timing problem because It was very repetitive.
>
> I changed -Os option with -O0 on Makefile. Now imx_gpio_add() are
> executed Ok but net_init() hangs.
>
> The final firework:
>
> ==========<cut barebox/net/net.c>===========
> //
> // this code don't deactivate the GPIO
> //
> static int net_init(void)
> {
>     int i;
>
>     for (i = 0; i < PKTBUFSRX; i++)
>       NetRxPackets[i] = net_alloc_packet();
>
>     *((unsigned *)0x53F84000)=0;
>
> ==========<cut>===========
> //
> // This code YES. It deactivate the GPIO
> //
> static int net_init(void)
> {
>   volatile int i;
>
>     for (i = 0; i < PKTBUFSRX; i++)
>     {
>       if(i > 10)
>       {
>       // this code is not executed because PKTBUFSRX is 4
>       }
>
>       NetRxPackets[i] = net_alloc_packet();
>     }
>
>     *((unsigned *)0x53F84000)=0;
> ==========<cut>===========
>
> Now, the code hangs on other unknow initcall function but I think
> that's not the problem.
>
> Some idea?
> Some dark compiler flag to de/activate ?

That explanation is not very simple so it is unlikely to be true. If I
were to guess I'd say you are still having problems with RAM
boundaries calculation because what you describe reminds me of the
behavior I've observed many times when Barebox gets relocated such
that part of the image is placed into area that does not correspond to
RAM, so that some of the code is good and some of it is bad.

I would recommend configuring DEBUG_LL, instrumenting
barebox_arm_entry from entry.c to display membase and memsize and
making sure they fall within a valid region.

Hope this helps,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
