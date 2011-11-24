Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RTfcH-0007PS-4u
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 20:09:54 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <87ipm9yd88.fsf@free.fr> <20111124120400.GC27267@pengutronix.de>
Date: Thu, 24 Nov 2011 21:09:38 +0100
In-Reply-To: <20111124120400.GC27267@pengutronix.de> (Sascha Hauer's message
 of "Thu, 24 Nov 2011 13:04:00 +0100")
Message-ID: <87d3chxoxp.fsf@free.fr>
MIME-Version: 1.0
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
Subject: Re: ARM, MMU and IO space mapping
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:
> I remember Marc had some trouble with the mmu/cache implementation on
> PXA. I don't know the details though. Maybe you have to dig through
> the manuals/kernel code to find out the differences between the normal
> arm v5 and pxa.

Ah, I know what happens now, and it's tricky.
First of all, you're right, there's a flat uncached mapping, I was misled by
the function name "create_section", without looking closely at it. I thought
it created the first section, not all the 4096 1MBytes section of a 4GB
address space.
It would deserve a "create_sections" name, in plural form.

Now, for the serial UDC not working, there comes the fun.
What's happening is that I'm using a default environment, with the init
script in [1]. This script has an error somewhere.
In barebox_startup(), we have :
   if (!stat("/env/bin/init", &s)) {
      run_command("source /env/bin/init", 0);

And here is the trickery:
 - in the NOMMU case, the run_command() returns, and the code continues to the
   eternal loop of run_shell(), which calls console.getc(), which calls
   poller(), which call the UDC poll method
   => the gadget does work
   => I have a console, hurray !

 - in the MMU case, the run_command() never returns, and the poller method is
   never called. I traced that with my leds.
   => the gadget does *not* work

So the problem was not the IO mapping, but a difference in run_command() between
MMU and non-MMU config. Moreover, in non-MMU case, once my console is connected,
I see a message :
> running /env/bin/init...
> syntax error
I the MMU case, as the gadget doesn't work, I'm blind, so I can't really tell
what is happening and which is the impact of MMU over run_command()...

Cheers.

--
Robert

[1] Script:
#!/bin/sh

#led orange 1

PATH=/env/bin
export PATH

. /env/config

while [ -z $toto ]; do
    led orange 1
    readline "Give me a word" word
    echo "I've got your $word"
done

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
