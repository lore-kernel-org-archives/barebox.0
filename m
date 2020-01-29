Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwqf0-0004zu-4X
 for barebox@lists.infradead.org; Wed, 29 Jan 2020 16:57:51 +0000
References: <CAEKVsgZHZR2b28wcMcpac4Qa3KebrXMRf14STZ8GCum0NmnLgg@mail.gmail.com>
 <a0c0afa2-cb44-3e40-b7e7-962fd80f2902@pengutronix.de>
 <CAEKVsgYu15u7d6ptaU7aZGy6OXOhN7743aLdGOz_3fZOPK2JpQ@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <fead3df7-e831-8ff2-3f62-801ead7eda7b@pengutronix.de>
Date: Wed, 29 Jan 2020 17:57:46 +0100
MIME-Version: 1.0
In-Reply-To: <CAEKVsgYu15u7d6ptaU7aZGy6OXOhN7743aLdGOz_3fZOPK2JpQ@mail.gmail.com>
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

Hello,

On 1/29/20 5:07 PM, Cameron Ferguson wrote:
>> I don't understand where this 0x10000 comes from. x86 I/O ports are 16-bits.
> 
> In order to write to ACPI addres 0x460, I can do this:
> 
>     *(unsigned *)(0x10460) = 0;
> This works fine on x86.

In the code you sent last time, it said that your addresses
are IORESOURCE_IO. These are I/O ports, not memory-mapped ports,
so you can't dereference a pointer and access them, but instead you
have to use port I/O instruction, which in barebox and Linux is
the out[bwl] family of functions.

> Barebox is missing the function "acpi_get_table". I briefly looked
> into copying it from the Linux kernel but after a few minutes I just
> decided to copy the hex values and hard-code them into my program.

barebox passes the table to the drivers, look in the acpi-test.c
example, how it gets the sdt pointer. That should be the one you
are after.                                                              

> I'm still tinkering about with this. Still no joy. Here's what I have now:

That's too much code to read through.. I suspect you are just clobbering random
memory, when you should be writing I/O ports instead.

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
