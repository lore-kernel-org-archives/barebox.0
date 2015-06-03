Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z03kn-0004Zc-3D
 for barebox@lists.infradead.org; Wed, 03 Jun 2015 08:10:25 +0000
Date: Wed, 3 Jun 2015 10:10:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150603081002.GP6325@pengutronix.de>
References: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
 <1431572067-4038-10-git-send-email-andrew.smirnov@gmail.com>
 <20150519070613.GX6325@pengutronix.de>
 <CAHQ1cqECGkwNQp4tgBrj1g6NR01EQHjsbf_omeiN+GPHpaeuhA@mail.gmail.com>
 <20150526065756.GZ6325@pengutronix.de>
 <CAHQ1cqErPeoeL5Teq6UN4tAGs97EoGdNri7huM+d_HFqVis07g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqErPeoeL5Teq6UN4tAGs97EoGdNri7huM+d_HFqVis07g@mail.gmail.com>
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
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jun 01, 2015 at 06:09:38AM -0700, Andrey Smirnov wrote:
> > How about testing only a small fragment of DRAM, say 8MB, in your
> > lowlevel board code and calling barebox_arm_entry() with the
> > membase/memsize you previously tested? This way you can make sure that
> > barebox only uses tested memory without having to test all memory before
> > calling barebox_arm_entry() and without having to call back into some
> > testing function.
> 
> I like that solution and it does allow to get rid of all of that nasty
> linking address agnostic code. The only problem that I see with it is
> that if I start Barebox with 8MB of memory and then try to boot Linux
> of_memory_fixup() will modify the devicetree file and cause Linux to
> think the machine only has 8MB of RAM as well. Any ideas on how to
> deal with that?

You should pass a size of 8MB to barebox_arm_entry(). This should not
influence the memory banks which are for determing the memory passed to
Linux. You can instrument barebox_add_memory_bank() which should be
called with the real amount of SDRAM, not with the 8MB. If not, add a
dump_stack() to see who calls this function with the wrong amount.

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
