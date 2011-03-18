Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q0UQh-0005lb-8j
	for barebox@lists.infradead.org; Fri, 18 Mar 2011 07:49:03 +0000
Date: Fri, 18 Mar 2011 08:49:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110318074901.GA29521@pengutronix.de>
References: <1299710787-11990-2-git-send-email-franck.jullien@gmail.com>
	<20110316093457.GO29521@pengutronix.de>
	<AANLkTikaZD-w__D-nnjMT7nbTRgodryGLqXzBFb58B49@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTikaZD-w__D-nnjMT7nbTRgodryGLqXzBFb58B49@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] Add Altera Nios2 arch support
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Mar 17, 2011 at 05:50:09PM +0100, Franck JULLIEN wrote:
> Hi Sascha,
> 
> 2011/3/16 Sascha Hauer <s.hauer@pengutronix.de>
> 
> > Hi Julien,
> >
> >
> Well....it's Franck ;) I know that's a bit confusing......

Oops, sorry

> > > +#ifndef _BAREBOX_H_
> > > +#define _BAREBOX_H_  1
> > > +
> > > +typedef struct bd_info {
> > > +     int bi_baudrate;                /* serial console baudrate */
> > > +     unsigned long bi_ip_addr;       /* IP Address */
> > > +     unsigned char bi_enetaddr[6];   /* Ethernet adress */
> > > +     unsigned long bi_arch_number;   /* unique id for this board */
> > > +     unsigned long bi_boot_params;   /* where this board expects params
> > */
> > > +     unsigned long bi_memstart;      /* start of DRAM memory */
> > > +     unsigned long bi_memsize;       /* size  of DRAM memory in bytes */
> > > +     unsigned long bi_flashstart;    /* start of FLASH memory */
> > > +     unsigned long bi_flashsize;     /* size  of FLASH memory */
> > > +     unsigned long bi_flashoffset;   /* reserved area for startup
> > monitor */
> > > +} bd_t;
> >
> > This isn't used anywhere in this patch. Is it needed for passing data to
> > Linux? If yes, ok, otherwise please remove it.
> >
> 
> This file is included bu include/common.h
> Should I provide an empty file ?

Yes, please.

(As this seems only be used on ppc we should probably remove the
inclusion from common.h and include asm/barebox.h where necessary)

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
