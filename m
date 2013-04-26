Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVh2d-00010T-KH
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 11:42:16 +0000
Date: Fri, 26 Apr 2013 13:42:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130426114213.GS32299@pengutronix.de>
References: <1366971714-32682-1-git-send-email-shc_work@mail.ru>
 <20130426104806.GR32299@pengutronix.de>
 <1366974776.4890563@f83.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366974776.4890563@f83.mail.ru>
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
Subject: Re: [RFC only] ARM: i.MX: Fix SDRAM size detect
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Apr 26, 2013 at 03:12:56PM +0400, Alexander Shiyan wrote:
> > On Fri, Apr 26, 2013 at 02:21:54PM +0400, Alexander Shiyan wrote:
> > > This is a trying to fix problem described in:
> > > http://lists.infradead.org/pipermail/barebox/2013-April/014182.html
> > 
> > Sorry, can you explain what the problem is and how this patch fixes
> > that?
> > How I understood it the problem was that your board had the second chip
> > select enabled without having sdram connected there leading to a wrong
> > size detection.
> ...
> > > +	arm_add_mem_device("ram0", MX51_CSD0_BASE_ADDR, size);
> > 
> > With this patch you imply that imx_v3_sdram_size does not work which was
> > never mentioned in the thread you reference.
> > 
> > Can you please post:
> > 
> > - Which values the sdram controller is programmed with
> > - How much memory you really have
> > - what barebox detects
> 
> Values for ESDCTL is programmed by DCD-data from flash_header.

Yes, that happens on most i.MX using DCD data

> Currently both channels are enabled and configured to 256M.
> Barebox is NOT detect size of memory, it just a read back these values.

Yes.

> At least on every i.MX51 this is not works correctly. In any words:
> How much we specify in flash_header, this is our "detected" size.

Yes.

> I have a two modules (256M and 512M),

How is the layout? for 256M do you have a single chipselect with 256M or
two chipselects with 128M each?

Can you please post the output of:

md 0x83fd9000+0x10

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
