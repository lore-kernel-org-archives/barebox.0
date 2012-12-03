Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfYln-0001DW-VE
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 16:21:24 +0000
Date: Mon, 3 Dec 2012 17:21:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121203162121.GT10369@pengutronix.de>
References: <alpine.DEB.2.02.1212031041250.19977@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1212031041250.19977@oneiric>
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
Subject: Re: how does one enable barebox's low-level debugging?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Dec 03, 2012 at 10:45:41AM -0500, Robert P. J. Day wrote:
> 
>   looking through common/startup.c and decided i wanted to see
> confirmation of all the initcalls running here:
> 
>         for (initcall = __barebox_initcalls_start;
>                         initcall < __barebox_initcalls_end; initcall++) {
>                 debug("initcall-> %pS\n", *initcall);
>                 result = (*initcall)();
>                 if (result)
>                         pr_err("initcall %pS failed: %s\n", *initcall,
>                                         strerror(-result));
>         }
> 
> 
> so i started from scratch, ran "make menuconfig" for both the x-loader
> and barebox to enable "low level debug messages", but i don't see any
> difference in the boot output.
> 
>   i've perused the barebox wiki and don't see anything regarding that
> setting.  am i doing something wrong?

You have to add a "#define DEBUG" to the file you want to have the debug
messages from. Add this *above* the includes, just like in the kernel.

Something not mentioned in the wiki is that before the first console is
initialized barebox will print the messages into a ring buffer which it
will dump when the first console is initialized.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
