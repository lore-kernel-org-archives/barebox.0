Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UStUP-0005cz-7z
 for barebox@lists.infradead.org; Thu, 18 Apr 2013 18:23:22 +0000
Date: Thu, 18 Apr 2013 20:23:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130418182317.GJ1906@pengutronix.de>
References: <1366188021.710900767@f16.mail.ru>
 <1366283186.701174674@f366.mail.ru>
 <20130418115918.GG1906@pengutronix.de>
 <1366304572.52315039@f26.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366304572.52315039@f26.mail.ru>
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
Subject: Re: Boot from SD fail after 2013.02
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Apr 18, 2013 at 09:02:52PM +0400, Alexander Shiyan wrote:
> > On Thu, Apr 18, 2013 at 03:06:26PM +0400, Alexander Shiyan wrote:
> > > 
> > > So. OK, I temporary patch my board and it working now.
> > > Please forget about correct memory size, it is not true.
> > > Size is incorrect. Both banks are enabled and size detected as 512M.
> > > I think this size is programmed by flash_header:
> > >   { .ptr_type = 4, .addr = 0x83fd9000, .val = 0xb2a20000, },
> > >   { .ptr_type = 4, .addr = 0x83fd9008, .val = 0xb2a20000, },
> > > 
> > > After program NAND and start from NAND, size is still wrong...
> > > So, what we can do it this case for proper operation? Disable second bank?
> > 
> > When writing the autodetection code I assumed that all boards correctly
> > setup the SDRAM controller. Appearently I was wrong.
> > 
> > I suggest disabling the second chip select since it's not used on your
> > board. However, I begin doubting that it was the right decision to
> > depend on ram size detection.
> 
> Yes, disabling second bank is helps.
> So, I repair my second board (same as first, but with real 512M of SDRAM).
> Works, but of course memory is fixed at 256M. Tomorrow I will test current
> 2013.04 on this board since probably problem appears only on 256M-version.
> Currently I think about return fixed table of memory in the board file or get
> memory size by testing memory. In both cases we need to disable ESDCTL
> module and now I do not know how make it better rather than simple remove
> this module from Makefile.

I wonder if it's possible to detect whether there actually is memory on
the seconf bank. I remember trying it (probably on some other i.MX), but
all I got was a locked up system when I tried to access non present
SDRAM.

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
