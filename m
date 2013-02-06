Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U33qj-0002n2-4F
 for barebox@lists.infradead.org; Wed, 06 Feb 2013 12:11:38 +0000
Date: Wed, 6 Feb 2013 13:11:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130206121134.GE1906@pengutronix.de>
References: <1360148498.214727698@f366.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360148498.214727698@f366.mail.ru>
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
Subject: Re: NOR memory driver fail with MMU enabled
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, Feb 06, 2013 at 03:01:38PM +0400, Alexander Shiyan wrote:
> Hello.
> 
> I have a problem with NOR flash when enabling MMU.
> Probably this happen due NOR start address is 0x0.
> Should we a remap memory addresses same as we do it for kernel? 
> Or can someone tell what could be the problem?

This is because the zero page is set to faulting so that you can
catch NULL pointer exceptions. You could disable this (see
vectors_init), but then you can't catch NULL pointer exceptions
anymore. So the best you can do is use map_io_sections and map
your flash to some free region, maybe like this:

map_io_sections(0x0, (void *)SZ_1M, SZ_32M);

Then register your flash flash with address 1M instead of 0x0.

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
