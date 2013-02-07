Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f182.google.com ([209.85.215.182])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3Tbq-0005Qs-N9
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 15:41:59 +0000
Received: by mail-ea0-f182.google.com with SMTP id a12so1210869eaa.27
 for <barebox@lists.infradead.org>; Thu, 07 Feb 2013 07:41:57 -0800 (PST)
Date: Thu, 7 Feb 2013 16:42:43 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130207154242.GB2572@x61s.8.8.8.8>
References: <1360233900-26486-1-git-send-email-alex.aring@gmail.com>
 <1360233900-26486-7-git-send-email-alex.aring@gmail.com>
 <51138847.8080100@pengutronix.de>
 <20130207112004.GE5999@x61s.8.8.8.8>
 <20130207120141.GU1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130207120141.GU1906@pengutronix.de>
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
Subject: Re: [PATCH 6/6] commands: add new memtest command
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

On Thu, Feb 07, 2013 at 01:01:41PM +0100, Sascha Hauer wrote:
> On Thu, Feb 07, 2013 at 12:20:06PM +0100, Alexander Aring wrote:
> > On Thu, Feb 07, 2013 at 11:56:07AM +0100, Marc Kleine-Budde wrote:
> > > On 02/07/2013 11:45 AM, Alexander Aring wrote:
> > > > Add new memtest command which can enable or disable caching
> > > > on non allocted barebox regions(test area).
> > > > 
> > > > This command simply parse and check parameters then call
> > > > the mem_test routine.
> > > > 
> > > > If no address parameters are given then mem_test will call
> > > > for each memory bank.
> > > > 
> > > > Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> > > 
> > > A howto-get-rid-of-ifdef nitpick inline
> > > 
> > > > ---
> > > >  commands/Kconfig   |  10 ++
> > > >  commands/Makefile  |   1 +
> > > >  commands/memtest.c | 362 +++++++++++++++++++++++++++++++++++++++++++++++++++++
> > > >  3 files changed, 373 insertions(+)
> > > >  create mode 100644 commands/memtest.c
> > > > 
> > > > diff --git a/commands/Kconfig b/commands/Kconfig
> > > > index 7cc759c..d158c3f 100644
> > > > --- a/commands/Kconfig
> > > > +++ b/commands/Kconfig
> > > > @@ -516,6 +516,16 @@ config CMD_NANDTEST
> > > >  	select PARTITION_NEED_MTD
> > > >  	prompt "nandtest"
> > > >  
> > > > +config CMD_MEMTEST
> > > > +    tristate
> > > > +    select MEMTEST
> > > > +    prompt "memtest"
> > > > +	help
> > > > +	  This command enables a memtest to test installed memory.
> > > > +	  During this test allocated iomem regions will be skipped.
> > > > +	  If tested architecture has MMU with PTE flags support,
> > > > +	  caching can be set enabled or disabled.
> > > > +
> > > >  endmenu
> > > >  
> > > >  menu "video command"
> > > > diff --git a/commands/Makefile b/commands/Makefile
> > > > index 393ba51..b39b489 100644
> > > > --- a/commands/Makefile
> > > > +++ b/commands/Makefile
> > > > @@ -7,6 +7,7 @@ obj-$(CONFIG_CMD_LOADY)		+= loadxy.o
> > > >  obj-$(CONFIG_CMD_LOADS)		+= loads.o
> > > >  obj-$(CONFIG_CMD_ECHO)		+= echo.o
> > > >  obj-$(CONFIG_CMD_MEMORY)	+= mem.o
> > > > +obj-$(CONFIG_CMD_MEMTEST)	+= memtest.o
> > > >  obj-$(CONFIG_CMD_EDIT)		+= edit.o
> > > >  obj-$(CONFIG_CMD_EXEC)		+= exec.o
> > > >  obj-$(CONFIG_CMD_SLEEP)		+= sleep.o
> > > > diff --git a/commands/memtest.c b/commands/memtest.c
> > > > new file mode 100644
> > > > index 0000000..22e8006
> > > > --- /dev/null
> > > > +++ b/commands/memtest.c
> > > > @@ -0,0 +1,362 @@
> > > > +/*
> > > > + * memtest - Perform a memory test
> > > > + *
> > > > + * (C) Copyright 2013
> > > > + * Alexander Aring <aar@pengutronix.de>, Pengutronix
> > > > + *
> > > > + * (C) Copyright 2000
> > > > + * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
> > > > + *
> > > > + * See file CREDITS for list of people who contributed to this
> > > > + * project.
> > > > + *
> > > > + * This program is free software; you can redistribute it and/or
> > > > + * modify it under the terms of the GNU General Public License as
> > > > + * published by the Free Software Foundation; either version 2 of
> > > > + * the License, or (at your option) any later version.
> > > > + *
> > > > + * This program is distributed in the hope that it will be useful,
> > > > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > > > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > > > + * GNU General Public License for more details.
> > > > + *
> > > > + * You should have received a copy of the GNU General Public License
> > > > + * along with this program; if not, write to the Free Software
> > > > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> > > > + * MA 02111-1307 USA
> > > > + */
> > > > +
> > > > +#include <command.h>
> > > > +#include <getopt.h>
> > > > +#include <asm/mmu.h>
> > > > +
> > > > +#include <memory_test.h>
> > > > +
> > > > +/*
> > > > + * In CONFIG_MMU we have a special c flag.
> > > > + */
> > > > +#ifdef CONFIG_MMU
> > > > +static char optstr[] = "s:e:i:cb";
> > > 
> > > const?
> > >
> > 
> > This will print a compiler warning because the getopt implementation
> > doesn't accept a const char* because getopt will change this string.
> 
> getopt does not modify this string. The prototype of getopt could be changed to
> take a const char *.
>

Ok I will fix this.

Regards
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
