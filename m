Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhuSG-0008RJ-M8
 for barebox@lists.infradead.org; Fri, 02 Oct 2015 07:08:33 +0000
Date: Fri, 2 Oct 2015 09:08:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151002070809.GN7858@pengutronix.de>
References: <20151001214801.GA731@mail.gnudd.com>
 <20151001215936.GA1121@mail.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151001215936.GA1121@mail.gnudd.com>
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
Subject: Re: [PATCH] at91sam9x5: for ROM base address (bugfix for nand ECC)
To: Alessandro Rubini <rubini-list@gnudd.com>
Cc: barebox@lists.infradead.org, braghiroli@amelchem.com, scaglia@amelchem.com

On Thu, Oct 01, 2015 at 11:59:36PM +0200, Alessandro Rubini wrote:
> > Subject: [PATCH] at91sam9x5: for ROM base address (bugfix for nand ECC)
> 
> Argh! After a lot of editing, the subject line is wrong.
> 
>    fix ROM base address (bugfix for nand ECC)

I applied the patch with this spelling fix and your name written
correctly.

> 
> Anyways, let me add this detail.  The current code considers the
> case where dev_request_mem_region() fails.
> 
>         host->pmecc_rom_base = dev_request_mem_region(dev, 3);
>         if (!host->pmecc_rom_base) {
>                    [...]
> 
> What it does in "[...]" is creating the tables with proper math..  I
> tried to skip the request_mem_region() above and ECC works perfectly,
> with the software-generated table.
> 
> So I wonder whether it makes sense to just remove the declaration of
> the ROM are memory-region-3 for NAND, and just use the software-built
> tables.

Are the software defined tables on all SoCs identical to the ROM tables?
If not that may be a reason to use the software tables only as a
fallback.

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
