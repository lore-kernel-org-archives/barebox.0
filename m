Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwrdy-0003SP-7m
 for barebox@lists.infradead.org; Wed, 29 Jan 2020 18:00:51 +0000
References: <CAEKVsgZHZR2b28wcMcpac4Qa3KebrXMRf14STZ8GCum0NmnLgg@mail.gmail.com>
 <a0c0afa2-cb44-3e40-b7e7-962fd80f2902@pengutronix.de>
 <CAEKVsgYu15u7d6ptaU7aZGy6OXOhN7743aLdGOz_3fZOPK2JpQ@mail.gmail.com>
 <fead3df7-e831-8ff2-3f62-801ead7eda7b@pengutronix.de>
 <CAEKVsgbBXKcmg2rRFZ16VSNLnu+7C+pJH-GomExFxz9o_+bqdA@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <9c6ecb91-ab54-c7c7-813e-394bd71e4506@pengutronix.de>
Date: Wed, 29 Jan 2020 19:00:46 +0100
MIME-Version: 1.0
In-Reply-To: <CAEKVsgbBXKcmg2rRFZ16VSNLnu+7C+pJH-GomExFxz9o_+bqdA@mail.gmail.com>
Content-Language: en-US
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
Subject: Re: Small tweak to get ACPI watchdog working (iTCO)
To: Cameron Ferguson <cameron.bare86@gmail.com>, barebox@lists.infradead.org

On 1/29/20 6:55 PM, Cameron Ferguson wrote:
>> In the code you sent last time, it said that your addresses
>> are IORESOURCE_IO. These are I/O ports, not memory-mapped ports,
>> so you can't dereference a pointer and access them, but instead you
>> have to use port I/O instruction, which in barebox and Linux is
>> the out[bwl] family of functions.
> 
> 
> I got it working.

Great!

Clean it up and send patches! :-)

> 
> I included the header file "arch/x86/include/asm/io.h" and so I
> thought I was using the right functions for IO operations on ports,
> however it turns out that "linux/io.h" was being included before the
> aforementioned header file, and so "inl" and outl" were already
> defined with generic implementations instead of as specific to x86.

We don't have a linux/io.h. Include order shouldn't matter, if it does,
that's a bug you can send a patch to fix this as well.

> 
> It's working. The watchdog will reboot if the Linux kernel freezes on boot up.
> 
> Thank you for your help, Ahmad, I wouldn't have looked further into
> the IO headers if you hadn't pointed me in the right direction.


Cheers
Ahamd

> 
> Cameron
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
