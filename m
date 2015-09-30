Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhBNX-00047b-R7
 for barebox@lists.infradead.org; Wed, 30 Sep 2015 07:00:40 +0000
Date: Wed, 30 Sep 2015 09:00:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150930070016.GY7858@pengutronix.de>
References: <1443247338-29171-1-git-send-email-andrew.smirnov@gmail.com>
 <1443247338-29171-2-git-send-email-andrew.smirnov@gmail.com>
 <20150929065847.GO7858@pengutronix.de>
 <CAHQ1cqFEsiq7Qumi54aJv2C_nh7xkR0jkrBnU5Z6jyhWp3zmKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqFEsiq7Qumi54aJv2C_nh7xkR0jkrBnU5Z6jyhWp3zmKQ@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] arm/cpu/start.c: Avoid copying device-tree when
 possible
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Sep 29, 2015 at 10:52:27AM -0700, Andrey Smirnov wrote:
> >> +                     }
> >> +
> >
> > At this place it is unknown where in memory the fdt is. It could well be
> > somewhere in the malloc area space, so we need to move it to a safe
> > place before we setup malloc in the next step.
> 
> I didn't do an exhaustive search in the source but it seemed like all
> of the callers of barebox_arm_entry() were calling it either with NULL
> or some build-in address, so I assumed that this change shouldn't be a
> problem for non-relocatable binaries, but you are right, semantics of
> the functions does not restrict the location of fdt data.

For most if not all boards the fdt is built into the PBL. The PBL can
run on any place. Take for example the Karo i.MX6 board. The load
address is configured as 0x20000000 which in somewhere in the middle of
the SDRAM. This is where the PBL is executed and thus also the place
where the builtin fdt is stored. Now the PBL extracts the barebox binary
to near the end of SDRAM and jumps there. The fdt is now somewhere in
the middle of SDRAM where it will be overwritten by the malloc pool
sooner or later.

> 
> I'd still like to discuss the possibility of introducing a feature
> like that to the codebase. Right now I have a use-case where I use
> Barebox as a DDR memory tuning/testing tool on i.MX6Q where I upload
> the image to IRAM via JTAG and execute Barebox straight out of SRAM.

I understand your usecase and I think it's worth supporting it.

So what are our options? You could run the tuning/testing completely
from the PBL. We now have console support in the PBL, so you can output
the results. You cannot do any interactive things though. We could add
simple getc() support to the PBL, but something like a shell is out of
reach. Do you need interactive input anyway?
Another possibility would be to make device tree support optional for
i.MX6. It is optional for the other i.MXes for historic reasons, so we
could make it optional for i.MX6 aswell. This would give you another
~30K which is now used by the dtb.
I'm a bit afraid that the regular-barebox-in-SRAM usecase will break
quite frequently upstream because the image gets too big or simply
because some other changes have side effects. For this reason I would
really prefer the PBL way if that's possible for you.

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
